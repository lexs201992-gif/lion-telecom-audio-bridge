package com.android.server.telecom;
import com.android.server.telecom.CallAudioManager;
import com.android.internal.util.IndentingPrintWriter;
import android.os.Message;
import com.android.server.telecom.CallAudioModeStateMachine$MessageArgs;
import com.android.server.telecom.SystemStateHelper;
import com.android.server.telecom.CallAudioModeStateMachine$BaseState;
import android.util.SparseArray;
import android.media.AudioManager;
import java.lang.String;
import android.util.LocalLog;

public class CallAudioModeStateMachine extends StateMachine
{
/*
 * Field Definitions.
 */
      public static final String AUDIO_PROCESSING_STATE_NAME;
      public static final String CALL_STATE_NAME;
      public static final String COMMS_STATE_NAME;
      private static final String LOG_TAG;
      private static final SparseArray MESSAGE_CODE_TO_NAME;
      public static final String RING_STATE_NAME;
      public static final String STREAMING_STATE_NAME;
      public static final String TONE_HOLD_STATE_NAME;
      public static final String UNFOCUSED_STATE_NAME;
      private final AudioManager mAudioManager;
      private final CallAudioModeStateMachine$BaseState mAudioProcessingFocusState;
      private CallAudioManager mCallAudioManager;
      private boolean mIsCVRSCallMode;
      private boolean mIsInitialized;
      private LocalLog mLocalLog;
      private int mMostRecentMode;
      private final CallAudioModeStateMachine$BaseState mOtherFocusState;
      private final CallAudioModeStateMachine$BaseState mRingingFocusState;
      private final CallAudioModeStateMachine$BaseState mSimCallFocusState;
      private final CallAudioModeStateMachine$BaseState mStreamingFocusState;
      private final SystemStateHelper mSystemStateHelper;
      private final CallAudioModeStateMachine$BaseState mUnfocusedState;
      private final CallAudioModeStateMachine$BaseState mVoipCallFocusState;
/*
 * Declared Constructors.
 */
    public CallAudioModeStateMachine(SystemStateHelper, AudioManager) { ... }
    static volatile AudioManager -$$Nest$fgetmAudioManager(CallAudioModeStateMachine) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$fgetmAudioProcessingFocusState(CallAudioModeStateMachine) { ... }
    static volatile CallAudioManager -$$Nest$fgetmCallAudioManager(CallAudioModeStateMachine) { ... }
    static volatile boolean -$$Nest$fgetmIsCVRSCallMode(CallAudioModeStateMachine) { ... }
    static volatile boolean -$$Nest$fgetmIsInitialized(CallAudioModeStateMachine) { ... }
    static volatile LocalLog -$$Nest$fgetmLocalLog(CallAudioModeStateMachine) { ... }
    static volatile int -$$Nest$fgetmMostRecentMode(CallAudioModeStateMachine) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$fgetmOtherFocusState(CallAudioModeStateMachine) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$fgetmRingingFocusState(CallAudioModeStateMachine) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$fgetmSimCallFocusState(CallAudioModeStateMachine) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$fgetmStreamingFocusState(CallAudioModeStateMachine) { ... }
    static volatile SystemStateHelper -$$Nest$fgetmSystemStateHelper(CallAudioModeStateMachine) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$fgetmUnfocusedState(CallAudioModeStateMachine) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$fgetmVoipCallFocusState(CallAudioModeStateMachine) { ... }
    static volatile void -$$Nest$fputmIsInitialized(CallAudioModeStateMachine, boolean) { ... }
    static volatile void -$$Nest$fputmMostRecentMode(CallAudioModeStateMachine, int) { ... }
    static volatile CallAudioModeStateMachine$BaseState -$$Nest$mcalculateProperStateFromArgs(CallAudioModeStateMachine, CallAudioModeStateMachine$MessageArgs) { ... }
    static volatile String -$$Nest$sfgetLOG_TAG() { ... }
    private CallAudioModeStateMachine$BaseState calculateProperStateFromArgs(CallAudioModeStateMachine$MessageArgs) { ... }
    private void createStates() { ... }
    public void dump(IndentingPrintWriter) { ... }
    public void dumpPendingMessages(IndentingPrintWriter) { ... }
    protected void onPostHandleMessage(Message) { ... }
    protected void onPreHandleMessage(Message) { ... }
    public void sendMessageWithArgs(int, CallAudioModeStateMachine$MessageArgs) { ... }
    public void setAudioMode(int) { ... }
    public void setCVRSCallMode(boolean) { ... }
    public void setCallAudioManager(CallAudioManager) { ... }

} 