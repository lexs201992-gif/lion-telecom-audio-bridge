package com.android.server.telecom;
import com.android.server.telecom.CallAudioModeStateMachine$MessageArgs;
import android.telecom.Logging.Session;

public static class CallAudioModeStateMachine$MessageArgs$Builder extends Object
{
/*
 * Field Definitions.
 */
      private boolean mForegroundCallIsVoip;
      private boolean mHasActiveOrDialingCalls;
      private boolean mHasAudioProcessingCalls;
      private boolean mHasHoldingCalls;
      private boolean mHasRingingCalls;
      private boolean mIsStreaming;
      private boolean mIsTonePlaying;
      private Session mSession;
/*
 * Declared Constructors.
 */
    public CallAudioModeStateMachine$MessageArgs$Builder() { ... }
    public CallAudioModeStateMachine$MessageArgs build() { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setForegroundCallIsVoip(boolean) { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setHasActiveOrDialingCalls(boolean) { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setHasAudioProcessingCalls(boolean) { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setHasHoldingCalls(boolean) { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setHasRingingCalls(boolean) { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setIsStreaming(boolean) { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setIsTonePlaying(boolean) { ... }
    public CallAudioModeStateMachine$MessageArgs$Builder setSession(Session) { ... }

} 