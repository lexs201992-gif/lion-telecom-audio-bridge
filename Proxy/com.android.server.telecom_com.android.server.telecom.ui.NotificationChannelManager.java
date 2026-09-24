package com.android.server.telecom.ui;
import java.lang.String;
import android.content.Context;
import android.app.NotificationManager;
import android.app.NotificationChannel;
import android.content.BroadcastReceiver;

public class NotificationChannelManager extends Object
{
/*
 * Field Definitions.
 */
      private BroadcastReceiver mLocaleChangeReceiver;
/*
 * Declared Constructors.
 */
    public NotificationChannelManager() { ... }
    static volatile void -$$Nest$mcreateOrUpdateAll(NotificationChannelManager, Context) { ... }
    private NotificationChannel createChannel(Context, String) { ... }
    public void createChannels(Context) { ... }
    private void createOrUpdateAll(Context) { ... }
    private void createOrUpdateChannel(Context, String) { ... }
    private NotificationManager getNotificationManager(Context) { ... }

} 