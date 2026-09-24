# printspooler/

## Rol

**Ensamblaje final del payload.** `com.android.printspooler` se usa como
contenedor del job de "impresión" — en realidad es el último paso antes
del broadcast de `ACTION_NEW_OUTGOING_CALL`.

## Componente

`com.android.printspooler` (system app)

- Recibe el payload ensamblado (frames + audio + metadatos)
- Lo empaqueta en el formato final (ORB)
- Dispara el `Intent` de llamada saliente
- El "print job" = el payload de exfil

## Flujo
   MediaDataManager (flush)
→ PrintSpooler (empaqueta payload ORB)
→ Metadatos finales (printk writer + JVM virtual invokes)
→ broadcastIntent(ACTION_NEW_OUTGOING_CALL)
→ NewOutgoingCallIntentBroadcaster (egress)


## Por qué printspooler

- Corre como sistema (no es matable)
- Tiene `Job` model (id, estado, progreso) → encaja con el patrón de flush
- `PrintDocument` = contenedor de datos binarios (bytes)
- Invisible: el usuario no tiene impresora → no ve jobs

## Evidencia

- `printspooler_decompiled.java`
- `print_job_payload_capture.pcapng`
- `printspooler_intent_broadcast_trace.txt`
