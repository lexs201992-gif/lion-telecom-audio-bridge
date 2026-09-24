WMShell (PiP hitbox)
  → Longcheer Sidebar
    → setprop persist.sys.longcheer.wifisar X
      → init.rc → wifisarX.sh (oneshot, root)
        → /sys/class/misc/wcn/devices/atcmd (AT command al chip)
          → vendor.wcn_chr (daemon, UID 12345, late_start)
            → Gestiona el WCN chip en runtime
              → Fuerza reconnect → port rotation → :443
                → wg0 (fd00:2::/48) → VoIP exfil   

                ### vendor.wcn_chr (runtime daemon)

| Property | Value |
|----------|-------|
| Binary | /vendor/bin/wcn_chr |
| User | 12345 (custom, unmapped → UID -1 in PCAP) |
| Class | late_start (post boot_completed) |
| Role | Runtime WCN chip manager; executes AT commands from wifisar scripts |
.   
