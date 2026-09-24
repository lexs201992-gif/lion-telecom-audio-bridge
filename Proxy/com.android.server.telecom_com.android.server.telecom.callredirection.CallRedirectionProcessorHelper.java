package com.android.server.telecom.callredirection;
import android.telecom.GatewayInfo;
import android.telecom.PhoneAccountHandle;
import android.content.ComponentName;
import android.content.Context;
import com.android.server.telecom.CallsManager;
import android.os.UserHandle;
import com.android.server.telecom.PhoneAccountRegistrar;
import android.content.Intent;
import android.net.Uri;
import java.lang.String;

public class CallRedirectionProcessorHelper extends Object
{
/*
 * Field Definitions.
 */
      private final CallsManager mCallsManager;
      private final Context mContext;
      private final PhoneAccountRegistrar mPhoneAccountRegistrar;
/*
 * Declared Constructors.
 */
    public CallRedirectionProcessorHelper(Context, CallsManager, PhoneAccountRegistrar) { ... }
    protected Uri formatNumberForRedirection(Uri) { ... }
    protected Uri formatNumberToE164(Uri) { ... }
    public ComponentName getCarrierCallRedirectionService(PhoneAccountHandle) { ... }
    protected ComponentName getComponentName(Intent, String) { ... }
    public static GatewayInfo getGatewayInfoFromGatewayUri(String, Uri, Uri, String) { ... }
    public String getPostDialDigits(Uri) { ... }
    public ComponentName getUserDefinedCallRedirectionService(UserHandle) { ... }
    protected Uri removePostDialDigits(Uri) { ... }

} 