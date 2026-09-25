package com.android.mms.service;
import com.android.internal.telephony.IMms$Stub;
import java.util.Queue;
import com.android.mms.service.metrics.MmsMetricsCollector;
import android.telephony.TelephonyManager;
import com.google.android.mms.pdu.GenericPdu;
import android.os.IBinder;
import android.content.ContentValues;
import com.android.mms.service.MmsRequest;
import android.os.Bundle;
import java.util.concurrent.ExecutorService;
import com.android.mms.service.MmsNetworkManager;
import com.unisoc.mms.service.UniAbsMmsUtils;
import android.util.SparseArray;
import android.content.Intent;
import java.lang.String;
import android.net.Uri;

public class MmsService extends Service
{
/*
 * Field Definitions.
 */
      private int mCurrentSubId;
      private TelephonyManager mDefaultTelephonyManager;
      private static MmsMetricsCollector mMmsMetricsCollector;
      private final SparseArray mNetworkManagerCache;
      private final ExecutorService mPduTransferExecutor;
      private final Queue mPendingSimRequestQueue;
      private int mRunningRequestCount;
      private final ExecutorService[] mRunningRequestExecutors;
      private IMms$Stub mStub;
      private final SparseArray mTelephonyManagerCache;
      private UniAbsMmsUtils mUniAbsMmsUtils;
/*
 * Declared Constructors.
 */
    public MmsService() { ... }
    static volatile int -$$Nest$fgetmRunningRequestCount(MmsService) { ... }
    static volatile UniAbsMmsUtils -$$Nest$fgetmUniAbsMmsUtils(MmsService) { ... }
    static volatile void -$$Nest$fputmRunningRequestCount(MmsService, int) { ... }
    static volatile Uri -$$Nest$maddMmsDraft(MmsService, Uri, int, String) { ... }
    static volatile Uri -$$Nest$maddSmsDraft(MmsService, String, String, String) { ... }
    static volatile boolean -$$Nest$marchiveConversation(MmsService, long, boolean) { ... }
    static volatile boolean -$$Nest$mcheckPermIfCtaFeatureEnabled(MmsService, String) { ... }
    static volatile void -$$Nest$menforceSystemUid(MmsService) { ... }
    static volatile String -$$Nest$mgetCarrierMessagingServicePackageIfExists(MmsService, int) { ... }
    static volatile MmsNetworkManager -$$Nest$mgetNetworkManager(MmsService, int) { ... }
    static volatile TelephonyManager -$$Nest$mgetTelephonyManager(MmsService, int) { ... }
    static volatile Uri -$$Nest$mimportMms(MmsService, Uri, String, long, boolean, boolean, int, String) { ... }
    static volatile Uri -$$Nest$mimportSms(MmsService, String, int, String, long, boolean, boolean, String) { ... }
    static volatile Bundle -$$Nest$mloadMmsConfig(MmsService, int) { ... }
    static volatile void -$$Nest$mmovePendingSimRequestsToRunningSynchronized(MmsService) { ... }
    static volatile void -$$Nest$msendSettingsIntentForFailedMms(MmsService, boolean, int) { ... }
    static volatile boolean -$$Nest$mupdateMessageStatus(MmsService, Uri, ContentValues) { ... }
    static volatile MmsMetricsCollector -$$Nest$sfgetmMmsMetricsCollector() { ... }
    static volatile boolean -$$Nest$smisSmsMmsContentUri(Uri) { ... }
    private Uri addMmsDraft(Uri, int, String) { ... }
    public void addSimRequest(MmsRequest) { ... }
    private Uri addSmsDraft(String, String, String) { ... }
    private void addToRunningRequestQueueSynchronized(MmsRequest) { ... }
    private boolean archiveConversation(long, boolean) { ... }
    private boolean checkPermIfCtaFeatureEnabled(String) { ... }
    private void enforceSystemUid() { ... }
    static String formatCrossStackMessageId(long) { ... }
    public boolean getAutoPersistingPref() { ... }
    private String getCarrierMessagingServicePackageIfExists(int) { ... }
    private MmsNetworkManager getNetworkManager(int) { ... }
    private TelephonyManager getTelephonyManager(int) { ... }
    private int getUidByPkgName(String) { ... }
    private Uri importMms(Uri, String, long, boolean, boolean, int, String) { ... }
    private Uri importSms(String, int, String, long, boolean, boolean, String) { ... }
    private static boolean isSmsMmsContentUri(Uri) { ... }
    private Bundle loadMmsConfig(int) { ... }
    private void movePendingSimRequestsToRunningSynchronized() { ... }
    public IBinder onBind(Intent) { ... }
    public void onCreate() { ... }
    public void onDestroy() { ... }
    private static GenericPdu parsePduForAnyCarrier(byte[]) { ... }
    public int readPduBytesFromContentUri(Uri, byte[], int) { ... }
    public byte[] readPduFromContentUri(Uri, int, int) { ... }
    private void sendSettingsIntentForFailedMms(boolean, int) { ... }
    private boolean updateMessageStatus(Uri, ContentValues) { ... }
    public boolean writePduToContentUri(Uri, byte[], int) { ... }

} 