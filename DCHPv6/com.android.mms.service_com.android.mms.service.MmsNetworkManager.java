package com.android.mms.service;
import java.lang.Runnable;
import com.android.mms.service.MmsNetworkManager$Dependencies;
import android.os.Handler;
import android.net.NetworkRequest;
import android.net.ConnectivityManager;
import android.content.Context;
import com.android.mms.service.exception.MmsNetworkException;
import com.android.mms.service.MmsNetworkManager$EventHandler;
import android.content.BroadcastReceiver;
import com.android.mms.service.MmsHttpClient;
import android.net.Network;
import java.lang.String;
import android.net.ConnectivityManager$NetworkCallback;
import com.unisoc.mms.service.UniAbsVowifiUtils;

public class MmsNetworkManager extends Object
{
/*
 * Field Definitions.
 */
      private final BroadcastReceiver mCarrierConfigChangedReceiver;
      private volatile ConnectivityManager mConnectivityManager;
      private final Context mContext;
      private final MmsNetworkManager$Dependencies mDeps;
      private MmsNetworkManager$EventHandler mEventHandler;
      private MmsHttpClient mMmsHttpClient;
      private int mMmsRequestCount;
      private Network mNetwork;
      private ConnectivityManager$NetworkCallback mNetworkCallback;
      private final Runnable mNetworkReleaseTask;
      private int mNetworkReleaseTimeoutMillis;
      private final NetworkRequest mNetworkRequest;
      private int mPhoneId;
      private final Handler mReleaseHandler;
      private final BroadcastReceiver mSimCardStateChangedReceiver;
      private boolean mSimCardStateChangedReceiverRegistered;
      private final int mSubId;
      private UniAbsVowifiUtils mUniAbsVowifiUtils;
/*
 * Declared Constructors.
 */
    public MmsNetworkManager(Context, int) { ... }
    protected MmsNetworkManager(Context, int, MmsNetworkManager$Dependencies) { ... }
    static volatile MmsNetworkManager$EventHandler -$$Nest$fgetmEventHandler(MmsNetworkManager) { ... }
    static volatile int -$$Nest$fgetmMmsRequestCount(MmsNetworkManager) { ... }
    static volatile Network -$$Nest$fgetmNetwork(MmsNetworkManager) { ... }
    static volatile ConnectivityManager$NetworkCallback -$$Nest$fgetmNetworkCallback(MmsNetworkManager) { ... }
    static volatile int -$$Nest$fgetmPhoneId(MmsNetworkManager) { ... }
    static volatile int -$$Nest$fgetmSubId(MmsNetworkManager) { ... }
    static volatile UniAbsVowifiUtils -$$Nest$fgetmUniAbsVowifiUtils(MmsNetworkManager) { ... }
    static volatile void -$$Nest$fputmMmsHttpClient(MmsNetworkManager, MmsHttpClient) { ... }
    static volatile void -$$Nest$fputmNetwork(MmsNetworkManager, Network) { ... }
    static volatile void -$$Nest$fputmUniAbsVowifiUtils(MmsNetworkManager, UniAbsVowifiUtils) { ... }
    static volatile ConnectivityManager -$$Nest$mgetConnectivityManager(MmsNetworkManager) { ... }
    static volatile void -$$Nest$mhandleCarrierConfigChanged(MmsNetworkManager) { ... }
    static volatile void -$$Nest$mreleaseRequestLocked(MmsNetworkManager, ConnectivityManager$NetworkCallback) { ... }
    static volatile String -$$Nest$smsimStateString(int) { ... }
    public void acquireNetwork(String)  throws MmsNetworkException{ ... }
    public String getApnName() { ... }
    private ConnectivityManager getConnectivityManager() { ... }
    protected int getNetworkReleaseTimeoutMillis() { ... }
    public MmsHttpClient getOrCreateHttpClient() { ... }
    private void handleCarrierConfigChanged() { ... }
    public void releaseNetwork(String, boolean) { ... }
    private void releaseRequestLocked(ConnectivityManager$NetworkCallback) { ... }
    private void resetLocked() { ... }
    private static String simStateString(int) { ... }
    private void startNewNetworkRequestLocked(int) { ... }

} 