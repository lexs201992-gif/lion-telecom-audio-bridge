package com.android.server.telecom;
import com.android.server.telecom.NewOutgoingCallIntentBroadcaster$CallDisposition;
import android.telecom.GatewayInfo;
import com.android.server.telecom.PhoneNumberUtilsAdapter;
import com.android.server.telecom.DefaultDialerCache;
import android.content.Context;
import com.android.server.telecom.Call;
import android.os.Bundle;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.MmiUtils;
import android.os.UserHandle;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import android.content.Intent;
import android.net.Uri;
import java.lang.String;

public class NewOutgoingCallIntentBroadcaster extends Object
{
/*
 * Field Definitions.
 */
      private Call mCall;
      private final CallsManager mCallsManager;
      private final Context mContext;
      private final DefaultDialerCache mDefaultDialerCache;
      private final Intent mIntent;
      private final boolean mIsDefaultOrSystemPhoneApp;
      private final TelecomSystem$SyncRoot mLock;
      private final MmiUtils mMmiUtils;
      private final PhoneNumberUtilsAdapter mPhoneNumberUtilsAdapter;
/*
 * Declared Constructors.
 */
    public NewOutgoingCallIntentBroadcaster(Context, CallsManager, Intent, PhoneNumberUtilsAdapter, boolean, DefaultDialerCache, MmiUtils) { ... }
    static volatile Call -$$Nest$fgetmCall(NewOutgoingCallIntentBroadcaster) { ... }
    static volatile Context -$$Nest$fgetmContext(NewOutgoingCallIntentBroadcaster) { ... }
    static volatile Intent -$$Nest$fgetmIntent(NewOutgoingCallIntentBroadcaster) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmLock(NewOutgoingCallIntentBroadcaster) { ... }
    static volatile PhoneNumberUtilsAdapter -$$Nest$fgetmPhoneNumberUtilsAdapter(NewOutgoingCallIntentBroadcaster) { ... }
    static volatile long -$$Nest$mgetDisconnectTimeoutFromApp(NewOutgoingCallIntentBroadcaster, Bundle, long) { ... }
    static volatile boolean -$$Nest$misEmergencyNumber(NewOutgoingCallIntentBroadcaster, String) { ... }
    static volatile void -$$Nest$mplaceOutgoingCallImmediately(NewOutgoingCallIntentBroadcaster, Call, Uri, GatewayInfo, boolean, int) { ... }
    private void broadcastIntent(Intent, String, boolean, UserHandle) { ... }
    private String calculateCallIntentAction(Intent, boolean) { ... }
    public void checkAndCopyProviderExtras(Intent, Intent) { ... }
    public NewOutgoingCallIntentBroadcaster$CallDisposition evaluateCall() { ... }
    private long getDisconnectTimeoutFromApp(Bundle, long) { ... }
    public static GatewayInfo getGateWayInfoFromIntent(Intent, Uri) { ... }
    private static Uri getGatewayUriFromString(String) { ... }
    private String getNumberFromCallIntent(Intent) { ... }
    private boolean hasGatewayProviderExtras(Intent) { ... }
    private boolean isEmergencyNumber(String) { ... }
    private void launchSystemDialer(Uri) { ... }
    private void placeOutgoingCallImmediately(Call, Uri, GatewayInfo, boolean, int) { ... }
    public void processCall(Call, NewOutgoingCallIntentBroadcaster$CallDisposition) { ... }

} 