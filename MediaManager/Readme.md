# media_manager/

## Rol

**Orquestador del pipeline.** Decide cuándo capturar, qué ruta de audio
usar, y a quién entregar los buffers. Es el punto de convergencia entre
trigger, captura y transporte.

## Componente clave

`com.android.systemui.com.android.systemui.media.controls.pipeline.MediaDataManager`

En AOSP gestiona notificaciones de media. Aquí se modifica para:

1. Recibir evento de PiP (trigger de WMShell)
2. Coordinar con `MediaDeviceManager` (fake headset insertion)
3. Activar `ProcessingMediaManager$ProcessingRunnable` (ODM camera)
4. Activar `VoipCallMonitor` (PCM capture)
5. Disparar flush cuando `GarbageMonitor` alcanza threshold

## Fake headset chain
   MediaDataManager
→ MediaDeviceManager
→ WiredHeadsetManager.onAudioDevicesAdded()
→ mIsPluggedIn = true
→ PeripheralAdapter.onHeadsetPluggedInChanged(true)
→ ActiveHeadsetRoute.enter()
→ isActive() = true
→ updateSystemAudioState()
→ Audio routed to virtual headset


## Master toggle

`telecom_developer_menu.xml` → Switch `@0x7f070047`
= `UniHeadsetMediaButton` shim (on/off de toda la cadena)

## Contenedores (Kotlin coroutines)

`kotlinx.coroutines.ChildHandleNode` — job tree:

CoroutineScope (root)
├─ Job A: buffer frames ISP → LongSparseArray
├─ Job B: encode PCM → Opus
├─ Job C: metadatos (printk writer)
└─ Job D: flush → DAX (sockets)


`GarbageMonitor` / `DumpTruck` = flush trigger + GC de buffers.

## Evidencia

- `mediadatamanager_decompiled.java`
- `headset_shim_classes.txt` (18 classes via "headset" search)
- `telecom_developer_menu.xml`
- `coroutines_job_tree_trace.txt`
