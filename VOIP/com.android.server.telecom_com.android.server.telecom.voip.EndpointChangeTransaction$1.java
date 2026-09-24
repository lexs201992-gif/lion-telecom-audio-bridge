package com.android.server.telecom.voip;
import android.os.Handler;
import android.os.Bundle;
import com.android.server.telecom.voip.EndpointChangeTransaction;
import java.util.concurrent.CompletableFuture;

 class EndpointChangeTransaction$1 extends ResultReceiver
{
/*
 * Field Definitions.
 */
      final EndpointChangeTransaction this$0;
      final CompletableFuture val$future;
/*
 * Declared Constructors.
 */
     EndpointChangeTransaction$1(EndpointChangeTransaction, Handler, CompletableFuture) { ... }
    protected void onReceiveResult(int, Bundle) { ... }

} 