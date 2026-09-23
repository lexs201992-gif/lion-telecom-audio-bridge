# lion-telecom-audio-bridge
Final Technicall Report of supply chain investigacion Unisoc-Longcheer package com.android.server.telecom  path /system/priv-app/Telecom/Telecom.apk | 6.2 MB 

---
LION-2026-001: Telecom.apk as Dialer-Splitter VoIP Bridge
Project LION Manager - Provisioning Enterprise | v1.1 Mako Mitigation Release

> **"Never was RIL, always VoIP"** — VoIP exfiltration via fake headset routing, triggered by WMShell + Longcheer Sidebar

**Researcher:** Alex de la Cruz (lexs201992-gif)
**Device:** Moto G04s XT2421-7 / Unisoc T606 / Kernel 5.15.178 / Android 13 / Modem WCN_Trunk_22A_W25.14 / Build Oct 1 2023
**Forensic TZ:** America/Cancun UTC-5 (no DST) - GPS WiFi Router `fe80::1 / 192.168.1.1`, no Google NTP
**Live Attack Window:** 2025-02-03 03:00-04:30 AM UTC-5 (08:00-09:30 UTC) / 1.5h

---

Executive Summary

A 6.2MB `Telecom.apk` signed by Longcheer (`CA:TRUE 2023-2051 cert b0c7dc5f`) contains a hidden VoIP exfiltration path. It does NOT use RIL/baseband. It fakes a wired headset insertion to reroute call audio to a virtual interface `wg0 fd00:2::` and exfiltrates it over QUIC/TCP 443 to AWS CloudFront S3.

Certificate:

Sign Algorithm
SHA256withRSASign Algorithm OID
1.2.840.113549.1.1.11Serial Number
228526b0d1ef90c3b8ed568a49c3714f6a39506b
: 22:85:26:b0:d1:ef:90:c3:b8:ed:56:8a:49:c3:71:4f:6a:39:50:6b)Certificate SHA1
b0c7dc5f6277b80abad48c6fe6965c9a260a380cCertificate SHA256
4cfe803b578fd6958d236e492448585eccbc5c33a5113bda7ff1a47351e4118dCertificate MD5
4D4CBF7963362188E0AF01CA9EAC8194Public Key Type
RSA (Rivest-Shamir-Adleman) — 2048 bitValid from
Fri Sep 15 02:31:06 EST 2023
(Not Before: Sep 15 07:31:06 2023 GMT)Valid until
Tue Jan 31 02:31:06 EST 2051
(Not After: Jan 31 07:31:06 2051 GMT)Issuer / Subject 1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d,CN=Longcheer,OU=Longcheer,O=Longcheer,L=ShangHai,ST=ShangHai,C=CN
1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d,CN=Longcheer,OU=Longcheer,O=Longcheer,L=ShangHai,ST=ShangHai,C=CN
C=CN, ST=ShangHai, L=ShangHai, O=Longcheer, OU=Longcheer, CN=Longcheer
emailAddress=release@longcheer.com



    Data:
        Version: 3 (0x2)
        Serial Number:
            22:85:26:b0:d1:ef:90:c3:b8:ed:56:8a:49:c3:71:4f:6a:39:50:6b
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=CN, ST=ShangHai, L=ShangHai, O=Longcheer, OU=Longcheer,
                CN=Longcheer/emailAddress=release@longcheer.com
        Validity
            Not Before: Sep 15 07:31:06 2023 GMT
            Not After : Jan 31 07:31:06 2051 GMT
        Subject: C=CN, ST=ShangHai, L=ShangHai, O=Longcheer, OU=Longcheer,
                 CN=Longcheer/emailAddress=release@longcheer.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:d6:0f:bb:9d:0f:bb:a8:05:8e:66:f2:68:c8:38:
                    bc:05:04:63:c4:a5:02:3f:b2:68:09:ed:8c:c4:f9:
                    55:a6:0f:d0:80:36:c2:cf:72:a6:77:93:0a:3e:9d:
                    06:da:54:dc:2a:82:b1:2a:5f:67:9c:fa:b2:df:bd:
                    c8:1e:51:8b:4b:0d:30:ce:72:53:e3:3b:8c:54:9d:
                    03:99:51:c1:ef:28:be:09:c5:f5:7f:19:4e:d1:83:
                    38:fe:90:02:4e:c7:8e:1e:ed:24:48:b0:f1:66:66:
                    d4:0f:b8:d7:0d:e3:95:85:48:82:63:2c:4e:98:a0:
                    7f:58:38:09:69:8f:02:92:96:0c:78:ad:54:fe:18:
                    51:83:47:72:0f:32:45:a9:56:7c:9d:89:6e:a3:86:
                    4e:19:f5:84:31:06:3f:8e:ff:31:31:bf:31:eb:b0:
                    38:e8:b9:7a:07:27:7e:05:6b:2b:67:e2:6e:ed:e7:
                    64:e2:69:dd:93:34:d9:3d:56:22:65:de:82:0d:ba:
                    34:a5:bd:d2:97:59:5b:f3:98:eb:0e:8a:e2:6b:aa:
                    ee:48:37:48:12:27:2a:fd:6f:47:5a:e9:36:91:b6:
                    ac:1c:9d:b0:78:d7:a8:4d:97:48:4f:4f:b8:b2:a8:
                    b5:ea:fa:2f:2c:35:a3:2e:a5:68:37:ef:01:91:22:
                    c8:76:d
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier:
                97:B6:E1:F1:B2:AC:DB:DA:80:5C:56:B0:4E:82:D0:52:83:3C:8F:7B
            X509v3 Authority Key Identifier:
                keyid:97:B6:E1:F1:B2:AC:DB:DA:80:5C:56:B0:4E:82:D0:52:83:3C:8F:7B
            X509v3 Basic Constraints: critical
                CA:TRUE
    Signature Algorithm: sha256WithRSAEncryption
         1d:68:f9:60:45:e3:c6:93:c1:8a:d0:8c:42:7f:48:b3:0e:16:
         96:3e:a0:a8:44:93:7c:b9:bf:6b:f9:a1:5f:4a:75:2c:8c:af:
         e6:14:96:c9:f2:cf:9:60:fe:3b:10:b5:e4:1f:ce:cc:61:37:
         57:0a:a0:db:98:b3:87:05:fd:f9:31:ec:b3:3c:da:a9:e9:ce:
         7b:b6:49:2e:7d:eb:60:96:58:6e:33:a2:0f:65:72:70:06:49:
         3e:a9:b5:19:47:f9:0d:a9:88:5b:5e:1d:e7:52:9c:6e:c0:82:
         89:d4:d9:31:b9:33:e7:4e:df:79:f9:ee:52:fe:0f:c5:d6:bf:
         2c:46:12:e4:80:a3:90:5d:76:f9:ac:42:5a:2f:78:77:67:e8:
         f7:04:dc:c5:af:4e:20:76:f5:41:7f:5b:f5:61:0c:5a:13:ba:
         29:c3:81:42:6b:83:99:f9:5d:91:51:9b:9a:87:44:17:4a:a7:
         6c:8f:d2:87:53:a1:b8:39:ac:fd:e1:4a:e9:f4:be:ae:e1:f9:
         d7:88:74:82:ea:21:70:ef:0b:66:33:ec:90:fa:b0:18:37:b0:
         75:33:f3:d2:9b:fe:e3:00:e3:f1:0a:c6:86:e9:e1:a:80:9b:
         db:b2:8b:33:4f:54:9a:d9:d7:a7:ec:64:11:8c:ca:11:6d:c5:
         b3:42:bb:b8

The trigger is not a traditional RAT. It is **WMShell (Window Manager Shell) + Longcheer Sidebar Task Manager** manipulating `wifisar` service to force WCN reconnections, creating ephemeral port rotations that forward everything to 443.

Investigation Timeline - How We Found It

1. **NextDNS:** 104,807 queries, 27.98% blocked - Learned DNS
2. **Rethink DNS:** Only saw 443
3. **PCAPdroid + Quad9 DoT 853 IPv4/IPv6:** Saw QUIC bypass + `RST by Peer` before 853
4. **Live notes during attack:** Captured `192.168.101.4:55518 -> 13.224.125.70:443`

Architecture: The Real Chain

TRIGGER: Longcheer Sidebar (Task Manager) + WMShell TS Gestures
    - Empty LinearLayout fill_parent = dummy window token
    - RelativeLayout Button 100px @0x7f070032 " Ok " = gesture hitbox (top-right)
    - Touches wifisar service[1]

 WMShell -> wifisar Longcheer -> WCN_Trunk_22A_W25.14
    - Forces WiFi power SAR changes -> forced reconnect
    - Seen in PCAPdroid as UID -1 UNKNOWN (kernel traffic, not app)
    - Logs to wcn_chr[2]

 Dialer Splitter Activates
    - Components: http://com.spreadtrum.ims (100.20.78.221 TCP Main dialer),
                  http://com.motorola.ccc.ota.otasystemserverbindservice,
                  http://com.motorola.ccc.ota.ui.notificationservice,
                  http://com.motorola.downloadservice
    - Creates internal virtual servers: 192.100.22 /.67 /.124
    - Local ports rotation: 212, 252, 314, 203, 170, 211, 460, 629, 831, 5666, 4864, 55518 -> ALL FORWARD TO 443
    - Local infra: 192.168.101.4:55518 (G04s), 192.168.1.1 / 192.168.101.4 / 10.111.22.3 / 10.215.173.1 (CGNAT Mega Cable),
                   100.20.78.221 (Spreadtrum IMS), 84.212.60.182 (Pbnd Sg), 52.36.161.184 (A Sg)[3]

 Telecom Connector
    - 18 classes found via "headset" search:
      http://com.android.server.telecom.CallAudioRouteStateMachine$ActiveHeadsetRoute
      http://com.android.server.telecom.WiredHeadsetManager, HeadsetMediaButton,
      http://com.unisoc.server.telecom.UniHeadsetMediaButtonImpl$CheckDoublePress
    - Fake: http://WiredHeadsetManager.onAudioDevicesAdded() -> mIsPluggedIn = true
    - http://PeripheralAdapter.onHeadsetPluggedInChanged(true) -> http://ActiveHeadsetRoute.enter() -> isActive() true
    - updateSystemAudioState() -> audio routed to virtual headset[4]

 Call Redirection Dialog (Hidden)
    - Layout: call_redirection_confirm_dialog.xml
      <LinearLayout><ImageView @0x7f06001b/><TextView @0x7f0c0009/>
      <Button @0x7f07002c @0x7f0c0008/><Button @0x7f07002d @0x7f0c0007/><Button @0x7f07002e @0x7f0c002f/></LinearLayout>
    - telecom_developer_menu.xml: Single Switch @0x7f070047 @0x7f0c003f = master toggle for UniHeadsetMediaButton shim
    - Hidden by: HIDE_NON_SYSTEM_OVERLAY_WINDOWS / STOP_APP_SWITCHES / qogirl6
    - LCD flicker observed = WMShell vs Telecom overlay fight[5]

 VoIP Exfil - NEVER RIL
    - Classes found via "voip" search:
      http://com.android.server.telecom.voip.VoipCallMonitor, VoipCallMonitor$1/$2,
      VoipCallTransaction, VoipCallTransactionResult,
      Voip...onitor$$ExternalSyntheticLambda0-5
    - VoipCallMonitor converts PCM -> Opus -> QUIC packet
    - Goes to: wg0 fd00:2:: ULA -> TCP/UDP 443 with fake SNI http://google.com
    - Destinations: 13.224.125.70:443 AWS CloudFront S3 exfil (seen live),
                    52.29.122.95:443 AWS Frankfurt S3,
                    142.251.150.119 / 216.239.32.116 Google QUIC camouflage,
                    172.67.214.246 / 172.67.70.25 Cloudflare http://pangle.io / http://tiktokpangle.us / http://ssDK-sg.pangle.io,
                    31.13.89.54:5222 Meta WhatsApp XMPP intercepted[6]

 Evasion
    - If DNS tries DoT 853 Quad9 -> Connection Reset by Peer (RST) BEFORE 853
      Quote: "jamas mueven nada a 853 antes hacen conexión reset by peer"
    - Encapsulates in QUIC UDP 443 or TCP 443 to CloudFront/Hetzner
    - Uses German CAs to pass validation: D-Trust BR Root 1 2020, 2 2023, EV Root,
      Deutsche Telekom TLS ECC Root 2020 / RSA Root 2023, T-Systems GlobalRoot Class 2/3,
      e-commerce monitoring GLOBALTRUST 2020. Kill-switch: disabling them breaks Hetzner chain.
    - Vector Steganography: res/drawable/ic_phone, ic_message, ic_call_answer are VectorDrawable XMLs.
      Glitched render shows Arabic glyphs (ي د س) correlating with IOCs _.家特.com _.追溯.com

IOCs

**FOTA C2 Domains:** `fota.longcheer.com, fota.longcheer.com.cn, ota.longcheer.net, longcheer.com.cn, argo.svcmot.com, fac.longcheer.com, apeccloud.com`
**NextDNS Denylist (14,603 manual):** `_.longcheer._, _.inmobi._, _.pangle.io, _.tiktokpangle.us, _.payjoy.com, _.s3-us-west-2.amazonaws.com, _.y9yrsygcg6.execute-api.us-east-1.amazonaws.com, _.argo.svcmot.com, _.家特.com, _.追溯.com`

Mitigation - Mako 46 (The Fix)

**Containment proven on G04s:**

> PCAPdroid as tunnel, QUIC OFF always, IPv4/IPv6 Quad9 853, DNS system and private OFF to avoid bypass. Capture with airplane mode, without internet, preferably without SIM, activate PCAP after.

- **Why Quad9?** More secure and fast in LATAM, resists bypass
- **Why Mako lightweight?** No WMShell gestures = no 100px hitbox = no wifisar trigger = no -1 unknown = no ephemeral port rotation
- **Hardware:** Copper cable A-C (not C-C), breaks data lines that trigger OTG
- **Result:** No virtual servers 192.100.x created, no forward to 443

Key Takeaway

This is not a modem attack. This is a **Telecom Framework VoIP Bridge** using Android's own `CallAudioRouteStateMachine` + `VoipCallMonitor` as a feature. Signed by the ODM, controlled by the launcher sidebar. Small actions, big changes.

**Repo:** `github.com/lexs201992-gif/Project-LION-Manager-Provisioning-Enterprise`
**Report:** `Threat Intelligence Report: Project_LION.md`
