package com.android.server.telecom.ui;
import com.android.server.telecom.CallerInfoLookupHelper;
import com.android.server.telecom.MissedCallNotifier$CallInfoFactory;
import java.util.Map;
import android.os.Bundle;
import com.android.server.telecom.DeviceIdleControllerAdapter;
import android.content.Intent;
import android.os.UserHandle;
import com.android.server.telecom.ui.MissedCallNotifierImpl$NotificationBuilderFactory;
import android.app.Notification;
import android.net.Uri;
import com.android.server.telecom.PhoneAccountRegistrar;
import android.app.NotificationManager;
import com.android.server.telecom.DefaultDialerCache;
import java.lang.Object;
import java.lang.String;
import com.android.server.telecom.MissedCallNotifier$CallInfo;
import android.content.Context;
import android.app.PendingIntent;
import java.util.Set;

public class MissedCallNotifierImpl extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private static final String[] CALL_LOG_PROJECTION;
      private static final String NOTIFICATION_TAG;
      private final Context mContext;
      private UserHandle mCurrentUserHandle;
      private final DefaultDialerCache mDefaultDialerCache;
      private final DeviceIdleControllerAdapter mDeviceIdleControllerAdapter;
      private final Map mMissedCallCounts;
      private final Object mMissedCallCountsLock;
      private final MissedCallNotifierImpl$NotificationBuilderFactory mNotificationBuilderFactory;
      private final NotificationManager mNotificationManager;
      private final PhoneAccountRegistrar mPhoneAccountRegistrar;
      private Set mUsersToLoadAfterBootComplete;
/*
 * Declared Constructors.
 */
    public MissedCallNotifierImpl(Context, PhoneAccountRegistrar, DefaultDialerCache, DeviceIdleControllerAdapter) { ... }
    public MissedCallNotifierImpl(Context, PhoneAccountRegistrar, DefaultDialerCache, MissedCallNotifierImpl$NotificationBuilderFactory, DeviceIdleControllerAdapter) { ... }
    public static String $r8$lambda$Mk-aOf05Ts6uXCT60R_vLolQQ7E(MissedCallNotifierImpl) { ... }
    static volatile Context -$$Nest$fgetmContext(MissedCallNotifierImpl) { ... }
    static volatile Map -$$Nest$fgetmMissedCallCounts(MissedCallNotifierImpl) { ... }
    static volatile Object -$$Nest$fgetmMissedCallCountsLock(MissedCallNotifierImpl) { ... }
    static volatile void -$$Nest$mshowMissedCallNotification(MissedCallNotifierImpl, MissedCallNotifier$CallInfo, UserHandle) { ... }
    private boolean canRespondViaSms(MissedCallNotifier$CallInfo) { ... }
    private void cancelMissedCallNotification(UserHandle) { ... }
    public void clearMissedCalls(UserHandle) { ... }
    private void configureLedOnNotification(Notification) { ... }
    private PendingIntent createCallBackPendingIntent(Uri, UserHandle) { ... }
    private PendingIntent createCallLogPendingIntent(UserHandle) { ... }
    private PendingIntent createClearMissedCallsPendingIntent(UserHandle) { ... }
    private PendingIntent createSendSmsFromNotificationPendingIntent(Uri, UserHandle) { ... }
    private PendingIntent createTelecomPendingIntent(String, Uri, UserHandle) { ... }
    private Bundle exemptFromPowerSavingTemporarily(String, UserHandle) { ... }
    private Context getContextForUser(UserHandle) { ... }
    private String getCurrentCountryIso(Context) { ... }
    private String getDefaultDialerPackage(UserHandle) { ... }
    private String getNameForMissedCallNotification(MissedCallNotifier$CallInfo) { ... }
    private Intent getShowMissedCallIntentForDefaultDialer(String) { ... }
    private String lambda$showMissedCallNotification$0() { ... }
    private void markMissedCallsAsRead(UserHandle) { ... }
    public void reloadAfterBootComplete(CallerInfoLookupHelper, MissedCallNotifier$CallInfoFactory) { ... }
    public void reloadFromDatabase(CallerInfoLookupHelper, MissedCallNotifier$CallInfoFactory, UserHandle) { ... }
    private void sendNotificationThroughDefaultDialer(String, MissedCallNotifier$CallInfo, UserHandle, int) { ... }
    public void setCurrentUserHandle(UserHandle) { ... }
    private boolean shouldManageNotificationThroughDefaultDialer(String, UserHandle) { ... }
    public void showMissedCallNotification(MissedCallNotifier$CallInfo) { ... }
    private void showMissedCallNotification(MissedCallNotifier$CallInfo, UserHandle) { ... }

} 