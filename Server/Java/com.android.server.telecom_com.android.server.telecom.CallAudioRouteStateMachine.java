package com.android.server.telecom;
import com.android.server.telecom.CallAudioManager$AudioServiceFactory;
import android.media.AudioManager;
import com.android.server.telecom.CallAudioRouteStateMachine$RingingBluetoothRoute;
import android.util.SparseArray;
import com.android.server.telecom.CallAudioRouteStateMachine$ActiveHeadsetRoute;
import com.android.server.telecom.CallAudioRouteStateMachine$QuiescentSpeakerRoute;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import android.content.BroadcastReceiver;
import java.util.concurrent.Executor;
import com.android.server.telecom.WiredHeadsetManager;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import com.android.server.telecom.CallAudioRouteStateMachine$ActiveSpeakerRoute;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.CallAudioRouteStateMachine$ActiveEarpieceRoute;
import java.util.HashMap;
import android.os.Message;
import com.android.server.telecom.CallAudioManager;
import android.telecom.CallAudioState;
import com.android.server.telecom.CallAudioRouteStateMachine$StreamingState;
import com.android.server.telecom.CallAudioRouteStateMachine$QuiescentEarpieceRoute;
import com.android.server.telecom.StatusBarNotifier;
import java.lang.String;
import com.android.server.telecom.CallAudioRouteStateMachine$QuiescentHeadsetRoute;
import com.android.server.telecom.CallAudioRouteStateMachine$ActiveBluetoothRoute;
import android.content.Context;
import com.android.server.telecom.CallAudioRouteStateMachine$QuiescentBluetoothRoute;

public class CallAudioRouteStateMachine extends StateMachine
{
/*
 * Field Definitions.
 */
      public static final SparseArray AUDIO_ROUTE_TO_LOG_EVENT;
      private static final SparseArray MESSAGE_CODE_TO_NAME;
      public static final String NAME;
      private final CallAudioRouteStateMachine$ActiveBluetoothRoute mActiveBluetoothRoute;
      private final CallAudioRouteStateMachine$ActiveEarpieceRoute mActiveEarpieceRoute;
      private final CallAudioRouteStateMachine$ActiveHeadsetRoute mActiveHeadsetRoute;
      private final CallAudioRouteStateMachine$ActiveSpeakerRoute mActiveSpeakerRoute;
      private final Executor mAsyncTaskExecutor;
      private int mAudioFocusType;
      private final AudioManager mAudioManager;
      private final CallAudioManager$AudioServiceFactory mAudioServiceFactory;
      private int mAvailableRoutes;
      private final BluetoothRouteManager mBluetoothRouteManager;
      private CallAudioManager mCallAudioManager;
      private final CallsManager mCallsManager;
      private final Context mContext;
      private CallAudioState mCurrentCallAudioState;
      private int mDeviceSupportedRoutes;
      private boolean mDoesDeviceSupportEarpieceRoute;
      private boolean mHasUserExplicitlyLeftBluetooth;
      private boolean mIsMuted;
      private CallAudioState mLastKnownCallAudioState;
      private final TelecomSystem$SyncRoot mLock;
      private final BroadcastReceiver mMuteChangeReceiver;
      private final CallAudioRouteStateMachine$QuiescentBluetoothRoute mQuiescentBluetoothRoute;
      private final CallAudioRouteStateMachine$QuiescentEarpieceRoute mQuiescentEarpieceRoute;
      private final CallAudioRouteStateMachine$QuiescentHeadsetRoute mQuiescentHeadsetRoute;
      private final CallAudioRouteStateMachine$QuiescentSpeakerRoute mQuiescentSpeakerRoute;
      private final CallAudioRouteStateMachine$RingingBluetoothRoute mRingingBluetoothRoute;
      private HashMap mRouteCodeToQuiescentState;
      private final BroadcastReceiver mSpeakerPhoneChangeReceiver;
      private HashMap mStateNameToRouteCode;
      private final StatusBarNotifier mStatusBarNotifier;
      private final CallAudioRouteStateMachine$StreamingState mStreamingState;
      private boolean mWasOnSpeaker;
      private final WiredHeadsetManager mWiredHeadsetManager;
/*
 * Declared Constructors.
 */
    public CallAudioRouteStateMachine(Context, CallsManager, BluetoothRouteManager, WiredHeadsetManager, StatusBarNotifier, CallAudioManager$AudioServiceFactory, int, Executor) { ... }
    public static void $r8$lambda$T1DgoEL6ulqLZ8JUuSDDXiAEh8o(CallAudioRouteStateMachine, boolean, boolean) { ... }
    static volatile CallAudioRouteStateMachine$ActiveBluetoothRoute -$$Nest$fgetmActiveBluetoothRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$ActiveEarpieceRoute -$$Nest$fgetmActiveEarpieceRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$ActiveHeadsetRoute -$$Nest$fgetmActiveHeadsetRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$ActiveSpeakerRoute -$$Nest$fgetmActiveSpeakerRoute(CallAudioRouteStateMachine) { ... }
    static volatile int -$$Nest$fgetmAudioFocusType(CallAudioRouteStateMachine) { ... }
    static volatile AudioManager -$$Nest$fgetmAudioManager(CallAudioRouteStateMachine) { ... }
    static volatile int -$$Nest$fgetmAvailableRoutes(CallAudioRouteStateMachine) { ... }
    static volatile BluetoothRouteManager -$$Nest$fgetmBluetoothRouteManager(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioManager -$$Nest$fgetmCallAudioManager(CallAudioRouteStateMachine) { ... }
    static volatile CallsManager -$$Nest$fgetmCallsManager(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioState -$$Nest$fgetmCurrentCallAudioState(CallAudioRouteStateMachine) { ... }
    static volatile int -$$Nest$fgetmDeviceSupportedRoutes(CallAudioRouteStateMachine) { ... }
    static volatile boolean -$$Nest$fgetmDoesDeviceSupportEarpieceRoute(CallAudioRouteStateMachine) { ... }
    static volatile boolean -$$Nest$fgetmHasUserExplicitlyLeftBluetooth(CallAudioRouteStateMachine) { ... }
    static volatile boolean -$$Nest$fgetmIsMuted(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$QuiescentBluetoothRoute -$$Nest$fgetmQuiescentBluetoothRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$QuiescentEarpieceRoute -$$Nest$fgetmQuiescentEarpieceRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$QuiescentHeadsetRoute -$$Nest$fgetmQuiescentHeadsetRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$QuiescentSpeakerRoute -$$Nest$fgetmQuiescentSpeakerRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$RingingBluetoothRoute -$$Nest$fgetmRingingBluetoothRoute(CallAudioRouteStateMachine) { ... }
    static volatile CallAudioRouteStateMachine$StreamingState -$$Nest$fgetmStreamingState(CallAudioRouteStateMachine) { ... }
    static volatile boolean -$$Nest$fgetmWasOnSpeaker(CallAudioRouteStateMachine) { ... }
    static volatile void -$$Nest$fputmAudioFocusType(CallAudioRouteStateMachine, int) { ... }
    static volatile void -$$Nest$fputmAvailableRoutes(CallAudioRouteStateMachine, int) { ... }
    static volatile void -$$Nest$fputmDeviceSupportedRoutes(CallAudioRouteStateMachine, int) { ... }
    static volatile void -$$Nest$fputmHasUserExplicitlyLeftBluetooth(CallAudioRouteStateMachine, boolean) { ... }
    static volatile void -$$Nest$fputmWasOnSpeaker(CallAudioRouteStateMachine, boolean) { ... }
    static volatile int -$$Nest$mcalculateBaselineRouteMessage(CallAudioRouteStateMachine, boolean, boolean) { ... }
    static volatile int -$$Nest$mmodifyRoutes(CallAudioRouteStateMachine, int, int, int, boolean) { ... }
    static volatile void -$$Nest$mreinitialize(CallAudioRouteStateMachine) { ... }
    static volatile void -$$Nest$msendInternalMessage(CallAudioRouteStateMachine, int) { ... }
    static volatile void -$$Nest$msendInternalMessage(CallAudioRouteStateMachine, int, int) { ... }
    static volatile void -$$Nest$msetBluetoothOff(CallAudioRouteStateMachine) { ... }
    static volatile void -$$Nest$msetBluetoothOn(CallAudioRouteStateMachine, String) { ... }
    static volatile void -$$Nest$msetSpeakerphoneOn(CallAudioRouteStateMachine, boolean) { ... }
    static volatile void -$$Nest$msetSystemAudioState(CallAudioRouteStateMachine, CallAudioState) { ... }
    static volatile void -$$Nest$msetSystemAudioState(CallAudioRouteStateMachine, CallAudioState, boolean) { ... }
    static volatile void -$$Nest$mupdateInternalCallAudioState(CallAudioRouteStateMachine) { ... }
    static volatile SparseArray -$$Nest$sfgetMESSAGE_CODE_TO_NAME() { ... }
    private int calculateBaselineRouteMessage(boolean, boolean) { ... }
    private int calculateSupportedRoutes() { ... }
    private boolean checkForEarpieceSupport() { ... }
    private void createStates(int) { ... }
    public void dump(IndentingPrintWriter) { ... }
    public void dumpPendingMessages(IndentingPrintWriter) { ... }
    public CallAudioState getCurrentCallAudioState() { ... }
    private int getCurrentCallSupportedRoutes() { ... }
    private int getCurrentUserId() { ... }
    private CallAudioState getInitialAudioState() { ... }
    public void initialize() { ... }
    public void initialize(CallAudioState) { ... }
    public boolean isHfpDeviceAvailable() { ... }
    public boolean isInActiveState() { ... }
    private void lambda$setSpeakerphoneOn$0(boolean, boolean) { ... }
    private int modifyRoutes(int, int, int, boolean) { ... }
    protected void onPostHandleMessage(Message) { ... }
    protected void onPreHandleMessage(Message) { ... }
    private void reinitialize() { ... }
    private void resendSystemAudioState() { ... }
    private void sendInternalMessage(int) { ... }
    private void sendInternalMessage(int, int) { ... }
    public void sendMessageWithSessionInfo(int) { ... }
    public void sendMessageWithSessionInfo(int, int) { ... }
    public void sendMessageWithSessionInfo(int, int, String) { ... }
    private void setBluetoothOff() { ... }
    private void setBluetoothOn(String) { ... }
    public void setCallAudioManager(CallAudioManager) { ... }
    private void setMuteOn(boolean) { ... }
    private void setSpeakerphoneOn(boolean) { ... }
    private void setSystemAudioState(CallAudioState) { ... }
    private void setSystemAudioState(CallAudioState, boolean) { ... }
    protected void unhandledMessage(Message) { ... }
    private void updateAudioStateForTrackedCalls(CallAudioState) { ... }
    private void updateInternalCallAudioState() { ... }
    private void updateRouteForForegroundCall() { ... }
    private void updateSystemMuteState() { ... }

} 