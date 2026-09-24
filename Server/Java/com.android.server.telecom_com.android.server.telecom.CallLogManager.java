package com.android.server.telecom;
import com.android.server.telecom.CallLogManager$AddCallArgs;
import com.android.server.telecom.CallLogManager$LogCallCompletedListener;
import android.os.PersistableBundle;
import android.telecom.PhoneAccountHandle;
import android.content.Context;
import com.android.server.telecom.Call;
import com.android.server.telecom.MissedCallNotifier;
import java.lang.Object;
import android.location.Country;
import com.android.server.telecom.callfiltering.CallFilteringResult;
import com.unisoc.server.telecom.UniCallLogManager;
import android.os.AsyncTask;
import com.android.server.telecom.PhoneAccountRegistrar;
import android.telephony.CarrierConfigManager;
import java.lang.String;

public final class CallLogManager extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private static final String TAG;
      private final CarrierConfigManager mCarrierConfigManager;
      private final Context mContext;
      private String mCurrentCountryIso;
      private Object mLock;
      private final MissedCallNotifier mMissedCallNotifier;
      private final PhoneAccountRegistrar mPhoneAccountRegistrar;
      private final UniCallLogManager mUniCallLogManager;
/*
 * Declared Constructors.
 */
    public CallLogManager(Context, PhoneAccountRegistrar, MissedCallNotifier) { ... }
    public static void $r8$lambda$CxBo0Kd-1kDTiRjK1gZLLtYP2bE(CallLogManager, Country) { ... }
    public static boolean $r8$lambda$Zqi8v2Q426vtrghaAK3t8zW8MPQ(String, String) { ... }
    static volatile MissedCallNotifier -$$Nest$fgetmMissedCallNotifier(CallLogManager) { ... }
    static volatile String -$$Nest$sfgetTAG() { ... }
    private static int getCallFeatures(int, boolean, boolean, boolean, boolean, boolean, boolean) { ... }
    public String getCountryIso() { ... }
    private String getCountryIsoFromCountry(Country) { ... }
    private String getLogNumber(Call) { ... }
    private boolean isUnloggableNumber(String, PersistableBundle) { ... }
    private void lambda$getCountryIso$1(Country) { ... }
    private static boolean lambda$isUnloggableNumber$0(String, String) { ... }
    public void logCall(Call, int, CallLogManager$LogCallCompletedListener, CallFilteringResult) { ... }
     void logCall(Call, int, boolean, CallFilteringResult) { ... }
    public AsyncTask logCallAsync(CallLogManager$AddCallArgs) { ... }
     boolean okayToLogCall(PhoneAccountHandle, String, boolean) { ... }
    public void onCallStateChanged(Call, int, int) { ... }
    private void sendAddCallBroadcast(int, long) { ... }
    public boolean shouldLogDisconnectedCall(Call, int, boolean) { ... }

} 