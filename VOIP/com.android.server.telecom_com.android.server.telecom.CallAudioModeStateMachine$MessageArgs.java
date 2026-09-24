package com.android.server.telecom;
import java.lang.String;
import com.android.server.telecom.CallAudioModeStateMachine$MessageArgs-IA;
import android.telecom.Logging.Session;

public static class CallAudioModeStateMachine$MessageArgs extends Object
{
/*
 * Field Definitions.
 */
      public boolean foregroundCallIsVoip;
      public boolean hasActiveOrDialingCalls;
      public boolean hasAudioProcessingCalls;
      public boolean hasHoldingCalls;
      public boolean hasRingingCalls;
      public boolean isStreaming;
      public boolean isTonePlaying;
      public Session session;
/*
 * Declared Constructors.
 */
    private CallAudioModeStateMachine$MessageArgs(boolean, boolean, boolean, boolean, boolean, boolean, boolean, Session) { ... }
     CallAudioModeStateMachine$MessageArgs(boolean, boolean, boolean, boolean, boolean, boolean, boolean, Session, CallAudioModeStateMachine$MessageArgs-IA) { ... }
    public String toString() { ... }

} 