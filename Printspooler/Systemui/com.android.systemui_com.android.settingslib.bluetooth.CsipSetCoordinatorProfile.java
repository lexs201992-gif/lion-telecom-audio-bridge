package com.android.settingslib.bluetooth;
import java.lang.String;
import android.content.Context;
import android.bluetooth.BluetoothCsipSetCoordinator;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothClass;
import com.android.settingslib.bluetooth.LocalBluetoothProfileManager;
import com.android.settingslib.bluetooth.CachedBluetoothDeviceManager;

public final class CsipSetCoordinatorProfile extends Object
{
/*
 * Field Definitions.
 */
      public final CachedBluetoothDeviceManager mDeviceManager;
      public final LocalBluetoothProfileManager mProfileManager;
      public BluetoothCsipSetCoordinator mService;
/*
 * Declared Constructors.
 */
    public CsipSetCoordinatorProfile(Context, CachedBluetoothDeviceManager, LocalBluetoothProfileManager) { ... }
    public final boolean accessProfileEnabled() { ... }
    public final void finalize() { ... }
    public final int getConnectionPolicy(BluetoothDevice) { ... }
    public final int getConnectionStatus(BluetoothDevice) { ... }
    public final int getDrawableResource(BluetoothClass) { ... }
    public final int getProfileId() { ... }
    public final boolean setEnabled(BluetoothDevice, boolean) { ... }
    public final String toString() { ... }

} 