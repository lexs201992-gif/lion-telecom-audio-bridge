package com.android.server.telecom.bluetooth;
import android.media.AudioManager;
import android.bluetooth.BluetoothHeadset;
import java.util.LinkedHashMap;
import android.bluetooth.BluetoothHearingAid;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.Collection;
import android.util.LocalLog;
import android.bluetooth.BluetoothDevice;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import android.bluetooth.BluetoothLeAudio$Callback;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothLeAudio;
import java.lang.Object;
import android.bluetooth.BluetoothProfile$ServiceListener;
import java.lang.String;
import android.content.Context;

public class BluetoothDeviceManager extends Object
{
/*
 * Field Definitions.
 */
      private AudioManager mAudioManager;
      private BluetoothAdapter mBluetoothAdapter;
      private BluetoothHeadset mBluetoothHeadset;
      private BluetoothHearingAid mBluetoothHearingAid;
      private BluetoothDevice mBluetoothHearingAidActiveDeviceCache;
      private BluetoothLeAudio mBluetoothLeAudioService;
      private final BluetoothProfile$ServiceListener mBluetoothProfileServiceListener;
      private BluetoothRouteManager mBluetoothRouteManager;
      private Executor mExecutor;
      private int mGroupIdActive;
      private int mGroupIdPending;
      private final LinkedHashMap mGroupsByDevice;
      private String mHearingAidDevice;
      private final LinkedHashMap mHearingAidDeviceSyncIds;
      private final LinkedHashMap mHearingAidDevicesByAddress;
      private boolean mHearingAidSetAsCommunicationDevice;
      private final LinkedHashMap mHfpDevicesByAddress;
      private boolean mLeAudioCallbackRegistered;
      private BluetoothLeAudio$Callback mLeAudioCallbacks;
      private String mLeAudioDevice;
      private final LinkedHashMap mLeAudioDevicesByAddress;
      private boolean mLeAudioSetAsCommunicationDevice;
      private final LocalLog mLocalLog;
      private final Object mLock;
/*
 * Declared Constructors.
 */
    public BluetoothDeviceManager(Context, BluetoothAdapter) { ... }
    public static boolean $r8$lambda$sqU8ji_0yhG_rnfcRpdz4IZewK8(BluetoothDeviceManager, BluetoothDevice) { ... }
    static volatile BluetoothHeadset -$$Nest$fgetmBluetoothHeadset(BluetoothDeviceManager) { ... }
    static volatile BluetoothHearingAid -$$Nest$fgetmBluetoothHearingAid(BluetoothDeviceManager) { ... }
    static volatile BluetoothLeAudio -$$Nest$fgetmBluetoothLeAudioService(BluetoothDeviceManager) { ... }
    static volatile BluetoothRouteManager -$$Nest$fgetmBluetoothRouteManager(BluetoothDeviceManager) { ... }
    static volatile Executor -$$Nest$fgetmExecutor(BluetoothDeviceManager) { ... }
    static volatile LinkedHashMap -$$Nest$fgetmGroupsByDevice(BluetoothDeviceManager) { ... }
    static volatile LinkedHashMap -$$Nest$fgetmHearingAidDevicesByAddress(BluetoothDeviceManager) { ... }
    static volatile LinkedHashMap -$$Nest$fgetmHfpDevicesByAddress(BluetoothDeviceManager) { ... }
    static volatile boolean -$$Nest$fgetmLeAudioCallbackRegistered(BluetoothDeviceManager) { ... }
    static volatile BluetoothLeAudio$Callback -$$Nest$fgetmLeAudioCallbacks(BluetoothDeviceManager) { ... }
    static volatile LinkedHashMap -$$Nest$fgetmLeAudioDevicesByAddress(BluetoothDeviceManager) { ... }
    static volatile LocalLog -$$Nest$fgetmLocalLog(BluetoothDeviceManager) { ... }
    static volatile Object -$$Nest$fgetmLock(BluetoothDeviceManager) { ... }
    static volatile void -$$Nest$fputmBluetoothHeadset(BluetoothDeviceManager, BluetoothHeadset) { ... }
    static volatile void -$$Nest$fputmBluetoothHearingAid(BluetoothDeviceManager, BluetoothHearingAid) { ... }
    static volatile void -$$Nest$fputmBluetoothLeAudioService(BluetoothDeviceManager, BluetoothLeAudio) { ... }
    static volatile void -$$Nest$fputmLeAudioCallbackRegistered(BluetoothDeviceManager, boolean) { ... }
    public void cacheHearingAidDevice() { ... }
    public void clearHearingAidCommunicationDevice() { ... }
    public void clearLeAudioCommunicationDevice() { ... }
    public boolean connectAudio(String, boolean) { ... }
    public void disconnectAudio() { ... }
    public void disconnectSco() { ... }
    public void dump(IndentingPrintWriter) { ... }
    public BluetoothAdapter getBluetoothAdapter() { ... }
    public BluetoothHeadset getBluetoothHeadset() { ... }
    public BluetoothHearingAid getBluetoothHearingAid() { ... }
    public Collection getConnectedDevices() { ... }
    public static String getDeviceTypeString(int) { ... }
    private List getLeAudioConnectedDevices() { ... }
    public BluetoothLeAudio getLeAudioService() { ... }
    public int getNumConnectedDevices() { ... }
    public Collection getUniqueConnectedDevices() { ... }
    public boolean isHearingAidSetAsCommunicationDevice() { ... }
    public boolean isInbandRingingEnabled() { ... }
    public boolean isLeAudioCommunicationDevice() { ... }
    private boolean lambda$getLeAudioConnectedDevices$0(BluetoothDevice) { ... }
     void onDeviceConnected(BluetoothDevice, int) { ... }
     void onDeviceDisconnected(BluetoothDevice, int) { ... }
    public void restoreHearingAidDevice() { ... }
    public void setBluetoothRouteManager(BluetoothRouteManager) { ... }
    public boolean setHearingAidCommunicationDevice() { ... }
    public boolean setLeAudioCommunicationDevice() { ... }

} 