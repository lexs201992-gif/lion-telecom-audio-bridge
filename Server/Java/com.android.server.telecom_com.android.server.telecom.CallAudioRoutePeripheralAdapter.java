package com.android.server.telecom;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import com.android.server.telecom.WiredHeadsetManager;
import com.android.server.telecom.CallAudioRouteStateMachine;
import com.android.server.telecom.DockManager;

public class CallAudioRoutePeripheralAdapter extends Object
{
/*
 * Field Definitions.
 */
      private final BluetoothRouteManager mBluetoothRouteManager;
      private final CallAudioRouteStateMachine mCallAudioRouteStateMachine;
/*
 * Declared Constructors.
 */
    public CallAudioRoutePeripheralAdapter(CallAudioRouteStateMachine, BluetoothRouteManager, WiredHeadsetManager, DockManager) { ... }
    public boolean isBluetoothAudioOn() { ... }
    public boolean isHearingAidDeviceOn() { ... }
    public boolean isLeAudioDeviceOn() { ... }
    public void onBluetoothActiveDeviceGone() { ... }
    public void onBluetoothActiveDevicePresent() { ... }
    public void onBluetoothAudioConnected() { ... }
    public void onBluetoothAudioDisconnected() { ... }
    public void onBluetoothDeviceListChanged() { ... }
    public void onDockChanged(boolean) { ... }
    public void onUnexpectedBluetoothStateChange() { ... }
    public void onWiredHeadsetPluggedInChanged(boolean, boolean) { ... }

} 