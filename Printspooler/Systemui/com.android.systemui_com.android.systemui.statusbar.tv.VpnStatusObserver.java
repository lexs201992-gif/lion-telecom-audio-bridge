package com.android.systemui.statusbar.tv;
import android.content.Context;
import android.app.NotificationManager;
import android.app.Notification;
import com.android.systemui.statusbar.policy.SecurityController;
import android.app.Notification$Builder;

public final class VpnStatusObserver extends Object
{
/*
 * Field Definitions.
 */
      public final Context context;
      public final NotificationManager notificationManager;
      public final SecurityController securityController;
      public boolean vpnConnected;
      public final Notification$Builder vpnConnectedNotificationBuilder;
      public final Notification vpnDisconnectedNotification;
/*
 * Declared Constructors.
 */
    public VpnStatusObserver(Context, SecurityController) { ... }
    public final void onStateChanged() { ... }
    public final void start() { ... }

} 