package com.android.server.telecom.callredirection;
import android.telecom.GatewayInfo;
import android.telecom.PhoneAccountHandle;
import android.os.Handler;
import android.content.Context;
import com.android.server.telecom.callredirection.CallRedirectionProcessorHelper;
import com.android.server.telecom.Call;
import com.android.server.telecom.Timeouts$Adapter;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.callredirection.CallRedirectionProcessor$CallRedirectionAttempt;
import android.os.UserHandle;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.PhoneAccountRegistrar;
import java.lang.String;
import android.net.Uri;

public class CallRedirectionProcessor extends Object
{
/*
 * Field Definitions.
 */
      private final boolean mAllowInteractiveResponse;
      private CallRedirectionProcessor$CallRedirectionAttempt mAttempt;
      private final Call mCall;
      private CallRedirectionProcessorHelper mCallRedirectionProcessorHelper;
      private final CallsManager mCallsManager;
      private final Context mContext;
      private Uri mDestinationUri;
      private final Handler mHandler;
      private boolean mIsCarrierRedirectionPending;
      private boolean mIsUserDefinedRedirectionPending;
      private PhoneAccountHandle mPhoneAccountHandle;
      private String mPostDialDigits;
      private Uri mProcessedDestinationUri;
      private GatewayInfo mRedirectionGatewayInfo;
      private boolean mShouldCancelCall;
      private final boolean mSpeakerphoneOn;
      private final TelecomSystem$SyncRoot mTelecomLock;
      private final Timeouts$Adapter mTimeoutsAdapter;
      private String mUiAction;
      private final int mVideoState;
/*
 * Declared Constructors.
 */
    public CallRedirectionProcessor(Context, CallsManager, Call, Uri, PhoneAccountRegistrar, GatewayInfo, boolean, int) { ... }
    static volatile boolean -$$Nest$fgetmAllowInteractiveResponse(CallRedirectionProcessor) { ... }
    static volatile CallRedirectionProcessor$CallRedirectionAttempt -$$Nest$fgetmAttempt(CallRedirectionProcessor) { ... }
    static volatile Call -$$Nest$fgetmCall(CallRedirectionProcessor) { ... }
    static volatile CallRedirectionProcessorHelper -$$Nest$fgetmCallRedirectionProcessorHelper(CallRedirectionProcessor) { ... }
    static volatile CallsManager -$$Nest$fgetmCallsManager(CallRedirectionProcessor) { ... }
    static volatile Context -$$Nest$fgetmContext(CallRedirectionProcessor) { ... }
    static volatile Uri -$$Nest$fgetmDestinationUri(CallRedirectionProcessor) { ... }
    static volatile boolean -$$Nest$fgetmIsCarrierRedirectionPending(CallRedirectionProcessor) { ... }
    static volatile boolean -$$Nest$fgetmIsUserDefinedRedirectionPending(CallRedirectionProcessor) { ... }
    static volatile PhoneAccountHandle -$$Nest$fgetmPhoneAccountHandle(CallRedirectionProcessor) { ... }
    static volatile String -$$Nest$fgetmPostDialDigits(CallRedirectionProcessor) { ... }
    static volatile Uri -$$Nest$fgetmProcessedDestinationUri(CallRedirectionProcessor) { ... }
    static volatile GatewayInfo -$$Nest$fgetmRedirectionGatewayInfo(CallRedirectionProcessor) { ... }
    static volatile boolean -$$Nest$fgetmShouldCancelCall(CallRedirectionProcessor) { ... }
    static volatile boolean -$$Nest$fgetmSpeakerphoneOn(CallRedirectionProcessor) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmTelecomLock(CallRedirectionProcessor) { ... }
    static volatile String -$$Nest$fgetmUiAction(CallRedirectionProcessor) { ... }
    static volatile int -$$Nest$fgetmVideoState(CallRedirectionProcessor) { ... }
    static volatile void -$$Nest$fputmIsCarrierRedirectionPending(CallRedirectionProcessor, boolean) { ... }
    static volatile void -$$Nest$fputmIsUserDefinedRedirectionPending(CallRedirectionProcessor, boolean) { ... }
    static volatile void -$$Nest$fputmPhoneAccountHandle(CallRedirectionProcessor, PhoneAccountHandle) { ... }
    static volatile void -$$Nest$fputmRedirectionGatewayInfo(CallRedirectionProcessor, GatewayInfo) { ... }
    static volatile void -$$Nest$fputmShouldCancelCall(CallRedirectionProcessor, boolean) { ... }
    static volatile void -$$Nest$fputmUiAction(CallRedirectionProcessor, String) { ... }
    static volatile void -$$Nest$mperformCarrierCallRedirection(CallRedirectionProcessor, UserHandle) { ... }
    public boolean canMakeCallRedirectionWithServiceAsUser(UserHandle) { ... }
    public Handler getHandler() { ... }
    public void onCallRedirectionComplete(Call) { ... }
    public void performCallRedirection(UserHandle) { ... }
    private void performCarrierCallRedirection(UserHandle) { ... }
    private void performUserDefinedCallRedirection(UserHandle) { ... }
    private void processTimeoutForCallRedirection(String) { ... }
    public void setCallRedirectionServiceHelper(CallRedirectionProcessorHelper) { ... }

} 