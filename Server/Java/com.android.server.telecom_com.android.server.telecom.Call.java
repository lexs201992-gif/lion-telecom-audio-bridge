package com.android.server.telecom;
import java.util.Set;
import com.android.server.telecom.CallIdMapper;
import com.android.internal.telecom.IVideoProvider;
import java.lang.String;
import android.telecom.StatusHints;
import android.telecom.PhoneAccountHandle;
import com.android.server.telecom.ConnectionServiceFocusManager$ConnectionServiceFocus;
import com.android.server.telecom.ConnectionServiceWrapper;
import com.android.server.telecom.ServiceBinder;
import com.android.server.telecom.ConnectionServiceFocusManager;
import android.telecom.PhoneAccount;
import android.telecom.DisconnectCause;
import android.telephony.emergency.EmergencyNumber;
import android.content.Context;
import android.telecom.ParcelableConnection;
import com.android.server.telecom.stats.CallStateChangedAtomWriter;
import android.graphics.drawable.Drawable;
import java.lang.Void;
import com.android.server.telecom.VideoProviderProxy;
import com.android.server.telecom.CreateConnectionProcessor;
import com.android.server.telecom.Call$Listener;
import android.os.ParcelFileDescriptor;
import java.util.List;
import com.android.server.telecom.ClockProxy;
import android.content.Intent;
import android.os.UserHandle;
import com.android.server.telecom.TransactionalServiceWrapper;
import com.android.server.telecom.PhoneNumberUtilsAdapter;
import android.telecom.ParcelableConference;
import com.android.server.telecom.ConnectionServiceRepository;
import com.android.server.telecom.CallerInfoLookupHelper$OnQueryCompleteListener;
import android.telecom.CallerInfo;
import android.telecom.GatewayInfo;
import android.content.ComponentName;
import java.lang.Throwable;
import com.android.server.telecom.ui.ToastFactory;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.PhoneAccountRegistrar;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.android.server.telecom.stats.CallFailureCause;
import com.android.server.telecom.Analytics$CallInfo;
import java.lang.CharSequence;
import android.net.Uri;
import com.android.server.telecom.CallsManager;
import android.telecom.BluetoothCallQualityReport;
import com.android.server.telecom.Call$CallingPackageIdentity;
import java.util.concurrent.CompletableFuture;

public class Call extends Object
{
/*
 * Field Definitions.
 */
      private static String IMS_CALL_EXTRA_CVAT_VOICE;
      private static String IMS_CALL_EXTRA_CVRS_VIDEO;
      private static String IMS_CALL_EXTRA_CVRS_VOICE;
      private Analytics$CallInfo mAnalytics;
      private UserHandle mAssociatedUser;
      private CharSequence mAudioProcessingRequestingApp;
      private long mCallDataUsage;
      private int mCallDirection;
      private CharSequence mCallScreeningAppName;
      private String mCallScreeningComponentName;
      private CallStateChangedAtomWriter mCallStateChangedAtomWriter;
      private String mCallerDisplayName;
      private int mCallerDisplayNamePresentation;
      private CallerInfo mCallerInfo;
      private final CallerInfoLookupHelper$OnQueryCompleteListener mCallerInfoQueryListener;
      private int mCallerNumberVerificationStatus;
      private Call$CallingPackageIdentity mCallingPackageIdentity;
      private final CallsManager mCallsManager;
      private List mCannedSmsResponses;
      private boolean mCannedSmsResponsesLoadingStarted;
      private List mChildCalls;
      private final ClockProxy mClockProxy;
      private Call mConferenceLevelActiveCall;
      private final List mConferenceableCalls;
      private long mConnectElapsedTimeMillis;
      private long mConnectTimeMillis;
      private int mConnectionCapabilities;
      private String mConnectionId;
      private PhoneAccountHandle mConnectionManagerPhoneAccountHandle;
      private int mConnectionProperties;
      private ConnectionServiceWrapper mConnectionService;
      private ParcelFileDescriptor[] mConnectionServiceToInCallStreams;
      private final Context mContext;
      private CreateConnectionProcessor mCreateConnectionProcessor;
      private long mCreationElapsedRealtimeMillis;
      private long mCreationTimeMillis;
      private ComponentName mDefaultSMSComponentName;
      private boolean mDestroyed;
      private boolean mDidRequestToStartWithRtt;
      private DisconnectCause mDisconnectCause;
      private long mDisconnectElapsedTimeMillis;
      private CompletableFuture mDisconnectFuture;
      private long mDisconnectTimeMillis;
      private Bundle mExtras;
      private GatewayInfo mGatewayInfo;
      private boolean mHadChildren;
      private Uri mHandle;
      private int mHandlePresentation;
      private final Handler mHandler;
      private Call mHandoverDestinationCall;
      private Call mHandoverSourceCall;
      private int mHandoverState;
      private boolean mHasGoneActiveBefore;
      private final String mId;
      private ParcelFileDescriptor[] mInCallToConnectionServiceStreams;
      private Bundle mIntentExtras;
      private boolean mIsConference;
      private boolean mIsCreateConnectionComplete;
      private boolean mIsDisconnectingChildCall;
      private boolean mIsEmergencyCall;
      private boolean mIsInECBM;
      private boolean mIsLocallyDisconnecting;
      private boolean mIsNewOutgoingCallIntentBroadcastDone;
      private boolean mIsPullExternalCallSupported;
      private boolean mIsRemotelyHeld;
      private boolean mIsRemotelyHeldForLocalTone;
      private boolean mIsSelfManaged;
      private boolean mIsSimCall;
      private boolean mIsStreaming;
      private boolean mIsTestEmergencyCall;
      private boolean mIsTransactionalCall;
      private boolean mIsUsingCallFiltering;
      private boolean mIsVideoCallingSupportedByPhoneAccount;
      private boolean mIsVoipAudioMode;
      private boolean mIsWorkCall;
      private final Set mListeners;
      private final TelecomSystem$SyncRoot mLock;
      private long mMissedReason;
      private Intent mOriginalCallIntent;
      private String mOriginalConnectionId;
      private DisconnectCause mOverrideDisconnectCause;
      private Call mParentCall;
      private List mParticipants;
      private int mPendingRttRequestId;
      private int mPhoneId;
      private PhoneNumberUtilsAdapter mPhoneNumberUtilsAdapter;
      private char mPlayingDtmfTone;
      private String mPostCallPackageName;
      private String mPostDialDigits;
      private int mQueryToken;
      private boolean mReceivedCallDiagnosticPostCallResponse;
      private PhoneAccountHandle mRemotePhoneAccountHandle;
      private final ConnectionServiceRepository mRepository;
      private boolean mRingbackRequested;
      private int mRttMode;
      private final boolean mShouldAttachToExistingConnection;
      private boolean mSilentRingingRequested;
      private boolean mSpeakerphoneOn;
      private long mStartRingTime;
      private int mState;
      private StatusHints mStatusHints;
      private int mSubId;
      private int mSupportedAudioRoutes;
      private PhoneAccountHandle mTargetPhoneAccountHandle;
      private final ToastFactory mToastFactory;
      private TransactionalServiceWrapper mTransactionalService;
      private boolean mUseCallRecordingTone;
      private String mViaNumber;
      private VideoProviderProxy mVideoProviderProxy;
      private int mVideoState;
      private int mVideoStateHistory;
      private boolean mVisibleToInCallService;
      private boolean mWasConferencePreviouslyMerged;
      private boolean mWasEverRtt;
      private boolean mWasHighDefAudio;
      private boolean mWasVolte;
      private boolean mWasWifi;
/*
 * Declared Constructors.
 */
     Call(String, Context, CallsManager, TelecomSystem$SyncRoot, ConnectionServiceRepository, PhoneNumberUtilsAdapter, Uri, GatewayInfo, PhoneAccountHandle, PhoneAccountHandle, int, boolean, boolean, long, long, ClockProxy, ToastFactory) { ... }
    public Call(String, Context, CallsManager, TelecomSystem$SyncRoot, ConnectionServiceRepository, PhoneNumberUtilsAdapter, Uri, GatewayInfo, PhoneAccountHandle, PhoneAccountHandle, int, boolean, boolean, ClockProxy, ToastFactory) { ... }
    public Call(String, Context, CallsManager, TelecomSystem$SyncRoot, ConnectionServiceRepository, PhoneNumberUtilsAdapter, Uri, List, GatewayInfo, PhoneAccountHandle, PhoneAccountHandle, int, boolean, boolean, ClockProxy, ToastFactory) { ... }
    public static void $r8$lambda$3y6G_gt2Clr9ohuwyv8Vx8dzLlE(Call, int, Call$Listener) { ... }
    public static boolean $r8$lambda$5tv3kt18O-n8TGsufKQvt5Nf8Ik(String, EmergencyNumber) { ... }
    public static String $r8$lambda$5yQlV66mfGyG1yonlP2f8ELY0sg(Call) { ... }
    public static void $r8$lambda$6QPGlnly3feco_LOqaNGtmBT0Hc(Call) { ... }
    public static Void $r8$lambda$OA9QAmPv-02A-5ZhN7jl1_4Uk30(Call, Throwable) { ... }
    static volatile Context -$$Nest$fgetmContext(Call) { ... }
    static volatile Set -$$Nest$fgetmListeners(Call) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmLock(Call) { ... }
    static volatile ToastFactory -$$Nest$fgetmToastFactory(Call) { ... }
    static volatile void -$$Nest$fputmCannedSmsResponses(Call, List) { ... }
    static volatile void -$$Nest$msetCallerInfo(Call, Uri, CallerInfo) { ... }
     void abort(long) { ... }
    private void addChildCall(Call) { ... }
    public void addConferenceParticipants(List) { ... }
    public void addListener(Call$Listener) { ... }
    public void answer(int) { ... }
    public void answerForAudioProcessing() { ... }
    private boolean areRttStreamsInitialized() { ... }
    public boolean can(int) { ... }
    private void checkIfRttCapable() { ... }
    private void checkIfVideoCapable() { ... }
    public void cleanup() { ... }
     void clearConnectionService() { ... }
    public void clearDiagnosticMessage(int) { ... }
    public void clearPostDialDigits() { ... }
    public void clearVideoProvider() { ... }
    private void closeRttStreams() { ... }
     void conferenceWith(Call) { ... }
    private void configureCallAttributes() { ... }
    public void createRttStreams() { ... }
    private void decrementAssociatedCallCount(ServiceBinder) { ... }
    public void deflect(Uri) { ... }
    public void destroy() { ... }
    public void disconnect() { ... }
    public void disconnect(long) { ... }
    public void disconnect(long, String) { ... }
    public void disconnect(String) { ... }
    public void displayDiagnosticMessage(int, CharSequence) { ... }
    private void fixParentAfterDisconnect() { ... }
    public long getAgeMillis() { ... }
    public Analytics$CallInfo getAnalytics() { ... }
    public UserHandle getAssociatedUser() { ... }
    public CharSequence getAudioProcessingRequestingApp() { ... }
    public long getCallDataUsage() { ... }
    public CharSequence getCallScreeningAppName() { ... }
    public String getCallScreeningComponentName() { ... }
    public String getCallerDisplayName() { ... }
    public int getCallerDisplayNamePresentation() { ... }
    public CallerInfo getCallerInfo() { ... }
    public int getCallerNumberVerificationStatus() { ... }
    public Call$CallingPackageIdentity getCallingPackageIdentity() { ... }
     List getCannedSmsResponses() { ... }
    public List getChildCalls() { ... }
    public Call getConferenceLevelActiveCall() { ... }
    public List getConferenceableCalls() { ... }
    public long getConnectTimeMillis() { ... }
    public int getConnectionCapabilities() { ... }
    public String getConnectionId() { ... }
    public PhoneAccountHandle getConnectionManagerPhoneAccount() { ... }
     int getConnectionProperties() { ... }
    public ConnectionServiceWrapper getConnectionService() { ... }
    public ConnectionServiceFocusManager getConnectionServiceFocusManager() { ... }
    public ConnectionServiceFocusManager$ConnectionServiceFocus getConnectionServiceWrapper() { ... }
    public Uri getContactPhotoUri() { ... }
    public Uri getContactUri() { ... }
    public Context getContext() { ... }
    public long getCreationElapsedRealtimeMillis() { ... }
    public long getCreationTimeMillis() { ... }
    public ParcelFileDescriptor getCsToInCallRttPipeForCs() { ... }
    public ParcelFileDescriptor getCsToInCallRttPipeForInCall() { ... }
    public PhoneAccountHandle getDelegatePhoneAccountHandle() { ... }
    public String getDescription() { ... }
    public DisconnectCause getDisconnectCause() { ... }
    public CompletableFuture getDisconnectFuture() { ... }
    public Bundle getExtras() { ... }
    public GatewayInfo getGatewayInfo() { ... }
    public Uri getHandle() { ... }
    public int getHandlePresentation() { ... }
    public Call getHandoverDestinationCall() { ... }
    public Call getHandoverSourceCall() { ... }
    public int getHandoverState() { ... }
    public String getId() { ... }
    public ParcelFileDescriptor getInCallToCsRttPipeForCs() { ... }
    public ParcelFileDescriptor getInCallToCsRttPipeForInCall() { ... }
    public Bundle getIntentExtras() { ... }
    public boolean getIsVoipAudioMode() { ... }
    public long getMissedReason() { ... }
    public String getName() { ... }
    public String getOriginalConnectionId() { ... }
    public Uri getOriginalHandle() { ... }
    public int getParcelableCallState() { ... }
    public Call getParentCall() { ... }
    public List getParticipants() { ... }
    public PhoneAccount getPhoneAccountFromHandle() { ... }
    public int getPhoneId() { ... }
    public String getPhoneNumber() { ... }
    public Drawable getPhoto() { ... }
    public Bitmap getPhotoIcon() { ... }
    public String getPostCallPackageName() { ... }
    public String getPostDialDigits() { ... }
    public static int getRemappedCallDirection(int) { ... }
    public PhoneAccountHandle getRemotePhoneAccountHandle() { ... }
     Uri getRingtone() { ... }
    public int getRttMode() { ... }
    public long getStartRingTime() { ... }
    public boolean getStartWithSpeakerphoneOn() { ... }
    public int getState() { ... }
    static int getStateFromConnectionState(int) { ... }
    public StatusHints getStatusHints() { ... }
    public int getSubscriptionId() { ... }
    public int getSupportedAudioRoutes() { ... }
    public PhoneAccountHandle getTargetPhoneAccount() { ... }
    public CharSequence getTargetPhoneAccountLabel() { ... }
    private TelephonyManager getTelephonyManager() { ... }
    public TransactionalServiceWrapper getTransactionServiceWrapper() { ... }
    public String getViaNumber() { ... }
    public IVideoProvider getVideoProvider() { ... }
    public VideoProviderProxy getVideoProviderProxy() { ... }
    public int getVideoState() { ... }
    private String getVideoStateDescription(int) { ... }
    public int getVideoStateHistory() { ... }
    public boolean hadChildren() { ... }
    public void handleCreateConferenceFailure(DisconnectCause) { ... }
    public void handleCreateConferenceSuccess(CallIdMapper, ParcelableConference) { ... }
    public void handleCreateConnectionFailure(DisconnectCause) { ... }
    public void handleCreateConnectionSuccess(CallIdMapper, ParcelableConnection) { ... }
    public void handleOverrideDisconnectMessage(CharSequence) { ... }
    public void handleRttRequestResponse(int, boolean) { ... }
    public void handoverTo(PhoneAccountHandle, int, Bundle) { ... }
    public boolean hasGoneActiveBefore() { ... }
    public boolean hasProperty(int) { ... }
    public void hold() { ... }
    public void hold(String) { ... }
    public void increaseHeldByThisCallCount() { ... }
    public void initAnalytics() { ... }
    public void initAnalytics(String, String) { ... }
    public CompletableFuture initializeDisconnectFuture(long) { ... }
    public boolean isActive() { ... }
    public boolean isAdhocConferenceCall() { ... }
    public boolean isAlive() { ... }
    private boolean isAnswered(String) { ... }
    public boolean isCVRSCall() { ... }
    public boolean isCallSuppressedByDoNotDisturb() { ... }
    public boolean isConference() { ... }
    public boolean isCreateConnectionComplete() { ... }
    public boolean isDisconnectHandledViaFuture() { ... }
    public boolean isDisconnected() { ... }
    public boolean isDisconnectingChildCall() { ... }
     boolean isDtmfTonePlaying() { ... }
    public boolean isEmergencyCall() { ... }
    public boolean isExternalCall() { ... }
    public boolean isFocusable() { ... }
    public boolean isHandoverInProgress() { ... }
    public boolean isInECBM() { ... }
    public boolean isIncoming() { ... }
    public boolean isLocallyDisconnecting() { ... }
    public boolean isLocallyVideoCapable() { ... }
    public boolean isLoggedSelfManaged() { ... }
    public boolean isNetworkIdentifiedEmergencyCall() { ... }
    public boolean isNew() { ... }
    public boolean isOutgoing() { ... }
    public boolean isRemotelyHeld() { ... }
    public boolean isRemotelyHeldForTone() { ... }
    public boolean isRespondViaSmsCapable() { ... }
    public boolean isRingbackRequested() { ... }
    private boolean isRinging(String) { ... }
    public boolean isRttCall() { ... }
    public boolean isSelfManaged() { ... }
    public boolean isSilentRingingRequested() { ... }
    public boolean isSimCall() { ... }
    public boolean isStreaming() { ... }
    public boolean isTestEmergencyCall() { ... }
    private boolean isTestEmergencyCall(String) { ... }
    public boolean isTransactionalCall() { ... }
    public boolean isUnknown() { ... }
    public boolean isUsingCallFiltering() { ... }
    public boolean isUsingCallRecordingTone() { ... }
    public boolean isVideoCallingSupportedByPhoneAccount() { ... }
    public boolean isVoiceCVATCall() { ... }
    public boolean isVoiceCVRSCall() { ... }
    public boolean isWorkCall() { ... }
    private void lambda$initializeDisconnectFuture$3() { ... }
    private Void lambda$initializeDisconnectFuture$4(Throwable) { ... }
    private static boolean lambda$isTestEmergencyCall$1(String, EmergencyNumber) { ... }
    private void lambda$setCallerNumberVerificationStatus$0(int, Call$Listener) { ... }
    private static String lambda$setConferenceableCalls$2(Call) { ... }
    public void markFinishedHandoverStateAndCleanup(int) { ... }
    private void maybeAdjustConnectTime(Call) { ... }
    public void maybeCleanupHandover() { ... }
    public void maybeEnableEarpieceForVideoDowngrade(int) { ... }
    public void maybeEnableSpeakerForVideoUpgrade(int) { ... }
    private void maybeLoadCannedSmsResponses() { ... }
    public void maybeOnInCallServiceTrackingChanged(boolean, boolean) { ... }
    private void maybeSetCallAsDisconnectingChild() { ... }
    public void mergeConference() { ... }
     void notifyBluetoothCallQualityReport(BluetoothCallQualityReport) { ... }
     void notifyParentChanged(Call) { ... }
    public void onConnectionEvent(String, Bundle) { ... }
    public void onHandoverComplete() { ... }
    public void onHandoverFailed(int) { ... }
     void onPostDialChar(char) { ... }
     void onPostDialWait(String) { ... }
    public void onRemoteRttRequest() { ... }
    public void onRttConnectionFailure(int) { ... }
    public void playDtmfTone(char) { ... }
     void postDialContinue(boolean) { ... }
    public void pullExternalCall() { ... }
    public void putConnectionServiceExtras(Bundle) { ... }
    private void putExtras(int, Bundle, String) { ... }
    public void putInCallServiceExtras(Bundle, String) { ... }
    public void reject(int) { ... }
    public void reject(boolean, String) { ... }
    public void reject(boolean, String, String) { ... }
    private void removeChildCall(Call) { ... }
     void removeExtras(int, List) { ... }
    public void removeListener(Call$Listener) { ... }
    public void replaceConnectionService(ConnectionServiceWrapper) { ... }
    private void requestHandover(PhoneAccountHandle, int, Bundle, boolean) { ... }
    public void sendCallEvent(String, int, Bundle) { ... }
    public void sendCallEvent(String, Bundle) { ... }
    public void sendDeviceToDeviceMessage(int, int) { ... }
    private void sendEventToService(Call, String, Bundle) { ... }
    public void sendRttRequest() { ... }
    public void setAssociatedUser(UserHandle) { ... }
    public void setAudioProcessingRequestingApp(CharSequence) { ... }
    public void setCallDataUsage(long) { ... }
    public void setCallDirection(int) { ... }
    public void setCallIsSuppressedByDoNotDisturb(boolean) { ... }
    public void setCallScreeningAppName(CharSequence) { ... }
    public void setCallScreeningComponentName(String) { ... }
     void setCallerDisplayName(String, int) { ... }
    private void setCallerInfo(Uri, CallerInfo) { ... }
    public void setCallerNumberVerificationStatus(int) { ... }
    public void setCallingPackageIdentity(Bundle) { ... }
    public void setChildOf(Call) { ... }
    public void setConferenceState(boolean) { ... }
     void setConferenceableCalls(List) { ... }
    public void setConnectElapsedTimeMillis(long) { ... }
    public void setConnectTimeMillis(long) { ... }
    public void setConnectionCapabilities(int) { ... }
     void setConnectionCapabilities(int, boolean) { ... }
    public void setConnectionManagerPhoneAccount(PhoneAccountHandle) { ... }
    public void setConnectionProperties(int) { ... }
    public void setConnectionService(ConnectionServiceWrapper) { ... }
    private void setCurrentCallerDisplayName(String) { ... }
    public void setDisconnectCause(DisconnectCause) { ... }
     void setGatewayInfo(GatewayInfo) { ... }
     void setHandle(Uri) { ... }
    public void setHandle(Uri, int) { ... }
    public void setHandoverDestinationCall(Call) { ... }
    public void setHandoverSourceCall(Call) { ... }
    public void setHandoverState(int) { ... }
     void setIntentExtras(Bundle) { ... }
    public void setIsCreateConnectionComplete(boolean) { ... }
    public void setIsEmergencyCall(boolean) { ... }
    public void setIsInECBM(boolean) { ... }
    public void setIsPullExternalCallSupported(boolean) { ... }
    public void setIsSelfManaged(boolean) { ... }
    public void setIsTransactionalCall(boolean) { ... }
    public void setIsUsingCallFiltering(boolean) { ... }
    public void setIsVoipAudioMode(boolean) { ... }
    private void setLocallyDisconnecting(boolean) { ... }
    public void setMissedReason(long) { ... }
    public void setNewOutgoingCallIntentBroadcastIsDone() { ... }
    public void setOriginalCallIntent(Intent) { ... }
    public void setOriginalConnectionId(String) { ... }
    public void setOverrideDisconnectCauseCode(DisconnectCause) { ... }
     void setParentAndChildCall(Call) { ... }
     void setParentCall(Call) { ... }
    public void setPostCallPackageName(String) { ... }
    public void setRemotePhoneAccountHandle(PhoneAccountHandle) { ... }
    public void setRemotelyHeldForTone(boolean) { ... }
    public void setRequestedToStartWithRtt() { ... }
     void setRingbackRequested(boolean) { ... }
    public void setRttMode(int) { ... }
    public void setSilentRingingRequested(boolean) { ... }
    public void setStartFailCause(CallFailureCause) { ... }
    public void setStartRingTime() { ... }
    public void setStartWithSpeakerphoneOn(boolean) { ... }
    public boolean setState(int, String) { ... }
    public void setStatusHints(StatusHints) { ... }
     void setSupportedAudioRoutes(int) { ... }
    public void setTargetPhoneAccount(PhoneAccountHandle) { ... }
    public void setTransactionServiceWrapper(TransactionalServiceWrapper) { ... }
    public void setUserMissed(long) { ... }
    public void setViaNumber(String) { ... }
    public void setVideoCallingSupportedByPhoneAccount(boolean) { ... }
    public void setVideoProvider(IVideoProvider) { ... }
    public void setVideoState(int) { ... }
    public void setVisibleToInCallService(boolean) { ... }
     boolean shouldAttachToExistingConnection() { ... }
    private boolean shouldContinueProcessingAfterDisconnect() { ... }
     void silence() { ... }
     void splitFromConference() { ... }
    private void startCallerInfoLookup() { ... }
    public void startCreateConnection(PhoneAccountRegistrar) { ... }
    public void startStreaming() { ... }
    public void stopDtmfTone() { ... }
    public void stopRtt() { ... }
    public void stopStreaming() { ... }
    private int stripUnsupportedCapabilities(int) { ... }
    public void swapConference() { ... }
    public String toString() { ... }
    public void transfer(Uri, boolean) { ... }
    public void transfer(Call) { ... }
    public void unhold() { ... }
    public void unhold(String) { ... }
    public void updateCVRS(boolean) { ... }
    private void updateVideoHistoryViaState(int, int) { ... }
    public boolean visibleToInCallService() { ... }
    public boolean wasConferencePreviouslyMerged() { ... }
    public boolean wasDndCheckComputedForCall() { ... }
    public boolean wasEverRttCall() { ... }
     boolean wasHighDefAudio() { ... }
    public boolean wasVolte() { ... }
     boolean wasWifi() { ... }

} 