package com.android.server.telecom;
import com.android.server.telecom.RingbackPlayer;
import com.android.server.telecom.InCallTonePlayer$Factory;
import android.util.SparseArray;
import java.util.HashSet;
import com.android.server.telecom.DtmfLocalTonePlayer;
import java.util.Collection;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.bluetooth.BluetoothStateReceiver;
import com.android.server.telecom.ConnectionServiceWrapper;
import com.android.server.telecom.CallAudioModeStateMachine;
import android.os.UserHandle;
import com.android.server.telecom.CallAudioModeStateMachine$MessageArgs;
import android.telecom.VideoProfile;
import com.android.server.telecom.Ringer;
import java.util.LinkedHashSet;
import com.android.server.telecom.InCallTonePlayer;
import android.telecom.CallAudioState;
import com.android.server.telecom.CallAudioRouteStateMachine;
import com.android.server.telecom.Call;
import java.lang.String;
import android.content.Context;
import java.util.Set;

public class CallAudioManager extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private final String LOG_TAG;
      private final LinkedHashSet mActiveDialingOrConnectingCalls;
      private final LinkedHashSet mAudioProcessingCalls;
      private final BluetoothStateReceiver mBluetoothStateReceiver;
      private final CallAudioModeStateMachine mCallAudioModeStateMachine;
      private final CallAudioRouteStateMachine mCallAudioRouteStateMachine;
      private final SparseArray mCallStateToCalls;
      private final Set mCalls;
      private final CallsManager mCallsManager;
      private final DtmfLocalTonePlayer mDtmfLocalTonePlayer;
      private Call mForegroundCall;
      private InCallTonePlayer mHoldTonePlayer;
      private final LinkedHashSet mHoldingCalls;
      private boolean mIsDisconnectedTonePlaying;
      private boolean mIsTonePlaying;
      private final InCallTonePlayer$Factory mPlayerFactory;
      private final RingbackPlayer mRingbackPlayer;
      private final Ringer mRinger;
      private final LinkedHashSet mRingingCalls;
      private Call mStreamingCall;
/*
 * Declared Constructors.
 */
    public CallAudioManager(CallAudioRouteStateMachine, CallsManager, CallAudioModeStateMachine, InCallTonePlayer$Factory, Ringer, RingbackPlayer, BluetoothStateReceiver, DtmfLocalTonePlayer) { ... }
    static volatile LinkedHashSet -$$Nest$fgetmActiveDialingOrConnectingCalls(CallAudioManager) { ... }
    static volatile LinkedHashSet -$$Nest$fgetmAudioProcessingCalls(CallAudioManager) { ... }
    static volatile LinkedHashSet -$$Nest$fgetmHoldingCalls(CallAudioManager) { ... }
    static volatile LinkedHashSet -$$Nest$fgetmRingingCalls(CallAudioManager) { ... }
    private void addCall(Call) { ... }
     void dump(IndentingPrintWriter) { ... }
    private void dumpCallsInCollection(IndentingPrintWriter, Collection) { ... }
    private HashSet getBinForCall(Call) { ... }
    public CallAudioModeStateMachine getCallAudioModeStateMachine() { ... }
    public CallAudioRouteStateMachine getCallAudioRouteStateMachine() { ... }
    public CallAudioState getCallAudioState() { ... }
    public SparseArray getCallStateToCalls() { ... }
    public Call getForegroundCall() { ... }
    public Call getPossiblyHeldForegroundCall() { ... }
    public Set getTrackedCalls() { ... }
    public boolean isCallVoip(Call) { ... }
    public boolean isRingtonePlaying() { ... }
    private CallAudioModeStateMachine$MessageArgs makeArgsForModeStateMachine() { ... }
    private void maybePlayHoldTone() { ... }
    private void maybeStopRingingAndCallWaitingForAnsweredOrRejectedCall(Call) { ... }
    public void mute(boolean) { ... }
    public void notifyAudioOperationsComplete() { ... }
    public void onCallAdded(Call) { ... }
    private void onCallEnteringActiveDialingOrConnecting() { ... }
    private void onCallEnteringAudioProcessing() { ... }
    private void onCallEnteringHold() { ... }
    private void onCallEnteringRinging() { ... }
    private void onCallEnteringState(Call, int) { ... }
    private void onCallLeavingActiveDialingOrConnecting() { ... }
    private void onCallLeavingAudioProcessing() { ... }
    private void onCallLeavingHold() { ... }
    private void onCallLeavingRinging() { ... }
    private void onCallLeavingState(Call, int) { ... }
    public void onCallRemoved(Call) { ... }
    public void onCallStateChanged(Call, int, int) { ... }
    public void onCallStreamingStateChanged(Call, boolean) { ... }
    public void onConnectionServiceChanged(Call, ConnectionServiceWrapper, ConnectionServiceWrapper) { ... }
    public void onExternalCallChanged(Call, boolean) { ... }
    public void onHoldToneRequested(Call) { ... }
    public void onIncomingCallAnswered(Call) { ... }
    public void onIncomingCallRejected(Call, boolean, String) { ... }
    public void onIsConferencedChanged(Call) { ... }
    public void onIsVoipAudioModeChanged(Call) { ... }
    public void onRingbackRequested(Call, boolean) { ... }
    public void onRingerModeChange() { ... }
    public void onSessionModifyRequestReceived(Call, VideoProfile) { ... }
    public void onVideoStateChanged(Call, int, int) { ... }
    private void playRingbackForCall(Call) { ... }
    public void playRttUpgradeTone(Call) { ... }
    private void playToneForDisconnectedCall(Call) { ... }
    private void removeCall(Call) { ... }
    private void removeCallFromAllBins(Call) { ... }
    private void sendCallStatusToBluetoothStateReceiver() { ... }
    public void setAudioRoute(int, String) { ... }
    public void setCallAudioRouteFocusState(int) { ... }
    public void setIsTonePlaying(boolean) { ... }
    public void setMode(int) { ... }
    private boolean shouldIgnoreCallForAudio(Call) { ... }
    private boolean shouldPlayDisconnectTone(int, int) { ... }
    private boolean shouldPlayHoldTone() { ... }
    public Set silenceRingers(Context, UserHandle, boolean) { ... }
    public void startCallWaiting(String) { ... }
    public boolean startRinging() { ... }
    public void stopCallWaiting() { ... }
    private void stopRingbackForCall(Call) { ... }
    public void stopRinging() { ... }
    public boolean stopRingingForCVRS() { ... }
     void switchBaseline() { ... }
    public void toggleMute() { ... }
    public void updateCVRStatusToAudio(boolean) { ... }
    private void updateForegroundCall() { ... }

} 