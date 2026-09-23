package com.android.server.telecom.bluetooth;
import android.os.Message;
import com.android.server.telecom.bluetooth.BluetoothRouteManager$AudioConnectedState;
import java.util.Set;
import android.content.Context;
import com.android.server.telecom.Timeouts$Adapter;
import com.android.internal.util.State;
import java.util.Collection;
import android.bluetooth.BluetoothDevice;
import java.util.Map;
import java.util.LinkedHashSet;
import com.android.server.telecom.bluetooth.BluetoothDeviceManager;
import com.android.server.telecom.bluetooth.BluetoothRouteManager$BluetoothStateListener;
import com.android.server.telecom.bluetooth.BluetoothRouteManager$AudioConnectingState;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import android.util.SparseArray;
import java.lang.String;

public class BluetoothRouteManager extends StateMachine
{
/*
 * Field Definitions.
 */
      private static final String LOG_TAG;
      private static final SparseArray MESSAGE_CODE_TO_NAME;
      private final Map mAudioConnectedStates;
      private final Map mAudioConnectingStates;
      private final State mAudioOffState;
      private final Context mContext;
      private BluetoothDeviceManager mDeviceManager;
      private BluetoothDevice mHearingAidActiveDeviceCache;
      private BluetoothDevice mHfpActiveDeviceCache;
      private BluetoothDevice mLeAudioActiveDeviceCache;
      private BluetoothRouteManager$BluetoothStateListener mListener;
      private final TelecomSystem$SyncRoot mLock;
      private BluetoothDevice mMostRecentlyReportedActiveDevice;
      private final LinkedHashSet mMostRecentlyUsedDevices;
      private final Timeouts$Adapter mTimeoutsAdapter;
      private final Set statesToCleanUp;
/*
 * Declared Constructors.
 */
    public BluetoothRouteManager(Context, TelecomSystem$SyncRoot, BluetoothDeviceManager, Timeouts$Adapter) { ... }
    public static boolean $r8$lambda$UVc4Lk7fBICvBLZq-yr1noObP8w(String, BluetoothDevice) { ... }
    public static void $r8$lambda$rbYW9fMOXEJ-E-yAjoCFD4msgic(BluetoothRouteManager, String, BluetoothDevice) { ... }
    static volatile Map -$$Nest$fgetmAudioConnectedStates(BluetoothRouteManager) { ... }
    static volatile Context -$$Nest$fgetmContext(BluetoothRouteManager) { ... }
    static volatile BluetoothDeviceManager -$$Nest$fgetmDeviceManager(BluetoothRouteManager) { ... }
    static volatile BluetoothRouteManager$BluetoothStateListener -$$Nest$fgetmListener(BluetoothRouteManager) { ... }
    static volatile LinkedHashSet -$$Nest$fgetmMostRecentlyUsedDevices(BluetoothRouteManager) { ... }
    static volatile Timeouts$Adapter -$$Nest$fgetmTimeoutsAdapter(BluetoothRouteManager) { ... }
    static volatile boolean -$$Nest$maddDevice(BluetoothRouteManager, String) { ... }
    static volatile void -$$Nest$mcleanupStatesForDisconnectedDevices(BluetoothRouteManager) { ... }
    static volatile String -$$Nest$mconnectBtAudio(BluetoothRouteManager, String, int, boolean) { ... }
    static volatile String -$$Nest$mconnectBtAudio(BluetoothRouteManager, String, boolean) { ... }
    static volatile BluetoothRouteManager$AudioConnectedState -$$Nest$mgetConnectedStateForAddress(BluetoothRouteManager, String, String) { ... }
    static volatile BluetoothRouteManager$AudioConnectingState -$$Nest$mgetConnectingStateForAddress(BluetoothRouteManager, String, String) { ... }
    static volatile boolean -$$Nest$mremoveDevice(BluetoothRouteManager, String) { ... }
    static volatile void -$$Nest$mtransitionToActualState(BluetoothRouteManager) { ... }
    static volatile String -$$Nest$sfgetLOG_TAG() { ... }
    static void access$000(BluetoothRouteManager, int) { ... }
    static void access$100(BluetoothRouteManager, int) { ... }
    private boolean addDevice(String) { ... }
    public void cacheHearingAidDevice() { ... }
    private void cleanupStatesForDisconnectedDevices() { ... }
    public void connectBluetoothAudio(String) { ... }
    private String connectBtAudio(String, int, boolean) { ... }
    private String connectBtAudio(String, boolean) { ... }
    public void disconnectAudio() { ... }
    public void disconnectBluetoothAudio() { ... }
    private String getActiveDeviceAddress() { ... }
    public BluetoothDevice getBluetoothAudioConnectedDevice() { ... }
    public Collection getConnectedDevices() { ... }
    private BluetoothRouteManager$AudioConnectedState getConnectedStateForAddress(String, String) { ... }
    private BluetoothRouteManager$AudioConnectingState getConnectingStateForAddress(String, String) { ... }
    public boolean hasBtActiveDevice() { ... }
    public boolean isBluetoothAudioConnectedOrPending() { ... }
    public boolean isBluetoothAvailable() { ... }
    public boolean isCachedHearingAidDevice(BluetoothDevice) { ... }
    public boolean isCachedLeAudioDevice(BluetoothDevice) { ... }
    public boolean isInbandRingingEnabled() { ... }
    private static boolean lambda$connectBtAudio$0(String, BluetoothDevice) { ... }
    private void lambda$setInitialStateForTesting$1(String, BluetoothDevice) { ... }
    public void onActiveDeviceChanged(BluetoothDevice, int) { ... }
    public void onAudioLost(String) { ... }
    public void onAudioOn(String) { ... }
    public void onDeviceAdded(String) { ... }
    public void onDeviceLost(String) { ... }
    protected void onPostHandleMessage(Message) { ... }
    protected void onPreHandleMessage(Message) { ... }
    private boolean removeDevice(String) { ... }
    public void restoreHearingAidDevice() { ... }
    public void setActiveDeviceCacheForTesting(BluetoothDevice, int) { ... }
    public void setInitialStateForTesting(String, BluetoothDevice) { ... }
    public void setListener(BluetoothRouteManager$BluetoothStateListener) { ... }
    private void transitionToActualState() { ... }

} 