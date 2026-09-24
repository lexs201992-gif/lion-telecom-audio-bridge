package com.android.server.telecom.callredirection;
import java.lang.String;
import android.content.ComponentName;
import com.android.server.telecom.callredirection.CallRedirectionProcessor;
import android.os.UserHandle;
import com.android.server.telecom.callredirection.CallRedirectionProcessor$CallRedirectionAttempt-IA;
import android.content.ServiceConnection;
import com.android.internal.telecom.ICallRedirectionService;

private class CallRedirectionProcessor$CallRedirectionAttempt extends Object
{
/*
 * Field Definitions.
 */
      private final ComponentName mComponentName;
      private ServiceConnection mConnection;
      private ICallRedirectionService mService;
      private final String mServiceType;
      final CallRedirectionProcessor this$0;
/*
 * Declared Constructors.
 */
    private CallRedirectionProcessor$CallRedirectionAttempt(CallRedirectionProcessor, ComponentName, String) { ... }
     CallRedirectionProcessor$CallRedirectionAttempt(CallRedirectionProcessor, ComponentName, String, CallRedirectionProcessor$CallRedirectionAttempt-IA) { ... }
    static volatile ComponentName -$$Nest$fgetmComponentName(CallRedirectionProcessor$CallRedirectionAttempt) { ... }
    static volatile String -$$Nest$fgetmServiceType(CallRedirectionProcessor$CallRedirectionAttempt) { ... }
    static volatile void -$$Nest$mfinishCallRedirection(CallRedirectionProcessor$CallRedirectionAttempt) { ... }
    static volatile void -$$Nest$monServiceBound(CallRedirectionProcessor$CallRedirectionAttempt, ICallRedirectionService) { ... }
    static volatile void -$$Nest$mprocess(CallRedirectionProcessor$CallRedirectionAttempt, UserHandle) { ... }
    private void finishCallRedirection() { ... }
    public void notifyTimeout() { ... }
    private void onServiceBound(ICallRedirectionService) { ... }
    private void process(UserHandle) { ... }

} 