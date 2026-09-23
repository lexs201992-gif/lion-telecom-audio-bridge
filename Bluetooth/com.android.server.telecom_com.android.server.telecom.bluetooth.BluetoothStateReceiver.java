package com.android.server.telecom.bluetooth;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import java.lang.String;
import android.content.Context;
import android.content.Intent;
import com.android.server.telecom.bluetooth.BluetoothDeviceManager;
import android.content.IntentFilter;

public class BluetoothStateReceiver extends BroadcastReceiver
{
/*
 * Field Definitions.
 */
      public static final IntentFilter INTENT_FILTER;
      private static final String LOG_TAG;
      private final BluetoothDeviceManager mBluetoothDeviceManager;
      private final BluetoothRouteManager mBluetoothRouteManager;
      private boolean mIsInCall;
/*
 * Declared Constructors.
 */
    public BluetoothStateReceiver(BluetoothDeviceManager, BluetoothRouteManager) { ... }
    public BluetoothDeviceManager getBluetoothDeviceManager() { ... }
    private void handleActiveDeviceChanged(Intent) { ... }
    private void handleAudioStateChanged(Intent) { ... }
    private void handleConnectionStateChanged(Intent) { ... }
    public void onReceive(Context, Intent) { ... }
    public void setIsInCall(boolean) { ... }

} 