package com.android.server.telecom.ui;
import android.content.Context;
import com.android.server.telecom.AppLabelProxy;
import com.android.server.telecom.Call;
import java.util.concurrent.Executor;
import android.app.NotificationManager;
import android.graphics.drawable.Icon;
import java.lang.Object;
import android.os.UserHandle;
import android.net.Uri;
import java.lang.String;

public class CallStreamingNotification extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private static final String NOTIFICATION_TAG;
      private final AppLabelProxy mAppLabelProxy;
      private final Executor mAsyncTaskExecutor;
      private final Context mContext;
      private boolean mIsNotificationShowing;
      private final Object mNotificationLock;
      private final NotificationManager mNotificationManager;
      private UserHandle mNotificationUserHandle;
      private Call mStreamingCall;
/*
 * Declared Constructors.
 */
    public CallStreamingNotification(Context, AppLabelProxy, Executor) { ... }
    public static void $r8$lambda$c0u44WBvQGMEJWRFwZ-IweuKA70(CallStreamingNotification) { ... }
    public static void $r8$lambda$nuhsA4-nNJPMRXligw9FW-muP-U(CallStreamingNotification, Call) { ... }
    private void dequeueStreamingNotification() { ... }
    private void enqueueStreamingNotification(Call) { ... }
    private void hideStreamingNotification() { ... }
    private void lambda$dequeueStreamingNotification$1() { ... }
    private void lambda$enqueueStreamingNotification$0(Call) { ... }
    public void onCallAdded(Call) { ... }
    public void onCallRemoved(Call) { ... }
    public void onCallStreamingStateChanged(Call, boolean) { ... }
    private void showStreamingNotification(String, UserHandle, String, Uri, Icon, String, long) { ... }
    private void trackStreamingCall(Call) { ... }

} 