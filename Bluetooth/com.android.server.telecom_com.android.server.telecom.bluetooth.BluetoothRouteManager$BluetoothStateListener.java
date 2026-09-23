package com.android.server.telecom.bluetooth;

public abstract static interface BluetoothRouteManager$BluetoothStateListener
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void onBluetoothActiveDeviceGone() { ... }
    public abstract void onBluetoothActiveDevicePresent() { ... }
    public abstract void onBluetoothAudioConnected() { ... }
    public abstract void onBluetoothAudioDisconnected() { ... }
    public abstract void onBluetoothDeviceListChanged() { ... }
    public abstract void onUnexpectedBluetoothStateChange() { ... }

} 