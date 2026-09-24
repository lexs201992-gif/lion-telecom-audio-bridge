# wmshell/

## Rol

**Trigger / Control remoto.** Crea la ventana invisible que dispara el
ciclo de exfil. No genera datos — solo activa.

## Componente clave

`com.android.systemui.com.android.wm.shell.dagger.WMShellModule_ProvidePipFactory`

Fábrica Dagger que inyecta `PipController` en el grafo de dependencias
de WMShell. La ventana PiP se configura como:

- `LinearLayout` `fill_parent` (dummy token)
- `RelativeLayout` → `Button` 100px @ top-right (gesture hitbox)
- `HIDE_NON_SYSTEM_OVERLAY_WINDOWS` (invisible en AppSwitcher)
- `STOP_APP_SWITCHES` (no aparece en recents)

## Flujo de trigger
   Touch en hitbox (100px, top-right)
→ WMShell TransitionHandler
→ Longcheer Sidebar (Task Manager)
→ wifisar service
→ wcn_chr (driver WiFi Unisoc, kernel)
→ WCN_Trunk_22A_W25.14 forced reconnect
→ Port rotation (212, 252, 314, 203, 170, 211, 460, 629, 831, 5666, 4864, 55518)
→ ALL → :443


## Persistencia

| Mecanismo | Detalle |
|-----------|---------|
| `wcn_chr` | Driver WiFi kernel (Unisoc) — sobrevive reboot |
| UID `-1` | Tráfico de kernel, no de app |
| `wcn_chr` logs | `wcn_chr[2]` en kernel log |
| Longcheer Sidebar | Task Manager OEM — no desinstalable |

## Evasión

- LCD flicker = WMShell vs Telecom overlay fight
- Ventana no aparece en `dumpsys window`
- PiP flag evita registro en `ActivityTaskManager`

## Evidencia

- `wmshell_pip_factory_decompiled.java`
- `wmshell_gesture_hitbox_layout.xml`
- `wifisar_wcn_chr_kernel_log.txt`
- `lcd_flicker_capture.mp4`   
