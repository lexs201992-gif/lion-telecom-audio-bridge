package com.android.server.telecom;
import com.android.server.telecom.HeadsetMediaButtonFactory;
import android.os.UserHandle;
import android.telecom.VideoProfile;
import java.lang.Void;
import com.android.server.telecom.DtmfLocalTonePlayer;
import android.content.Context;
import com.android.server.telecom.Ringer;
import com.android.server.telecom.AnomalyReporterAdapter;
import android.util.Pair;
import com.android.server.telecom.MmiUtils;
import java.util.concurrent.CompletionStage;
import com.android.server.telecom.CallLogManager;
import com.unisoc.server.telecom.UniCallsManager;
import com.android.server.telecom.ui.CallStreamingNotification;
import com.android.server.telecom.PhoneNumberUtilsAdapter;
import com.android.server.telecom.ui.IncomingCallNotifier;
import android.telecom.CallAudioState;
import com.android.server.telecom.InCallWakeLockControllerFactory;
import com.android.server.telecom.CallAudioRouteStateMachine$Factory;
import com.android.server.telecom.voip.TransactionManager;
import com.android.server.telecom.MissedCallNotifier;
import android.net.Uri;
import android.os.ResultReceiver;
import android.telecom.Logging.Session;
import com.android.server.telecom.HeadsetMediaButton;
import android.telecom.CallEndpoint;
import com.android.server.telecom.CallEndpointControllerFactory;
import com.android.server.telecom.PhoneAccountRegistrar$Listener;
import com.android.server.telecom.EmergencyCallDiagnosticLogger;
import com.android.server.telecom.ConnectionServiceFocusManager$ConnectionServiceFocusManagerFactory;
import java.util.concurrent.Executor;
import java.lang.Object;
import com.android.server.telecom.ProximitySensorManagerFactory;
import com.android.server.telecom.WiredHeadsetManager;
import android.os.UserManager;
import com.android.server.telecom.CallAudioManager$AudioServiceFactory;
import com.android.server.telecom.callfiltering.IncomingCallFilterGraph;
import com.android.server.telecom.CallAudioManager;
import android.os.OutcomeReceiver;
import com.android.server.telecom.RoleManagerAdapter;
import com.android.server.telecom.ConnectionServiceWrapper;
import com.android.server.telecom.CallEndpointController;
import com.android.server.telecom.CallAudioModeStateMachine$Factory;
import com.android.server.telecom.callfiltering.BlockedNumbersAdapter;
import com.android.server.telecom.CallStreamingController;
import android.content.ComponentName;
import com.android.server.telecom.callfiltering.CallFilteringResult;
import android.media.AudioManager;
import android.media.AudioAttributes;
import com.android.server.telecom.Call;
import com.android.server.telecom.SystemStateHelper;
import java.lang.Throwable;
import android.telecom.PhoneAccount;
import com.android.server.telecom.InCallControllerFactory;
import com.android.server.telecom.CallRecordingTonePlayer;
import com.android.server.telecom.CallAnomalyWatchdog;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import android.telecom.GatewayInfo;
import android.os.PersistableBundle;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import android.telecom.DisconnectCause;
import com.android.server.telecom.EmergencyCallHelper;
import com.android.server.telecom.ConnectionServiceRepository;
import com.android.server.telecom.ui.DisconnectedCallNotifier;
import android.telecom.ParcelableConnection;
import com.android.server.telecom.Timeouts$Adapter;
import android.telecom.ParcelableConference;
import java.util.Collection;
import com.android.server.telecom.DefaultDialerCache;
import android.os.Bundle;
import com.android.server.telecom.PhoneStateBroadcaster;
import java.lang.CharSequence;
import android.telecom.Logging.Runnable;
import com.android.server.telecom.CallDiagnosticServiceController;
import com.android.server.telecom.stats.CallFailureCause;
import com.android.server.telecom.ui.ToastFactory;
import com.android.server.telecom.CallsManager$CallsManagerListener;
import com.android.server.telecom.bluetooth.BluetoothStateReceiver;
import java.util.LinkedList;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.telecom.voip.VoipCallMonitor;
import com.android.server.telecom.ui.DisconnectedCallNotifier$Factory;
import com.android.server.telecom.Ringer$AccessibilityManagerAdapter;
import com.android.server.telecom.ClockProxy;
import com.android.server.telecom.TtyManager;
import com.android.server.telecom.InCallTonePlayer$ToneGeneratorFactory;
import com.android.server.telecom.PhoneAccountRegistrar;
import com.android.server.telecom.ConnectionServiceFocusManager;
import com.android.server.telecom.ui.AudioProcessingNotification;
import com.android.server.telecom.CallerInfoLookupHelper;
import com.android.server.telecom.ConnectionServiceFocusManager$CallsManagerRequester;
import android.telephony.TelephonyManager;
import java.util.Map;
import com.android.server.telecom.InCallWakeLockController;
import com.android.server.telecom.InCallController;
import java.lang.String;
import android.os.Handler;
import android.content.Intent;
import com.android.server.telecom.RespondViaSmsManager;
import java.util.UUID;
import com.android.server.telecom.AsyncRingtonePlayer;
import android.content.BroadcastReceiver;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.DockManager;
import java.util.List;
import com.android.server.telecom.ProximitySensorManager;
import android.telecom.PhoneAccountHandle;
import com.android.server.telecom.InCallTonePlayer$MediaPlayerAdapter;
import java.util.Set;

public class CallsManager extends Call$ListenerBase
{
/*
 * Field Definitions.
 */
      private static final int[] ANY_CALL_STATE;
      public static final UUID CALL_REMOVAL_EXECUTION_ERROR_UUID;
      public static final UUID EMERGENCY_CALL_ABORTED_NO_PHONE_ACCOUNTS_ERROR_UUID;
      public static final UUID EMERGENCY_CALL_DISCONNECTED_BEFORE_BEING_ADDED_ERROR_UUID;
      public static final UUID EXCEPTION_RETRIEVING_PHONE_ACCOUNTS_EMERGENCY_ERROR_UUID;
      public static final UUID EXCEPTION_RETRIEVING_PHONE_ACCOUNTS_ERROR_UUID;
      public static final UUID EXCEPTION_WHILE_ESTABLISHING_CONNECTION_ERROR_UUID;
      private static final int[] LIVE_CALL_STATES;
      public static final UUID LIVE_CALL_STUCK_CONNECTING_EMERGENCY_ERROR_UUID;
      public static final UUID LIVE_CALL_STUCK_CONNECTING_ERROR_UUID;
      public static final int[] ONGOING_CALL_STATES;
      private static final int[] OUTGOING_CALL_STATES;
      private AnomalyReporterAdapter mAnomalyReporter;
      private final Executor mAsyncTaskExecutor;
      private final BlockedNumbersAdapter mBlockedNumbersAdapter;
      private final BluetoothRouteManager mBluetoothRouteManager;
      private final CallAnomalyWatchdog mCallAnomalyWatchdog;
      private final CallAudioManager mCallAudioManager;
      private final CallDiagnosticServiceController mCallDiagnosticServiceController;
      private final CallEndpointController mCallEndpointController;
      private int mCallId;
      private final CallLogManager mCallLogManager;
      private final CallRecordingTonePlayer mCallRecordingTonePlayer;
      private final CallStreamingController mCallStreamingController;
      private final CallStreamingNotification mCallStreamingNotification;
      private final CallerInfoLookupHelper mCallerInfoLookupHelper;
      private final Set mCalls;
      private boolean mCanAddCall;
      private final ClockProxy mClockProxy;
       boolean mConfigorBlockChangedFlag;
      private final ConnectionServiceRepository mConnectionServiceRepository;
      private final ConnectionServiceFocusManager mConnectionSvrFocusMgr;
      private final Context mContext;
      private UserHandle mCurrentUserHandle;
      private final DefaultDialerCache mDefaultDialerCache;
      private final DisconnectedCallNotifier mDisconnectedCallNotifier;
      private final DockManager mDockManager;
      private final DtmfLocalTonePlayer mDtmfLocalTonePlayer;
      private final EmergencyCallDiagnosticLogger mEmergencyCallDiagnosticLogger;
      private final EmergencyCallHelper mEmergencyCallHelper;
      private LinkedList mGraphHandlerThreads;
      private final Handler mHandler;
      private boolean mHasActiveRttCall;
      private final HeadsetMediaButton mHeadsetMediaButton;
      private final InCallController mInCallController;
      private final InCallWakeLockController mInCallWakeLockController;
      private IncomingCallNotifier mIncomingCallNotifier;
      private CompletableFuture mLatestPostSelectionProcessingFuture;
      private CompletableFuture mLatestPreAccountSelectionFuture;
      private final CopyOnWriteArrayList mListeners;
      private final Set mLocallyDisconnectingCalls;
      private final TelecomSystem$SyncRoot mLock;
      private final MissedCallNotifier mMissedCallNotifier;
      private final MmiUtils mMmiUtils;
      private CompletableFuture mPendingAccountSelection;
      private Call mPendingAudioProcessingCall;
      private Call mPendingCall;
      private CompletableFuture mPendingCallConfirm;
      private final Set mPendingCallsToDisconnect;
      private Call mPendingRedirectedOutgoingCall;
      private final Map mPendingRedirectedOutgoingCallInfo;
      private final Map mPendingUnredirectedOutgoingCallInfo;
      private PhoneAccountRegistrar$Listener mPhoneAccountListener;
      private final PhoneAccountRegistrar mPhoneAccountRegistrar;
      private final PhoneNumberUtilsAdapter mPhoneNumberUtilsAdapter;
      private final PhoneStateBroadcaster mPhoneStateBroadcaster;
      private final ProximitySensorManager mProximitySensorManager;
      private final BroadcastReceiver mReceiver;
      private final ConnectionServiceFocusManager$CallsManagerRequester mRequester;
      private RespondViaSmsManager mRespondViaSmsManager;
      private final Ringer mRinger;
      private final RoleManagerAdapter mRoleManagerAdapter;
      private int mRttRequestId;
      private final Set mSelfManagedCallsBeingSetup;
      private Runnable mStopTone;
      private final SystemStateHelper mSystemStateHelper;
      private final Timeouts$Adapter mTimeoutsAdapter;
      private final ToastFactory mToastFactory;
      private final TransactionManager mTransactionManager;
      private final TtyManager mTtyManager;
      public UniCallsManager mUniCallsManager;
      private final UserManager mUserManager;
      private final VoipCallMonitor mVoipCallMonitor;
      private final WiredHeadsetManager mWiredHeadsetManager;
      private static final Map sAnalyticsTechnologyMap;
/*
 * Declared Constructors.
 */
    public CallsManager(Context, TelecomSystem$SyncRoot, CallerInfoLookupHelper, MissedCallNotifier, DisconnectedCallNotifier$Factory, PhoneAccountRegistrar, HeadsetMediaButtonFactory, ProximitySensorManagerFactory, InCallWakeLockControllerFactory, ConnectionServiceFocusManager$ConnectionServiceFocusManagerFactory, CallAudioManager$AudioServiceFactory, BluetoothRouteManager, WiredHeadsetManager, SystemStateHelper, DefaultDialerCache, Timeouts$Adapter, AsyncRingtonePlayer, PhoneNumberUtilsAdapter, EmergencyCallHelper, InCallTonePlayer$ToneGeneratorFactory, ClockProxy, AudioProcessingNotification, BluetoothStateReceiver, CallAudioRouteStateMachine$Factory, CallAudioModeStateMachine$Factory, InCallControllerFactory, CallDiagnosticServiceController, RoleManagerAdapter, ToastFactory, CallEndpointControllerFactory, CallAnomalyWatchdog, Ringer$AccessibilityManagerAdapter, Executor, BlockedNumbersAdapter, TransactionManager, EmergencyCallDiagnosticLogger, CallStreamingNotification) { ... }
    public static void $r8$lambda$-cEOZA8Q2o9wk8jqtqsePJzfnOQ(Call, CallsManager$CallsManagerListener) { ... }
    public static boolean $r8$lambda$1Jc_vAKSoRZlz2rlgdF3gLwgPGY(CallsManager, boolean, UserHandle, Call) { ... }
    public static boolean $r8$lambda$1L3xxuvQ-Z-Rp7vS6cxH9E_94tk(Call) { ... }
    public static boolean $r8$lambda$1p61YD5gBcHihQ1B0v9N_sSP1rU(Call) { ... }
    public static boolean $r8$lambda$48Uw-3eZm5qXFYbIbhnLjoV8oUE(CallsManager, PhoneAccountHandle, Call) { ... }
    public static boolean $r8$lambda$57StrKS7pVl0EqFvJBHvWpc1oEY(PhoneAccountHandle, Call) { ... }
    public static CompletionStage $r8$lambda$5EW7LrR1BxGd7Sh076McJ8gF8d8(CallsManager, UserHandle, Bundle, Intent, Uri, boolean, Pair) { ... }
    public static CompletionStage $r8$lambda$7_h_VuPSJg_9bFDNtt2FignOH4A(CallsManager, PhoneAccountHandle, Uri, int, Call, UserHandle, boolean, Void) { ... }
    public static Void $r8$lambda$8-i-hDLZt2Wlxtz-ThHewhVvwwc(Throwable) { ... }
    public static void $r8$lambda$AzvEzWsWidBkZhlxTItOsXq9Fg4(boolean, Call) { ... }
    public static void $r8$lambda$BPBMITKjrBNWN5uwESilU3IcCKM(String, Call) { ... }
    public static void $r8$lambda$Bpu4jf8rY32HkUK8OhvK-EvXEdQ(CallsManager, Call) { ... }
    public static boolean $r8$lambda$Cy74rDjl87QYBCUIc8ozYkDuqcc(PhoneAccount, Call) { ... }
    public static void $r8$lambda$DbBOJjL2aS1rf2iKiJNI5O_X1Tw(CallsManager, Call, List, Throwable) { ... }
    public static boolean $r8$lambda$DigECy1dRYsAorZkYV7BjRJS7jQ(PhoneAccountHandle, Call) { ... }
    public static CharSequence $r8$lambda$E5WaXmkIBBRDAH43ZG5muG78fiY(CallsManager, String) { ... }
    public static boolean $r8$lambda$FgGpsMXZHoFQJrVUlWvA7yWijQM(PhoneAccountHandle, Call) { ... }
    public static boolean $r8$lambda$Fyvo_prk1Ct1YGV9WjZGSaTisk4(PhoneAccountHandle, Call) { ... }
    public static Object $r8$lambda$G8jWC3uPqmv3TBRe0IW7bJDHSMs(CallsManager, Object) { ... }
    public static boolean $r8$lambda$IgmImIBqCy9HTyxq-86bB1oUWfY(String, UserHandle, Call) { ... }
    public static boolean $r8$lambda$Jh6dLQyJE45AaGMDLsDLJWac-oQ(Call) { ... }
    public static boolean $r8$lambda$KoQ2FQ4WMt1AGrC21brAenG0ezg(Call) { ... }
    public static void $r8$lambda$MugpNyaN9bGXOTfCZ_IUWX1coOw(Call, CallsManager$CallsManagerListener) { ... }
    public static void $r8$lambda$O0U5oByAaaKUYEcPxeryW-qjgGU(CallsManager, Call) { ... }
    public static void $r8$lambda$O4eEvuMFHMb8eKXDMQsYyWtOT_I(CountDownLatch) { ... }
    public static void $r8$lambda$OihYhh_KgzFs2kWkt73i8RRFvw4(Call, CallsManager$CallsManagerListener) { ... }
    public static void $r8$lambda$P1UHnk_jAu9K5OtALP17qaoihFY(CallsManager, Call) { ... }
    public static boolean $r8$lambda$PCKRybq5QoC3aZLTenUHveYj8o8(Call, Call) { ... }
    public static void $r8$lambda$PWjR457QyZag1X7Co_l4rdsrosM(Call, CallsManager$CallsManagerListener) { ... }
    public static void $r8$lambda$Pt7rUvMW_xi85KvL2x2hzL6WOj0(CallsManager, Call) { ... }
    public static void $r8$lambda$Rgx2j2fwkjqO_43aDnSDb_4O6G4(CountDownLatch) { ... }
    public static boolean $r8$lambda$TtVnxtPro6D5ui8-v_p2-FZ9nj0(Set, Call) { ... }
    public static boolean $r8$lambda$YAARn0UmpJjE3EVcRv720bi8wL8(CallsManager, String, Call) { ... }
    public static List $r8$lambda$Z4MU-Lk5K1ZQ8hOSGXLMF3wg5lI(CallsManager, Uri, UserHandle, List, PhoneAccountHandle) { ... }
    public static void $r8$lambda$_8ke8sA6AZ_eb21IXTCESKxqdZE(CallsManager, Call, DisconnectCause) { ... }
    public static boolean $r8$lambda$aOl41gMXzzCedFgC4JyvhoxnTOM(String, UserHandle, Call) { ... }
    public static boolean $r8$lambda$aWNUMD_Xu9EC8MyxTkUl9ajZ4Ms(Call) { ... }
    public static void $r8$lambda$ec8ehjIh9dyI1Vtoes7bGJuNpUw(String, Call) { ... }
    public static boolean $r8$lambda$h7eP-pA9wAxcKf_BPll0xlk70As(Call) { ... }
    public static CompletionStage $r8$lambda$iHp7Bodc_wWq4lLT3wVeM0ecWcU(CallsManager, Call, List) { ... }
    public static Void $r8$lambda$iUEYrTMAFq0U03stSzhEEfRc37Q(Throwable) { ... }
    public static void $r8$lambda$kAWs07JGTzxiatTG6V8CXOFPH70(Call, CallsManager$CallsManagerListener) { ... }
    public static boolean $r8$lambda$kaU4n27QaHGY2Al4xyY1F7oYNIU(Call, Call) { ... }
    public static void $r8$lambda$lBopU1W3PZPRutQIuTflbVpE0rU(CallsManager) { ... }
    public static void $r8$lambda$n2-KVwPRRPJ-Ms9MAe_K6LoMKnU(CallsManager, Session, boolean, int, Call) { ... }
    public static CompletionStage $r8$lambda$n5BvVQnViUI_IRbc9RN6v_tx544(CallsManager, UserHandle, Uri, boolean, Bundle, Pair) { ... }
    public static boolean $r8$lambda$nYPWHPK6-iCfAyS4DDYe9UzS9xs(String, Call) { ... }
    public static void $r8$lambda$nrfRT69iuFeeiFeIlu_vO-5qRNM(CountDownLatch) { ... }
    public static void $r8$lambda$q6fElmFmECPmuF_t2-LSklsyp9k(CallsManager, Pair, Pair) { ... }
    public static void $r8$lambda$qKxZav3oH_Lt1Zqramfsw8_omSI(boolean, Call) { ... }
    public static boolean $r8$lambda$qkoFd-EaSle2IgcmckxfM_lIIck(CallsManager, String, Call) { ... }
    public static boolean $r8$lambda$rFTUkOrL3iDYxS5efCUXbDNxJ9Y(String, Call) { ... }
    public static void $r8$lambda$sDE9-VsmVSbQ3Gqao0BInYjjYRM(CallsManager, Context) { ... }
    public static InCallTonePlayer$MediaPlayerAdapter $r8$lambda$wDmzlsHdR1BbmZWnplenUeHsq10(CallsManager, AudioManager, int, AudioAttributes) { ... }
    public static boolean $r8$lambda$wGzxidxn5VQ1zteF2nhBp_hpIrg(String, Call) { ... }
    public static void $r8$lambda$wpfAGa-W9YUdCFWg4IRRMCnBxQg(CallsManager) { ... }
    public static boolean $r8$lambda$yXjhXxWUXx2LfDKmtQ-Bc-JSzic(Set, Call) { ... }
    public static CompletionStage $r8$lambda$ya-8g3vhYkFVHI3RtCJ6Wv3EfCk(CallsManager, Uri, boolean, Call, boolean, boolean, Intent, List) { ... }
    public static Void $r8$lambda$yo6guoGHDhsP9CTPeXFBIF7ExCg(CallsManager, Throwable) { ... }
    public static boolean $r8$lambda$zCdKvEJqkGdPUGs1E5ux_5IgIqg(Call) { ... }
    public static boolean $r8$lambda$zR88szxY7IMB4EOkgLmoaw9E8VA(Call) { ... }
    static volatile Set -$$Nest$fgetmCalls(CallsManager) { ... }
    static volatile ConnectionServiceFocusManager -$$Nest$fgetmConnectionSvrFocusMgr(CallsManager) { ... }
    static volatile Context -$$Nest$fgetmContext(CallsManager) { ... }
    static volatile DtmfLocalTonePlayer -$$Nest$fgetmDtmfLocalTonePlayer(CallsManager) { ... }
    static volatile CopyOnWriteArrayList -$$Nest$fgetmListeners(CallsManager) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmLock(CallsManager) { ... }
    static volatile Set -$$Nest$fgetmPendingCallsToDisconnect(CallsManager) { ... }
    static volatile UserManager -$$Nest$fgetmUserManager(CallsManager) { ... }
    static volatile void -$$Nest$mbroadcastRegisterIntent(CallsManager, PhoneAccountHandle) { ... }
    static volatile void -$$Nest$mbroadcastUnregisterIntent(CallsManager, PhoneAccountHandle) { ... }
    static volatile void -$$Nest$mcancelRedirection(CallsManager, String) { ... }
    static volatile void -$$Nest$mhandlePhoneAccountChanged(CallsManager, PhoneAccountRegistrar, PhoneAccount) { ... }
    static volatile void -$$Nest$msetCallState(CallsManager, Call, int, String) { ... }
    static volatile void -$$Nest$mupdateEmergencyCallNotificationAsync(CallsManager, Context) { ... }
    public void acceptHandover(Uri, int, PhoneAccountHandle) { ... }
    private void acceptHandoverTo(Call) { ... }
    public void addCall(Call) { ... }
    public void addCallBeingSetup(Call) { ... }
    public void addConnectionServiceRepositoryCache(ComponentName, UserHandle, ConnectionServiceWrapper) { ... }
    public void addListener(CallsManager$CallsManagerListener) { ... }
     void addNewUnknownCall(PhoneAccountHandle, Bundle) { ... }
    public void addToPendingCallsToDisconnect(Call) { ... }
    public void answerCall(Call, int) { ... }
    private void answerCallForAudioProcessing(Call) { ... }
    public static boolean areFromSameSource(Call, Call) { ... }
    private boolean areHandlesEqual(Uri, Uri) { ... }
    private void autoMissCallAndLog(Call, CallFilteringResult) { ... }
    private void bindForOutgoingCallerId(Call) { ... }
    private void broadcastRegisterIntent(PhoneAccountHandle) { ... }
    private void broadcastUnregisterIntent(PhoneAccountHandle) { ... }
    public boolean canAddCall() { ... }
    public boolean canHold(Call) { ... }
    public void cancelPendingCall(String) { ... }
    private void cancelRedirection(String) { ... }
    private CallFailureCause checkIncomingCallPermitted(Call, PhoneAccountHandle) { ... }
    private void completeHandoverFrom(Call) { ... }
    public void conference(Call, Call) { ... }
    public void confirmPendingCall(String) { ... }
    public List constructPossiblePhoneAccounts(Uri, UserHandle, boolean, boolean) { ... }
    public List constructPossiblePhoneAccounts(Uri, UserHandle, boolean, boolean, boolean) { ... }
    public void createActionSetCallStateAndPerformAction(Call, int, String) { ... }
     Call createCallForExistingConnection(String, ParcelableConnection) { ... }
     Call createConferenceCall(String, PhoneAccountHandle, ParcelableConference) { ... }
    public void deflectCall(Call, Uri) { ... }
    public void disconnectCall(Call) { ... }
    private void disconnectOtherCalls(PhoneAccountHandle) { ... }
    private void disconnectSelfManagedCalls(String) { ... }
    private void doRemoval(Call) { ... }
    public void dump(IndentingPrintWriter, String[]) { ... }
    private void ensureCallAudible() { ... }
    public void enterBackgroundAudioProcessing(Call, String) { ... }
    public void exitBackgroundAudioProcessing(Call, boolean) { ... }
    public CompletableFuture findOutgoingCallPhoneAccount(PhoneAccountHandle, Uri, boolean, boolean, UserHandle) { ... }
    public CompletableFuture findOutgoingCallPhoneAccount(PhoneAccountHandle, Uri, boolean, boolean, UserHandle, boolean) { ... }
    private String generateNextCallId(Bundle) { ... }
    public Call getActiveCall() { ... }
     Call getAlreadyAddedConnection(String) { ... }
    public CallAudioState getAudioState() { ... }
    private boolean getBooleanPhoneAccountExtra(PhoneAccountHandle, String) { ... }
    public Call getCall(String) { ... }
    public CallAudioManager getCallAudioManager() { ... }
    public CallDiagnosticServiceController getCallDiagnosticServiceController() { ... }
     int getCallState() { ... }
    public CallStreamingController getCallStreamingController() { ... }
    public CallerInfoLookupHelper getCallerInfoLookupHelper() { ... }
    public Collection getCalls() { ... }
    private PersistableBundle getCarrierConfigForPhoneAccount(PhoneAccountHandle) { ... }
    private String getCarrierPackageName() { ... }
    public ConnectionServiceFocusManager getConnectionServiceFocusManager() { ... }
    public Context getContext() { ... }
     int getCurrentTtyMode() { ... }
    public UserHandle getCurrentUserHandle() { ... }
     DisconnectedCallNotifier getDisconnectedCallNotifier() { ... }
     EmergencyCallHelper getEmergencyCallHelper() { ... }
    transient Call getFirstCallWithState(Call, int[]) { ... }
    public transient Call getFirstCallWithState(int[]) { ... }
    private PhoneAccountHandle getFirstChildPhoneAccount(Call) { ... }
    public Call getForegroundCall() { ... }
    public Call getHeldCallByConnectionService(PhoneAccountHandle) { ... }
     InCallController getInCallController() { ... }
     IncomingCallNotifier getIncomingCallNotifier() { ... }
    public CompletableFuture getLatestPostSelectionProcessingFuture() { ... }
    public CompletableFuture getLatestPreAccountSelectionFuture() { ... }
    public TelecomSystem$SyncRoot getLock() { ... }
    private static int getManagedProfileUserId(Context, int) { ... }
     MissedCallNotifier getMissedCallNotifier() { ... }
    private String getNextCallId() { ... }
    public int getNextRttRequestId() { ... }
    public transient int getNumCallsWithState(int, Call, UserHandle, boolean, PhoneAccountHandle, int[]) { ... }
    public transient int getNumCallsWithState(int, Call, PhoneAccountHandle, int[]) { ... }
    public transient int getNumCallsWithState(boolean, Call, PhoneAccountHandle, int[]) { ... }
    public int getNumHeldCalls() { ... }
    public int getNumUnholdableCallsForOtherConnectionService(PhoneAccountHandle) { ... }
    public Call getOutgoingCall() { ... }
    public PhoneAccountRegistrar$Listener getPhoneAccountListener() { ... }
    public PhoneAccountRegistrar getPhoneAccountRegistrar() { ... }
    public PhoneNumberUtilsAdapter getPhoneNumberUtilsAdapter() { ... }
    public RespondViaSmsManager getRespondViaSmsManager() { ... }
    public Ringer getRinger() { ... }
    public Call getRingingOrSimulatedRingingCall() { ... }
    public RoleManagerAdapter getRoleManagerAdapter() { ... }
    public Set getSelfManagedCallsBeingSetup() { ... }
    public SystemStateHelper getSystemStateHelper() { ... }
    private TelephonyManager getTelephonyManager() { ... }
    public Timeouts$Adapter getTimeoutsAdapter() { ... }
    public Set getTrackedCalls() { ... }
    public VoipCallMonitor getVoipCallMonitor() { ... }
    private void handleCallTechnologyChange(Call) { ... }
    public void handleChildAddressChange(Call) { ... }
     void handleConnectionServiceDeath(ConnectionServiceWrapper) { ... }
    private void handlePhoneAccountChanged(PhoneAccountRegistrar, PhoneAccount) { ... }
    private boolean hasActiveRttCall() { ... }
    public boolean hasAnyCalls() { ... }
    private boolean hasMaximumLiveCalls(Call) { ... }
    private boolean hasMaximumManagedDialingCalls(Call) { ... }
    private boolean hasMaximumManagedHoldingCalls(Call) { ... }
    private boolean hasMaximumManagedLiveCalls(Call) { ... }
    private boolean hasMaximumManagedOutgoingCalls(Call) { ... }
    private boolean hasMaximumManagedRingingCalls(Call) { ... }
    private boolean hasMaximumOutgoingCalls(Call) { ... }
    private boolean hasMaximumSelfManagedCalls(Call, PhoneAccountHandle) { ... }
    private boolean hasMaximumSelfManagedRingingCalls(Call, PhoneAccountHandle) { ... }
    public boolean hasOngoingCalls(UserHandle, boolean) { ... }
    public boolean hasOngoingManagedCalls(UserHandle, boolean) { ... }
    public boolean hasOnlyDisconnectedCalls() { ... }
     boolean hasRingingCall() { ... }
     boolean hasRingingOrSimulatedRingingCall() { ... }
    public boolean hasSelfManagedCalls() { ... }
    public boolean hasUnholdableCallsForOtherConnectionService(PhoneAccountHandle) { ... }
    public boolean hasVideoCall() { ... }
     boolean holdActiveCallForNewCall(Call) { ... }
    public void holdCall(Call) { ... }
     boolean isCallVisibleForUser(Call, UserHandle) { ... }
    private boolean isDsdaCallingPossible() { ... }
    private boolean isHandoverFromPhoneAccountSupported(PhoneAccountHandle) { ... }
    private boolean isHandoverInProgress() { ... }
    private boolean isHandoverToPhoneAccountSupported(PhoneAccountHandle) { ... }
    public boolean isInEmergencyCall() { ... }
    public boolean isInSelfManagedCall(String, UserHandle) { ... }
    public boolean isIncomingCallPermitted(PhoneAccountHandle) { ... }
    public boolean isIncomingCallPermitted(Call, PhoneAccountHandle) { ... }
    public boolean isOutgoingCallPermitted(PhoneAccountHandle) { ... }
    public boolean isOutgoingCallPermitted(Call, PhoneAccountHandle) { ... }
    public boolean isReplyWithSmsAllowed(int) { ... }
    private boolean isRttSettingOn(PhoneAccountHandle) { ... }
    public boolean isSelfManaged(PhoneAccountHandle, UserHandle) { ... }
    private static boolean isSpeakerEnabledForVideoCalls() { ... }
    public boolean isSpeakerphoneAutoEnabledForVideoCalls(int) { ... }
    private boolean isSpeakerphoneEnabledForDock() { ... }
     boolean isTtySupported() { ... }
    private boolean isVoicemail(Uri, PhoneAccount) { ... }
    private boolean lambda$acceptHandover$56(String, Call) { ... }
    private void lambda$answerCallForAudioProcessing$16(Call) { ... }
    private Object lambda$bindForOutgoingCallerId$13(Object) { ... }
    private static boolean lambda$createCallForExistingConnection$45(String, Call) { ... }
    private static boolean lambda$disconnectOtherCalls$17(PhoneAccountHandle, Call) { ... }
    private void lambda$disconnectOtherCalls$18(Call) { ... }
    private static boolean lambda$disconnectSelfManagedCalls$50(Call) { ... }
    private static void lambda$disconnectSelfManagedCalls$51(String, Call) { ... }
    private void lambda$ensureCallAudible$43() { ... }
    private List lambda$findOutgoingCallPhoneAccount$14(Uri, UserHandle, List, PhoneAccountHandle) { ... }
    private static boolean lambda$getAlreadyAddedConnection$46(String, Call) { ... }
    private static boolean lambda$getCall$62(String, Call) { ... }
    private static boolean lambda$getHeldCallByConnectionService$26(PhoneAccountHandle, Call) { ... }
    private static boolean lambda$getNumCallsWithState$29(Set, Call) { ... }
    private static boolean lambda$getNumCallsWithState$30(Call) { ... }
    private static boolean lambda$getNumCallsWithState$31(Call) { ... }
    private static boolean lambda$getNumCallsWithState$32(Call, Call) { ... }
    private static boolean lambda$getNumCallsWithState$33(PhoneAccountHandle, Call) { ... }
    private static boolean lambda$getNumCallsWithState$34(Set, Call) { ... }
    private static boolean lambda$getNumCallsWithState$35(Call) { ... }
    private static boolean lambda$getNumCallsWithState$36(Call) { ... }
    private static boolean lambda$getNumCallsWithState$37(Call, Call) { ... }
    private static boolean lambda$getNumCallsWithState$38(PhoneAccountHandle, Call) { ... }
    private boolean lambda$getNumCallsWithState$39(boolean, UserHandle, Call) { ... }
    private boolean lambda$getNumUnholdableCallsForOtherConnectionService$40(PhoneAccountHandle, Call) { ... }
    private static boolean lambda$handlePhoneAccountChanged$59(PhoneAccount, Call) { ... }
    private static void lambda$handlePhoneAccountChanged$60(boolean, Call) { ... }
    private static boolean lambda$hasSelfManagedCalls$42(Call) { ... }
    private static boolean lambda$isHandoverInProgress$55(Call) { ... }
    private static boolean lambda$isInEmergencyCall$57(Call) { ... }
    private static boolean lambda$isInSelfManagedCall$27(String, UserHandle, Call) { ... }
    private static boolean lambda$isInSelfManagedCall$28(String, UserHandle, Call) { ... }
    private static void lambda$markCallAsDisconnected$19(Call, CallsManager$CallsManagerListener) { ... }
    private void lambda$markCallAsDisconnected$20(Call, DisconnectCause) { ... }
    private static Void lambda$markCallAsDisconnected$21(Throwable) { ... }
    private void lambda$markCallAsRemoved$22(Call) { ... }
    private static Void lambda$markCallAsRemoved$23(Throwable) { ... }
    private InCallTonePlayer$MediaPlayerAdapter lambda$new$0(AudioManager, int, AudioAttributes) { ... }
    private static void lambda$notifyCreateConferenceFailed$53(Call, CallsManager$CallsManagerListener) { ... }
    private static void lambda$notifyCreateConnectionFailed$52(Call, CallsManager$CallsManagerListener) { ... }
    private static void lambda$notifyStartCreateConnection$54(Call, CallsManager$CallsManagerListener) { ... }
    private void lambda$performRemoval$24(Call) { ... }
    private Void lambda$performRemoval$25(Throwable) { ... }
    private void lambda$placeOutgoingCall$15() { ... }
    private boolean lambda$processIncomingCallIntent$3(String, Call) { ... }
    private static void lambda$requestLogMark$61(String, Call) { ... }
    private CharSequence lambda$setUpCallFilterGraph$2(String) { ... }
    private void lambda$startConference$12(Session, boolean, int, Call) { ... }
    private void lambda$startOutgoingCall$10(Pair, Pair) { ... }
    private CompletionStage lambda$startOutgoingCall$11(UserHandle, Bundle, Intent, Uri, boolean, Pair) { ... }
    private CompletionStage lambda$startOutgoingCall$4(PhoneAccountHandle, Uri, int, Call, UserHandle, boolean, Void) { ... }
    private void lambda$startOutgoingCall$5(Call, List, Throwable) { ... }
    private CompletionStage lambda$startOutgoingCall$6(Call, List) { ... }
    private CompletionStage lambda$startOutgoingCall$7(Uri, boolean, Call, boolean, boolean, Intent, List) { ... }
    private static void lambda$startOutgoingCall$8(Call, CallsManager$CallsManagerListener) { ... }
    private CompletionStage lambda$startOutgoingCall$9(UserHandle, Uri, boolean, Bundle, Pair) { ... }
    private void lambda$updateEmergencyCallNotificationAsync$44(Context) { ... }
    private static void lambda$updateExternalCallCanPullSupport$58(boolean, Call) { ... }
    private static void lambda$waitOnHandlers$47(CountDownLatch) { ... }
    private static void lambda$waitOnHandlers$48(CountDownLatch) { ... }
    private static void lambda$waitOnHandlers$49(CountDownLatch) { ... }
    public boolean makeRoomForOutgoingCall(Call) { ... }
    public boolean makeRoomForOutgoingEmergencyCall(Call) { ... }
    private void markAllAnsweredCallAsRinging(Call, String) { ... }
    public void markCallAsActive(Call) { ... }
    public void markCallAsDialing(Call) { ... }
    public void markCallAsDisconnected(Call, DisconnectCause) { ... }
    public void markCallAsOnHold(Call) { ... }
     void markCallAsPulling(Call) { ... }
    public void markCallAsRemoved(Call) { ... }
     void markCallAsRinging(Call) { ... }
     void markCallDisconnectedDueToSelfManagedCall(Call) { ... }
    private void maybeHandleHandover(Call, int) { ... }
    private void maybeMoveToSpeakerPhone(Call) { ... }
    private boolean maybeRedirectToIntentForwarder(Uri, UserHandle) { ... }
    private void maybeSendPostCallScreenIntent(Call) { ... }
    private boolean maybeShowErrorDialog(Uri, int, UserHandle) { ... }
    private void maybeShowErrorDialogOnDisconnect(Call) { ... }
    private void maybeTurnOffMute(Call) { ... }
     void mute(boolean) { ... }
    private void notifyCallStateChanged(Call, int, int) { ... }
    private void notifyCreateConferenceFailed(PhoneAccountHandle, Call) { ... }
    private void notifyCreateConnectionFailed(PhoneAccountHandle, Call) { ... }
    private void notifyHandoverFailed(Call, int) { ... }
    private void notifyStartCreateConnection(Call) { ... }
    public void onBootCompleted() { ... }
    public void onCallAudioStateChanged(CallAudioState, CallAudioState) { ... }
    public void onCallFilteringComplete(Call, CallFilteringResult, boolean) { ... }
    public void onCallHoldFailed(Call) { ... }
    public void onCallRedirectionComplete(Call, Uri, PhoneAccountHandle, GatewayInfo, boolean, int, boolean, String) { ... }
    public void onCallStreamingStateChanged(Call, boolean) { ... }
    public void onCallSwitchFailed(Call) { ... }
    public boolean onCanceledViaNewOutgoingCallBroadcast(Call, long) { ... }
    public void onCdmaConferenceSwap(Call) { ... }
    public void onChildrenChanged(Call) { ... }
    public void onConferenceStateChanged(Call, boolean) { ... }
    public void onConnectionPropertiesChanged(Call, boolean) { ... }
    public void onDisconnectedTonePlaying(boolean) { ... }
    public void onExternalCallChanged(Call, boolean) { ... }
    public void onExtrasChanged(Call, int, Bundle, String) { ... }
    public void onExtrasRemoved(Call, int, List) { ... }
    public void onFailedIncomingCall(Call) { ... }
    public void onFailedOutgoingCall(Call, DisconnectCause) { ... }
    public void onFailedUnknownCall(Call) { ... }
    public void onHandoverRequested(Call, PhoneAccountHandle, int, Bundle, boolean) { ... }
    public void onHoldToneRequested(Call) { ... }
    public void onIsVoipAudioModeChanged(Call) { ... }
    public boolean onMediaButton(int) { ... }
    public void onParentChanged(Call) { ... }
    public void onPostDialChar(Call, char) { ... }
    public void onPostDialWait(Call, String) { ... }
    public void onRemoteRttRequest(Call, int) { ... }
    public void onRingbackRequested(Call, boolean) { ... }
    public void onSessionModifyRequestReceived(Call, VideoProfile) { ... }
    public void onSetCamera(Call, String) { ... }
    public void onSuccessfulIncomingCall(Call) { ... }
    public void onSuccessfulOutgoingCall(Call, int) { ... }
    public void onSuccessfulUnknownCall(Call, int) { ... }
     void onUserStarting(UserHandle) { ... }
    public void onUserSwitch(UserHandle) { ... }
    public void onVideoCallProviderChanged(Call) { ... }
    public void onVideoStateChanged(Call, int, int) { ... }
    private void performRemoval(Call) { ... }
     void phoneAccountSelected(Call, PhoneAccountHandle, boolean) { ... }
    public void placeOutgoingCall(Call, Uri, GatewayInfo, boolean, int) { ... }
    public void playDtmfTone(Call, char) { ... }
    public void playRttUpgradeToneForCall(Call) { ... }
     void postDialContinue(Call, boolean) { ... }
    public Call processIncomingCallIntent(PhoneAccountHandle, Bundle, boolean) { ... }
     void processIncomingCallIntent(PhoneAccountHandle, Bundle) { ... }
     void processIncomingConference(PhoneAccountHandle, Bundle) { ... }
    public void processRedirectedOutgoingCallAfterUserInteraction(String, String) { ... }
    public void rejectCall(Call, int) { ... }
    public void rejectCall(Call, boolean, String) { ... }
    private void rejectHandoverTo(Call) { ... }
    private void reloadMissedCallsOfUser(UserHandle) { ... }
    public void removeCall(Call) { ... }
    public void removeListener(CallsManager$CallsManagerListener) { ... }
    public void requestCallEndpointChange(CallEndpoint, ResultReceiver) { ... }
    private void requestHandover(Call, PhoneAccountHandle, int, Bundle) { ... }
    private void requestHandoverViaEvents(Call, PhoneAccountHandle, int, Bundle) { ... }
    public void requestLogMark(String) { ... }
    public void requestNewCallFocusAndVerify(Call, OutcomeReceiver) { ... }
    public void resetConnectionTime(Call) { ... }
    private Call reuseOutgoingCall(Uri) { ... }
    public void setAnomalyReporterAdapter(AnomalyReporterAdapter) { ... }
    public void setAudioRoute(int, String) { ... }
    private void setCallSourceToAnalytics(Call, Intent) { ... }
    private void setCallState(Call, int, String) { ... }
    public void setIncomingCallNotifier(IncomingCallNotifier) { ... }
    private void setIntentExtrasAndStartTime(Call, Bundle) { ... }
    public void setRespondViaSmsManager(RespondViaSmsManager) { ... }
    private IncomingCallFilterGraph setUpCallFilterGraph(Call) { ... }
    public boolean shouldShowSystemIncomingCallUi(Call) { ... }
    private boolean shouldSilenceInsteadOfReject(Call) { ... }
    private void showErrorMessage(int) { ... }
    private void showRedirectionDialog(String, CharSequence) { ... }
    private boolean showSwitchToManagedProfileDialog(Uri, UserHandle, int) { ... }
    private void startCallConfirmation(Call, CompletableFuture) { ... }
    public void startConference(List, Bundle, String, UserHandle) { ... }
    public CompletableFuture startOutgoingCall(Uri, PhoneAccountHandle, Bundle, UserHandle, Intent, String) { ... }
    private CompletableFuture startOutgoingCall(List, PhoneAccountHandle, Bundle, UserHandle, Intent, String, boolean) { ... }
    public void stopCallStreaming(Call) { ... }
    public void stopDtmfTone(Call) { ... }
    private boolean supportsHold(Call) { ... }
    public void transactionHoldPotentialActiveCallForNewCall(Call, OutcomeReceiver) { ... }
    public void transferCall(Call, Uri, boolean) { ... }
    public void transferCall(Call, Call) { ... }
     void turnOffProximitySensor(boolean) { ... }
     void turnOnProximitySensor() { ... }
    public void unholdCall(Call) { ... }
    public void updateAvailableCallEndpoints(Set) { ... }
    public void updateCallEndpoint(CallEndpoint) { ... }
    private void updateCanAddCall() { ... }
    private void updateEmergencyCallNotificationAsync(Context) { ... }
    private void updateExternalCallCanPullSupport() { ... }
    private void updateHasActiveRttCall() { ... }
    public void updateMuteState(boolean) { ... }
    public void waitOnHandlers() { ... }

} 