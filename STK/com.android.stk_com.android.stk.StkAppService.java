package com.android.stk;
import android.telephony.PreciseCallState;
import com.android.internal.telephony.Phone;
import com.android.unisoc.telephony.RadioInteractorListener;
import android.content.BroadcastReceiver;
import android.os.IBinder;
import java.lang.String;
import com.android.internal.telephony.cat.AppInterface$CommandType;
import android.app.HomeVisibilityListener;
import android.os.Vibrator;
import com.android.internal.telephony.CallManager;
import com.android.stk.TonePlayer;
import android.os.UserManager;
import android.content.Context;
import android.os.Message;
import java.lang.Integer;
import com.android.stk.StkAppService$ServiceHandler;
import com.android.internal.telephony.cat.TextMessage;
import com.android.internal.telephony.cat.CatCmdMessage$BrowserSettings;
import android.telephony.ims.RegistrationManager$RegistrationCallback;
import android.app.NotificationManager;
import android.content.Intent;
import com.android.internal.telephony.Call$State;
import android.widget.Toast;
import java.lang.Object;
import android.app.AlarmManager$OnAlarmListener;
import com.android.internal.telephony.cat.CatCmdMessage;
import com.android.stk.StkAppService$InitiatedByUserAction;
import android.telephony.TelephonyManager;
import android.os.Looper;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.android.internal.telephony.cat.AppInterface;
import com.android.stk.StkAppService$StkContext;
import android.media.Ringtone;
import android.telephony.PhoneStateListener;
import com.android.unisoc.telephony.RadioInteractor;
import com.android.internal.telephony.cat.Menu;

public class StkAppService extends Service
{
/*
 * Field Definitions.
 */
      private static final Integer PLAY_TONE_ONLY;
      private static final Integer PLAY_TONE_WITH_DIALOG;
      private static final long[] VIBRATION_PATTERN;
      static Bitmap idleModeIcon;
      static boolean idleModeIconSelfExplanatory;
      static String idleModeText;
      private final AlarmManager$OnAlarmListener mAlarmListener;
      private long mAlarmTime;
      private CallManager mCM;
      private int mCallState;
      private boolean[] mCallStateListener;
      private Context mContext;
      private int mCurrentUserId;
      private BroadcastReceiver mHomeKeyEventReceiver;
      public static boolean mHomePressedFlg;
      private HomeVisibilityListener mHomeVisibilityListener;
      private final RegistrationManager$RegistrationCallback mImsRegistrationCallback;
      private BroadcastReceiver mLocaleChangeReceiver;
      private NotificationManager mNotificationManager;
      private PhoneStateListener[] mPreciseCallStateListener;
      private RadioInteractor mRadioInteractor;
      private RadioInteractorListener[] mRadioInteractorListener;
      private final BroadcastReceiver mReceiver;
      private boolean[] mRegisterIms;
      private Ringtone mRingtone;
      private volatile StkAppService$ServiceHandler mServiceHandler;
      private volatile Looper mServiceLooper;
      private int mSimCount;
      private int mSlotId;
      private boolean mStartSetUpCallSuccess;
      private StkAppService$StkContext[] mStkContext;
      private AppInterface[] mStkService;
      private TelephonyManager mTm;
      public Toast mToast;
      private TonePlayer mTonePlayer;
      private BroadcastReceiver mUserActivityReceiver;
      private UserManager mUserManager;
      private BroadcastReceiver mUserPresentReceiver;
      private Vibrator mVibrator;
      static StkAppService sInstance;
/*
 * Declared Constructors.
 */
    public StkAppService() { ... }
    static volatile int -$$Nest$fgetmCallState(StkAppService) { ... }
    static volatile Context -$$Nest$fgetmContext(StkAppService) { ... }
    static volatile int -$$Nest$fgetmCurrentUserId(StkAppService) { ... }
    static volatile NotificationManager -$$Nest$fgetmNotificationManager(StkAppService) { ... }
    static volatile StkAppService$ServiceHandler -$$Nest$fgetmServiceHandler(StkAppService) { ... }
    static volatile int -$$Nest$fgetmSimCount(StkAppService) { ... }
    static volatile int -$$Nest$fgetmSlotId(StkAppService) { ... }
    static volatile boolean -$$Nest$fgetmStartSetUpCallSuccess(StkAppService) { ... }
    static volatile StkAppService$StkContext[] -$$Nest$fgetmStkContext(StkAppService) { ... }
    static volatile AppInterface[] -$$Nest$fgetmStkService(StkAppService) { ... }
    static volatile void -$$Nest$fputmAlarmTime(StkAppService, long) { ... }
    static volatile void -$$Nest$fputmCallState(StkAppService, int) { ... }
    static volatile void -$$Nest$fputmCurrentUserId(StkAppService, int) { ... }
    static volatile void -$$Nest$fputmStartSetUpCallSuccess(StkAppService, boolean) { ... }
    static volatile void -$$Nest$maddToMenuSystemOrUpdateLabel(StkAppService) { ... }
    static volatile void -$$Nest$mcallDelayedMsg(StkAppService, int) { ... }
    static volatile void -$$Nest$mcallSetActivityInstMsg(StkAppService, int, int, Object) { ... }
    static volatile void -$$Nest$mcancelIdleText(StkAppService, int) { ... }
    static volatile void -$$Nest$mcancelNotificationOnKeyguard(StkAppService, int) { ... }
    static volatile void -$$Nest$mcancelTimeOut(StkAppService) { ... }
    static volatile void -$$Nest$mcheckForSetupEvent(StkAppService, int, Bundle, int) { ... }
    static volatile void -$$Nest$mcleanUpInstanceStackBySlot(StkAppService, int) { ... }
    static volatile void -$$Nest$mcreateAllChannels(StkAppService) { ... }
    static volatile int -$$Nest$mgetNotificationId(StkAppService, int) { ... }
    static volatile void -$$Nest$mhandleAlphaNotify(StkAppService, Bundle) { ... }
    static volatile void -$$Nest$mhandleCmd(StkAppService, CatCmdMessage, int) { ... }
    static volatile void -$$Nest$mhandleCmdResponse(StkAppService, Bundle, int) { ... }
    static volatile void -$$Nest$mhandleDelayedCmd(StkAppService, int) { ... }
    static volatile void -$$Nest$mhandleHomeKeyPressed(StkAppService, int) { ... }
    static volatile void -$$Nest$mhandleIdleScreen(StkAppService, int) { ... }
    static volatile void -$$Nest$mhandleMultiSimConfigChanged(StkAppService) { ... }
    static volatile void -$$Nest$mhandleSessionEnd(StkAppService, int) { ... }
    static volatile void -$$Nest$mhandleStopTone(StkAppService, Message, int) { ... }
    static volatile boolean -$$Nest$misAllCallsIdle(StkAppService, int) { ... }
    static volatile boolean -$$Nest$misCmdInteractive(StkAppService, CatCmdMessage) { ... }
    static volatile boolean -$$Nest$misEndCallSuccess(StkAppService, PreciseCallState) { ... }
    static volatile boolean -$$Nest$misHoldCallSuccessTimeout(StkAppService, int) { ... }
    static volatile boolean -$$Nest$misPackageInStack(StkAppService, String) { ... }
    static volatile boolean -$$Nest$misSetUpCallAfterHoldCallSuccess(StkAppService, PreciseCallState) { ... }
    static volatile boolean -$$Nest$misSetUpCallSuccess(StkAppService, PreciseCallState) { ... }
    static volatile boolean -$$Nest$misSetupCallSuccessTimeout(StkAppService, int) { ... }
    static volatile void -$$Nest$mlaunchRefreshMsg(StkAppService, int) { ... }
    static volatile void -$$Nest$mlaunchTextDialog(StkAppService, int) { ... }
    static volatile void -$$Nest$mprocessNormalResponse(StkAppService, int) { ... }
    static volatile void -$$Nest$mprocessSetupCallResponse(StkAppService, int, boolean) { ... }
    static volatile void -$$Nest$mrestoreInstanceFromStackBySlot(StkAppService, int) { ... }
    static volatile void -$$Nest$msendResponse(StkAppService, int, int, boolean) { ... }
    static volatile boolean -$$Nest$mstartSetUpCallFail(StkAppService, PreciseCallState) { ... }
    static volatile boolean -$$Nest$mstartSetUpCallSuccess(StkAppService, PreciseCallState) { ... }
    static volatile void -$$Nest$mterminateTone(StkAppService, int) { ... }
    static volatile void -$$Nest$munregisterHomeVisibilityObserver(StkAppService) { ... }
    static volatile void -$$Nest$munregisterUserActivityReceiver(StkAppService) { ... }
    private void addToMenuSystemOrUpdateLabel() { ... }
    private void beep() { ... }
    private void buildNotification(Intent, String, int) { ... }
    private void callDelayedMsg(int) { ... }
    private void callSetActivityInstMsg(int, int, Object) { ... }
    private void cancelIdleText(int) { ... }
    private void cancelNotificationOnKeyguard(int) { ... }
    private void cancelTimeOut() { ... }
    private void checkForSetupEvent(int, Bundle, int) { ... }
    private void cleanUpInstanceStackBySlot(int) { ... }
    private void createAllChannels() { ... }
    private void delayToCheckUserUnlock(int) { ... }
    private void endCall() { ... }
    private boolean findEvent(int, int[]) { ... }
    private void finishToneDialogActivity() { ... }
    static boolean getBooleanCarrierConfig(Context, String, int) { ... }
    private boolean getBooleanCarrierConfig(String, int) { ... }
    private int getCallState(int) { ... }
    private Call$State getCallState(int, boolean) { ... }
    private int getFlagActivityNoUserAction(StkAppService$InitiatedByUserAction, int) { ... }
    static StkAppService getInstance() { ... }
    private String getItemName(int, int) { ... }
    synchronized Menu getMainMenu(int) { ... }
    synchronized Menu getMenu(int) { ... }
    private int getNotificationId(int) { ... }
    private int getNotificationId(int, int) { ... }
    private Phone getPhone(int) { ... }
    private PhoneStateListener getPhoneStateListener(int) { ... }
    private RadioInteractorListener getRadioInteractorListener(int) { ... }
    synchronized StkAppService$StkContext getStkContext(int) { ... }
    private void handleAlphaNotify(Bundle) { ... }
    private void handleCmd(CatCmdMessage, int) { ... }
    private void handleCmdResponse(Bundle, int) { ... }
    private void handleDelayedCmd(int) { ... }
    private void handleHomeKeyPressed(int) { ... }
    private void handleIdleScreen(int) { ... }
    private synchronized void handleMultiSimConfigChanged() { ... }
    private void handlePlayTone(int) { ... }
    private void handleSessionEnd(int) { ... }
    private void handleStopTone(Message, int) { ... }
    public boolean hasVowifiConnected() { ... }
    synchronized void indicateMenuVisibility(boolean, int) { ... }
     boolean isAirPlaneModeOn() { ... }
    private boolean isAllCallsIdle(int) { ... }
     boolean isAllOtherCardsAbsent(int) { ... }
    private boolean isBackgroundCallEnd(PreciseCallState) { ... }
    private boolean isBusyOnCall() { ... }
    private boolean isCmdInteractive(CatCmdMessage) { ... }
    synchronized boolean isDialogPending(int) { ... }
    private boolean isEndCallSuccess(PreciseCallState) { ... }
    private boolean isForegroundCallEnd(PreciseCallState) { ... }
    private boolean isHoldCallSuccessTimeout(int) { ... }
    synchronized boolean isInputPending(int) { ... }
    synchronized boolean isMainMenuAvailable(int) { ... }
     boolean isMainMenuExsit(int) { ... }
    synchronized boolean isMenuPending(int) { ... }
     boolean isNoTonePlaying() { ... }
    private boolean isPackageInStack(String) { ... }
    private boolean isRingingCallEnd(PreciseCallState) { ... }
     boolean isScreenIdle() { ... }
    private boolean isScreenLocked() { ... }
    private boolean isScreenSecure() { ... }
    private boolean isSetUpCallAfterHoldCallSuccess(PreciseCallState) { ... }
    private boolean isSetUpCallSuccess(PreciseCallState) { ... }
    private boolean isSetupCallSuccessTimeout(int) { ... }
     boolean isShowDoubleApp() { ... }
     boolean isTopOfStack() { ... }
     boolean isUiccReady(Context) { ... }
     boolean isUiccReady(Context, int) { ... }
    private boolean isUrlAvailableToLaunchBrowser(CatCmdMessage$BrowserSettings) { ... }
    public boolean isVowifiConnected(int) { ... }
    private void launchBrowser(CatCmdMessage$BrowserSettings) { ... }
    private void launchCallMsg(int) { ... }
    private void launchConfirmationDialog(TextMessage, int) { ... }
    private void launchEventMessage(int) { ... }
    private void launchEventMessage(int, TextMessage) { ... }
    private void launchIdleText(int) { ... }
    private void launchInputActivity(int) { ... }
    private void launchMenuActivity(Menu, int) { ... }
    private void launchNotificationOnKeyguard(Intent, int, String) { ... }
    private void launchOpenChannelDialog(int) { ... }
    private void launchRefreshMsg(int) { ... }
    private void launchTextDialog(int) { ... }
    private void notifyUserIfNecessary(Intent, int, String) { ... }
    public IBinder onBind(Intent) { ... }
    public void onCreate() { ... }
    public void onDestroy() { ... }
    public void onStart(Intent, int) { ... }
    private void playTone(boolean, int) { ... }
    private void processEndCall(TextMessage, int) { ... }
    private void processEndCallResponse(int) { ... }
    private void processHoldCall(TextMessage, int) { ... }
    private void processHoldCallResponse(int) { ... }
    public void processNetworkAbnormalResponse(int) { ... }
    private void processNoCall(TextMessage, int) { ... }
    private void processNoCallResponse(int) { ... }
    private void processNormalResponse(int) { ... }
    private void processSetupCall(TextMessage, int) { ... }
    private void processSetupCallResponse(int, boolean) { ... }
    private void processSetupCallResponseMessage(int) { ... }
    private void processTerminalAbnormalResponse(int) { ... }
    private void registerEvents(int) { ... }
    private synchronized void registerHomeVisibilityObserver() { ... }
    private synchronized void registerLocaleChangeReceiver() { ... }
    private synchronized void registerUserActivityReceiver() { ... }
    private synchronized void registerUserPresentReceiver() { ... }
    private boolean removeMenu(int) { ... }
    private void removeSetUpEvent(int, int) { ... }
    private void replaceEventList(int) { ... }
    private void restoreInstanceFromStackBySlot(int) { ... }
    public void run() { ... }
    private void sendResponse(int, int, boolean) { ... }
    public void sendResponse(Bundle, int) { ... }
    private void sendScreenBusyResponse(int) { ... }
    private void sendSetUpEventResponse(int, byte[], int) { ... }
    synchronized void setDisplayTextDlgVisibility(boolean, int) { ... }
    public void setPreciseCallStateListener(int) { ... }
     void setmHomeKeyEvent(boolean) { ... }
    private void showIconToast(TextMessage) { ... }
    public void startActivity(Intent) { ... }
    private boolean startSetUpCallFail(PreciseCallState) { ... }
    private boolean startSetUpCallSuccess(PreciseCallState) { ... }
    private void startTimeOut() { ... }
    private void terminateTone(int) { ... }
    public void tryRegisterIms(int) { ... }
    private boolean uninstallIfUnnecessary() { ... }
    private void unregisterEvent(int, int) { ... }
    private synchronized void unregisterHomeVisibilityObserver() { ... }
    private void unregisterHomeVisibilityObserver(AppInterface$CommandType, int) { ... }
    private synchronized void unregisterLocaleChangeReceiver() { ... }
    private synchronized void unregisterUserActivityReceiver() { ... }
    private synchronized void unregisterUserPresentReceiver(int) { ... }
    private void waitForLooper() { ... }
    private void wakeUp() { ... }

} 