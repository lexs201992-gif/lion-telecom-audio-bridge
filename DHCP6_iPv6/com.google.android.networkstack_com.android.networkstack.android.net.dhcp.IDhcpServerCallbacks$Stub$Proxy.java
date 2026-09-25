package com.android.networkstack.android.net.dhcp;
import java.lang.String;
import com.android.networkstack.android.net.dhcp.IDhcpServer;
import android.os.IBinder;

final class IDhcpServerCallbacks$Stub$Proxy extends Object
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
     IDhcpServerCallbacks$Stub$Proxy(IBinder) { ... }
    public IBinder asBinder() { ... }
    public synchronized String getInterfaceHash() { ... }
    public int getInterfaceVersion() { ... }
    public void onDhcpServerCreated(int, IDhcpServer) { ... }

} 