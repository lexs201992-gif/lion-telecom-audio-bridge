package com.android.networkstack.android.net;
import java.lang.String;
import com.android.networkstack.android.net.MarkMaskParcel;
import android.os.IBinder;
import com.android.networkstack.android.net.InterfaceConfigurationParcel;

final class INetd$Stub$Proxy extends Object
{
/*
 * Field Definitions.
 */
      private String mCachedHash;
      private int mCachedVersion;
      private IBinder mRemote;
/*
 * Declared Constructors.
 */
     INetd$Stub$Proxy(IBinder) { ... }
    public IBinder asBinder() { ... }
    public MarkMaskParcel getFwmarkForNetwork(int) { ... }
    public synchronized String getInterfaceHash() { ... }
    public int getInterfaceVersion() { ... }
    public String getProcSysNet(int, int, String, String) { ... }
    public void interfaceAddAddress(String, String, int) { ... }
    public void interfaceClearAddrs(String) { ... }
    public void interfaceSetCfg(InterfaceConfigurationParcel) { ... }
    public void interfaceSetEnableIPv6(String, boolean) { ... }
    public void interfaceSetIPv6PrivacyExtensions(String, boolean) { ... }
    public void setIPv6AddrGenMode(String, int) { ... }
    public void setProcSysNet(int, int, String, String, String) { ... }

} 