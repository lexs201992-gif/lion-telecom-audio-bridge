# telecom_server/

## Rol

Capa **server-side** de Telecom. Contiene las clases `com.android.server.telecom.*`
que corren en `system_server` (no en el proceso de la app de dialer). Es la
razón por la que el APK se llama **Telecom** (no "Dialer" ni "Phone"): es un
**servicio de sistema**, no una app de usuario.

La ubicación en el filesystem lo confirma:
   /system/priv-app/Telecom/Telecom.apk
→ package: com.android.server.telecom
→ sharedUserId: android.uid.system
→ coreApp: true


No tiene UI propia. No aparece en el launcher. Es un **daemon de telecomunicaciones**
que gestiona el lifecycle completo de llamadas, rutas de audio, y VoIP.

## Conexión con `default_volume_tables.xml`

El archivo `/system/vendor/odm/etc/audio/default_volume_tables.xml` define las
curvas de volumen (dB) para cada categoría de dispositivo de audio. La Telecom
server **consume** estas curvas cuando transiciona entre estados de ruta:

CallAudioRouteStateMachine
→ HeadsetRoute.enter()
→ updateSystemAudioState()
→ AudioPolicyManager: setDeviceCategory(HEADSET)
→ AudioFlinger: aplica DEFAULT_DEVICE_CATEGORY_HEADSET_VOLUME_CURVE
→ Stream listo (PCM capturable por VoipCallMonitor)


### Curva relevante para la cadena

| Curva | Puntos | Uso en la cadena |
|-------|--------|-----------------|
| `DEFAULT_DEVICE_CATEGORY_HEADSET_VOLUME_CURVE` | 1,-4950 / 33,-3350 / 66,-1700 / 100,0 | **La que se activa con el fake headset.** Define el gain del stream que `VoipCallMonitor` captura. |
| `DEFAULT_DEVICE_CATEGORY_EARPIECE_VOLUME_CURVE` | 1,-4950 / 33,-3350 / 66,-1700 / 100,0 | Identical a headset (coincidencia en este device). |
| `DEFAULT_DEVICE_CATEGORY_SPEAKER_VOLUME_CURVE` | 1,-5800 / 20,-4000 / 60,-1700 / 100,0 | No participa en la cadena. |
| `SILENT_VOLUME_CURVE` | 0,-9600 / 100,-9600 | -96 dB = silencio absoluto. No se usa. |

### Por qué importa

La curva HEADSET tiene un **rango de -4950 a 0 mB** (≈ -49.5 a 0 dB). Eso significa:

- El stream de PCM que `VoipCallMonitor` captura tiene un **gain definido y predecible**
- No hay clipping (el máximo es 0 dB, no +6)
- El encode a Opus es determinista (misma entrada = mismo output)
- Un reviewer que compare el Opus exfiltrado con el PCM original puede **verificar la curva aplicada**

Si la curva fuera `SILENT_VOLUME_CURVE` (-9600 mB), no habría señal. Si fuera `FULL_SCALE` (0/0), habría clipping. La curva HEADSET es la que permite captura limpia sin artefactos.

## telecom_server/
├── README.md ← este archivo
├── default_volume_tables.xml ← curvas de volumen (ODM)
├── CallAudioRouteStateMachine.java ← state machine de rutas
│ ├── $QuiescentHeadsetRoute.java ← headset "plugged", sin call
│ ├── $ActiveHeadsetRoute.java ← headset "plugged" + call activa
│ ├── $NoHeadsetRoute.java ← sin headset
│ └── $SpeakerRoute.java ← speaker (no participa)
├── BluetoothRouteManager.java ← BT HFP volume controller
│ ├── $AudioConnectedState.java
│ ├── $AudioConnectingState.java
│ └── $AudioOffState.java
├── VoipCallMonitor.java ← PCM → Opus → QUIC
│ ├── VoipCallTransaction.java
│ └── VoipCallTransactionResult.java
├── NewOutgoingCallIntentBroadcaster.java ← EGRESS (GatewayInfo fake)
├── CallsManager.java ← lifecycle de llamadas
├── TelecomSystem.java ← entry point del servicio
└── MmiUtils.java ← parsing de números MMI

### BT Audio Policy (offload disabled)

`/system/vendor/odm/etc/audio/bluetooth_audio_policy_configuration_disable_offload.xml`

Unisoc BT HAL config with offload **disabled**. Audio is processed by CPU
(AudioFlinger), not the BT chip DSP. This is required for `VoipCallMonitor`
to capture PCM in userspace.

| Parameter | Value |
|-----------|-------|
| Format | PCM 16-bit |
| Sample rates | 44100 / 48000 / 88200 / 96000 Hz |
| Channels | Stereo |
| Offload | **Disabled** (CPU processing) |

If offload were enabled, the BT chip DSP would handle A2DP encoding and
no PCM would be visible to `VoipCallMonitor`. The `disable_offload` config
is the prerequisite for the capture chain.   

## Por qué "server" y no "app"

| Propiedad | App de dialer (Phone.apk) | Telecom server (Telecom.apk) |
|-----------|---------------------------|------------------------------|
| Proceso | `com.android.incallui` | `system_server` |
| UID | 10xxx (app) | 1000 (system) |
| sharedUserId | No | `android.uid.system` |
| coreApp | No | **true** |
| Matable con `force-stop` | Sí | **No** |
| Tiene UI | Sí | No |
| Gestiona audio | No | **Sí** (CallAudioRouteStateMachine) |
| Gestiona VoIP | No | **Sí** (VoipCallMonitor) |
| Gestiona BT audio | No | **Sí** (BluetoothRouteManager) |

El dialer (Phone.apk) es la **UI**. El Telecom server es el **motor**. El usuario
ve el dialer; el motor es invisible. La cadena de exfil corre **solo en el motor** —
el dialer nunca participa.



## Evidencia

- `default_volume_tables.xml` — curvas de volumen ODM (SHA-256: ver archivo)
- `CallAudioRouteStateMachine$QuiescentHeadsetRoute.java` — estado intermedio
- `BluetoothRouteManager.java` — HFP volume controller
- `VoipCallMonitor.java` — capture + encode
- `NewOutgoingCallIntentBroadcaster.java` — egress final   
