package com.android.server.telecom.callfiltering;
import android.telecom.CallScreeningService$ParcelableCallResponse;
import java.lang.String;
import java.lang.CharSequence;
import com.android.server.telecom.callfiltering.CallFilteringResult;

public static class CallFilteringResult$Builder extends Object
{
/*
 * Field Definitions.
 */
      private int mCallBlockReason;
      private CharSequence mCallScreeningAppName;
      private String mCallScreeningComponentName;
      private CallScreeningService$ParcelableCallResponse mCallScreeningResponse;
      private boolean mContactExists;
      private boolean mDndSuppressed;
      private boolean mIsResponseFromSystemDialer;
      private boolean mShouldAddToCallLog;
      private boolean mShouldAllowCall;
      private boolean mShouldReject;
      private boolean mShouldScreenViaAudio;
      private boolean mShouldShowNotification;
      private boolean mShouldSilence;
/*
 * Declared Constructors.
 */
    public CallFilteringResult$Builder() { ... }
    public CallFilteringResult build() { ... }
    public CallFilteringResult$Builder setCallBlockReason(int) { ... }
    public CallFilteringResult$Builder setCallScreeningAppName(CharSequence) { ... }
    public CallFilteringResult$Builder setCallScreeningComponentName(String) { ... }
    public CallFilteringResult$Builder setCallScreeningResponse(CallScreeningService$ParcelableCallResponse, boolean) { ... }
    public CallFilteringResult$Builder setContactExists(boolean) { ... }
    public CallFilteringResult$Builder setDndSuppressed(boolean) { ... }
    public CallFilteringResult$Builder setShouldAddToCallLog(boolean) { ... }
    public CallFilteringResult$Builder setShouldAllowCall(boolean) { ... }
    public CallFilteringResult$Builder setShouldReject(boolean) { ... }
    public CallFilteringResult$Builder setShouldScreenViaAudio(boolean) { ... }
    public CallFilteringResult$Builder setShouldShowNotification(boolean) { ... }
    public CallFilteringResult$Builder setShouldSilence(boolean) { ... }

} 