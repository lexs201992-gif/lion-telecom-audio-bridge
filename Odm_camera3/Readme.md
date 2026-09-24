# odm_camera/

## Rol

**Captura de cámara a nivel ISP.** Bypass de HAL3 y Camera2 API.
Los frames se obtienen antes de que el framework de Android los vea.

## Componente clave

`com.motorola.odm.camera3.com.sprd.USCPhotosProvider.providers.photos.ProcessingMediaManager$ProcessingRunnable`

- `com.motorola.odm.camera3` → ODM de Motorola
- `com.sprd.USCPhotosProvider` → Spreadtrum/Unisoc (SoC vendor)
- `ProcessingRunnable` → Thread dedicado que captura y procesa frames

## Flujo
   Sensor → MIPI CSI → ISP (hardware, Unisoc T606)
→ ODM camera3 (bypass HAL3)
→ ProcessingMediaManager$ProcessingRunnable
→ Frames → LongSparseArray (key=timestamp)
→ Metadatos → HashMap (EXIF, GPS)


## Por qué es invisible

| Normal | Este caso |
|--------|-----------|
| Pasa por HAL3 | Bypass de HAL3 |
| Visible en Camera2 API | No se registra en Camera2 |
| Aparece en MediaStore | No se escribe en MediaStore |
| Usuario ve preview | Usuario no ve nada |

## Evidencia

- `usccphotosprovider_decompiled.java`
- `processingrunnable_thread_trace.txt`
- `isp_bypass_hal3_pcap.pcapng`
- `odm_camera3_manifest_excerpt.xml`
