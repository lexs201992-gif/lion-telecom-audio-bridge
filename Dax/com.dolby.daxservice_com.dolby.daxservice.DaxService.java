package com.dolby.daxservice;
import android.media.IAudioService;
import com.dolby.daxservice.DolbyHeadTrackingHelper;
import android.os.Handler;
import android.os.IBinder;
import android.content.Context;
import vendor.dolby.hardware.dms.V2_0.IDmsCallbacks;
import com.dolby.daxservice.AudioServerWatchDog;
import com.dolby.daxservice.DaxService$SettingObserver;
import com.dolby.daxservice.DefaultValues;
import android.os.IHwBinder$DeathRecipient;
import com.dolby.dax.DolbyAudioEffect;
import android.content.BroadcastReceiver;
import android.content.Intent;
import vendor.dolby.hardware.dms.V2_0.IDms;

public class DaxService extends Service
{
/*
 * Field Definitions.
 */
      private long DOLBY_SERVICE_RECONNECT_DELAY;
      private int MAX_DOLBY_SERVICE_CONNECT_RETRY_TIMES;
      private AudioServerWatchDog mAudioServerWatchDog;
      private IAudioService mAudioService;
      private static Context mContext;
      private DefaultValues mDefaultValueConfiguration;
      private IDms mDms;
      private IDmsCallbacks mDmsClient;
      private IHwBinder$DeathRecipient mDmsDeathRecipient;
      private DolbyAudioEffect mDolbyAudio;
      private DolbyHeadTrackingHelper mDolbyHeadTrackingHelper;
      private static Handler mHandler;
      private BroadcastReceiver mIntentReceiver;
      private int mServiceConnectRetryTimes;
      private DaxService$SettingObserver mSettingObserver;
      private int mUserId;
/*
 * Declared Constructors.
 */
    public DaxService() { ... }
    static volatile long -$$Nest$fgetDOLBY_SERVICE_RECONNECT_DELAY(DaxService) { ... }
    static volatile int -$$Nest$fgetMAX_DOLBY_SERVICE_CONNECT_RETRY_TIMES(DaxService) { ... }
    static volatile IAudioService -$$Nest$fgetmAudioService(DaxService) { ... }
    static volatile DefaultValues -$$Nest$fgetmDefaultValueConfiguration(DaxService) { ... }
    static volatile IDms -$$Nest$fgetmDms(DaxService) { ... }
    static volatile DolbyAudioEffect -$$Nest$fgetmDolbyAudio(DaxService) { ... }
    static volatile DolbyHeadTrackingHelper -$$Nest$fgetmDolbyHeadTrackingHelper(DaxService) { ... }
    static volatile int -$$Nest$fgetmServiceConnectRetryTimes(DaxService) { ... }
    static volatile int -$$Nest$fgetmUserId(DaxService) { ... }
    static volatile void -$$Nest$fputmDolbyAudio(DaxService, DolbyAudioEffect) { ... }
    static volatile void -$$Nest$fputmServiceConnectRetryTimes(DaxService, int) { ... }
    static volatile void -$$Nest$fputmUserId(DaxService, int) { ... }
    static volatile boolean -$$Nest$minitDolbyHidlClient(DaxService) { ... }
    static volatile void -$$Nest$msetDaxSettingsForUser(DaxService) { ... }
    static volatile Context -$$Nest$sfgetmContext() { ... }
    static volatile Handler -$$Nest$sfgetmHandler() { ... }
    static volatile int -$$Nest$smbyteArrayToInt32(byte[], int) { ... }
    private static int byteArrayToInt32(byte[], int) { ... }
    public void init(Context) { ... }
    private void initDaxSettings() { ... }
    private boolean initDolbyHidlClient() { ... }
    public IBinder onBind(Intent) { ... }
    public void onCreate() { ... }
    public void onDestroy() { ... }
    public int onStartCommand(Intent, int, int) { ... }
    public void release() { ... }
    private void setDaxSettingsForUser() { ... }

} 