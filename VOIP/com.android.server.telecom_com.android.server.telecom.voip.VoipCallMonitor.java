package com.android.server.telecom.voip;
import android.service.notification.NotificationListenerService;
import android.telecom.PhoneAccountHandle;
import android.os.Handler;
import java.util.concurrent.CompletableFuture;
import java.util.Set;
import java.util.List;
import android.content.Context;
import android.service.notification.StatusBarNotification;
import com.android.server.telecom.Call;
import java.util.concurrent.CompletionStage;
import java.util.Map;
import android.os.HandlerThread;
import android.app.ActivityManagerInternal;
import java.lang.Object;
import java.lang.Void;
import com.android.server.telecom.TelecomSystem$SyncRoot;

public class VoipCallMonitor extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private final Map mAccountHandleToCallMap;
      private ActivityManagerInternal mActivityManagerInternal;
      private List mCachedNotifications;
      private final Context mContext;
      private final Handler mHandler;
      private final HandlerThread mHandlerThread;
      private final Object mLock;
      private final Map mNotificationInfoToCallMap;
      private NotificationListenerService mNotificationListener;
      private final List mNotificationPendingCalls;
      private final Map mServices;
      private TelecomSystem$SyncRoot mSyncRoot;
/*
 * Declared Constructors.
 */
    public VoipCallMonitor(Context, TelecomSystem$SyncRoot) { ... }
    public static Set $r8$lambda$JWLh22vevV4WnvRrlF4x3DxTTx8(PhoneAccountHandle) { ... }
    public static CompletionStage $r8$lambda$RVDOSvACpLHaLR3Awc0Pv6mbfQc(VoipCallMonitor, Call, Object) { ... }
    public static CompletionStage $r8$lambda$VSOKOI6MOBriAH96DWcGD7z3fG8(VoipCallMonitor, Call, Void) { ... }
    public static Set $r8$lambda$onDgAuiKVBe6HKJbBbCt0O0Z_O0(PhoneAccountHandle) { ... }
    public static void $r8$lambda$zB9jdW3ag3r7u56-Hs6XtjYg22I(CompletableFuture) { ... }
    static volatile List -$$Nest$fgetmCachedNotifications(VoipCallMonitor) { ... }
    static volatile Object -$$Nest$fgetmLock(VoipCallMonitor) { ... }
    static volatile Map -$$Nest$fgetmNotificationInfoToCallMap(VoipCallMonitor) { ... }
    static volatile List -$$Nest$fgetmNotificationPendingCalls(VoipCallMonitor) { ... }
    static volatile Map -$$Nest$fgetmServices(VoipCallMonitor) { ... }
    static volatile void -$$Nest$mstartMonitorWorks(VoipCallMonitor, Call) { ... }
    public Set getCallsForHandle(PhoneAccountHandle) { ... }
    private static Set lambda$onCallAdded$0(PhoneAccountHandle) { ... }
    private CompletionStage lambda$onCallAdded$1(Call, Object) { ... }
    private static Set lambda$onCallRemoved$2(PhoneAccountHandle) { ... }
    private static void lambda$startMonitorNotification$3(CompletableFuture) { ... }
    private CompletionStage lambda$startMonitorNotification$4(Call, Void) { ... }
    public void onCallAdded(Call) { ... }
    public void onCallRemoved(Call) { ... }
    public void postNotification(StatusBarNotification) { ... }
    public void removeNotification(StatusBarNotification) { ... }
    public void setActivityManagerInternal(ActivityManagerInternal) { ... }
    private void startFGSDelegation(int, int, Call) { ... }
    public void startMonitor() { ... }
    private void startMonitorNotification(Call) { ... }
    private void startMonitorWorks(Call) { ... }
    public void stopFGSDelegation(Call) { ... }
    private void stopMonitorNotification(Call) { ... }
    private void stopMonitorWorks(Call) { ... }

} 