package com.android.server.telecom;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.Call;
import com.android.server.telecom.CallsManager$PendingAction;
import com.android.server.telecom.ConnectionServiceFocusManager$CallFocus;
import android.os.OutcomeReceiver;

public class CallsManager$TransactionalFocusRequestCallback extends Object
{
/*
 * Field Definitions.
 */
      private OutcomeReceiver mCallback;
      private CallsManager$PendingAction mPendingAction;
      private int mPreviousCallState;
      private Call mTargetCallFocus;
      final CallsManager this$0;
/*
 * Declared Constructors.
 */
     CallsManager$TransactionalFocusRequestCallback(CallsManager, CallsManager$PendingAction, int, Call, OutcomeReceiver) { ... }
    public void onRequestFocusDone(ConnectionServiceFocusManager$CallFocus) { ... }

} 