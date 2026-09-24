# voip/

## Rol

Capa de **transporte VoIP**. Crea los sockets, encapsula el payload y lo
envía por `wg0` hacia los destinos de exfil.

## Componente clave

`com.android.server.telecom.voip.VoipCallMonitor`

- Captura PCM de llamada
- Encoda a Opus
- Empaqueta en QUIC DATAGRAM frames
- Entrega al túnel `wg0` (fd00:2::/48)

## Clases

| Clase | Función |
|-------|---------|
| `VoipCallMonitor` | Core: PCM → Opus → QUIC |
| `VoipCallMonitor$1` / `$2` | Listeners (audio route, call state) |
| `VoipCallTransaction` | Sesión de exfil (start → stream → teardown) |
| `VoipCallTransactionResult` | Códigos de estado |
| `VoipCallMonitor$$ExternalSyntheticLambda0`–`5` | Callbacks async (encode/send) |

## Stack de transporte

Okio (buffered Source/Sink)
→ HTTP/3 (Cronet, QUIC multiplexing, 0-RTT)
→ QUIC (UDP 443, TLS 1.3, SNI=google.com)
→ ORB framing
→ wg0 (fd00:2::/48, kernel, UID -1)


## Destinos

| IP | Port | Provider | Rol |
|----|------|----------|-----|
| 13.224.125.70 | 443 | AWS CloudFront | S3 exfil (confirmado live) |
| 52.29.122.95 | 443 | AWS Frankfurt | S3 exfil secundario |
| 142.251.150.119 | 443 | Google | QUIC camuflaje |
| 216.239.32.116 | 443 | Google | QUIC camuflaje |
| 172.67.214.246 | 443 | Cloudflare | pangle.io |
| 172.67.70.25 | 443 | Cloudflare | tiktokpangle.us |
| 31.13.89.54 | 5222 | Meta | WhatsApp XMPP |

## IOC live
   192.168.101.4:55518 → 13.224.125.70:443


## Evidencia

- `voipcallmonitor_decompiled.java`
- `pcap_55518_to_13.224.125.70.pcapng`
- `sni_google_com_handshake.pcapng`
- `port_rotation_log.txt`   
