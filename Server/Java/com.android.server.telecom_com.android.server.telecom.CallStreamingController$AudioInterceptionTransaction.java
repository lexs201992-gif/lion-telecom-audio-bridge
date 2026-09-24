package com.android.server.telecom;
import java.lang.Void;
import java.util.concurrent.CompletionStage;
import com.android.server.telecom.Call;
import java.util.concurrent.CompletableFuture;
import com.android.server.telecom.TelecomSystem$SyncRoot;

public static class CallStreamingController$AudioInterceptionTransaction extends VoipCallTransaction
{
/*
 * Field Definitions.
 */
      private Call mCall;
      private boolean mEnterInterception;
/*
 * Declared Constructors.
 */
    public CallStreamingController$AudioInterceptionTransaction(Call, boolean, TelecomSystem$SyncRoot) { ... }
    public CompletableFuture processTransaction(Void) { ... }
    public volatile CompletionStage processTransaction(Void) { ... }

} 