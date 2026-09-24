package com.android.server.telecom.voip;
import java.lang.Void;
import java.lang.String;
import com.android.server.telecom.CallsManager;
import java.util.concurrent.CompletionStage;
import android.telecom.CallEndpoint;

public class EndpointChangeTransaction extends VoipCallTransaction
{
/*
 * Field Definitions.
 */
      private static final String TAG;
      private final CallEndpoint mCallEndpoint;
      private final CallsManager mCallsManager;
/*
 * Declared Constructors.
 */
    public EndpointChangeTransaction(CallEndpoint, CallsManager) { ... }
    static volatile String -$$Nest$sfgetTAG() { ... }
    public CompletionStage processTransaction(Void) { ... }

} 