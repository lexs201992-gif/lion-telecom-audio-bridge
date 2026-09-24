### vendor.wcn_chr (runtime daemon)

| Property | Value |
|----------|-------|
| Binary | /vendor/bin/wcn_chr |
| User | 12345 (custom, unmapped → UID -1 in PCAP) |
| Class | late_start (post boot_completed) |
| Role | Runtime WCN chip manager; executes AT commands from wifisar scripts |

This daemon is the persistent component that keeps the WCN chip in the
state imposed by the wifisar trigger. Without it running, the AT commands
from wifisarX.sh have no runtime executor.

The UID 12345 is not mapped to any package in PackageManager, which is why
its network traffic appears as UID -1 (UNKNOWN) in PCAPdroid.   
