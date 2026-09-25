package com.android.networkstack.android.net.dhcp;
import java.lang.String;
import com.android.networkstack.android.net.dhcp.IDhcpEventCallbacks;
import com.android.networkstack.android.net.dhcp.DhcpServingParamsParcel;
import com.android.networkstack.android.net.INetworkStackStatusCallback;

public abstract interface IDhcpServer
{
/*
 * Field Definitions.
 */
      public static final String DESCRIPTOR;
/*
 * Declared Constructors.
 */
    public abstract String getInterfaceHash() { ... }
    public abstract int getInterfaceVersion() { ... }
    public abstract void start(INetworkStackStatusCallback) { ... }
    public abstract void startWithCallbacks(INetworkStackStatusCallback, IDhcpEventCallbacks) { ... }
    public abstract void stop(INetworkStackStatusCallback) { ... }
    public abstract void updateParams(DhcpServingParamsParcel, INetworkStackStatusCallback) { ... }

} 