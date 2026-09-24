package com.android.systemui.wmshell;
import com.android.systemui.model.SysUiState;
import com.android.wm.shell.bubbles.BubbleEntry;
import java.util.List;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import java.util.concurrent.Executor;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.internal.statusbar.IStatusBarService;
import com.android.wm.shell.bubbles.Bubbles;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import android.service.dreams.IDreamManager;
import com.android.systemui.statusbar.notification.interruption.VisualInterruptionDecisionProvider;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import android.os.UserHandle;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.phone.StatusBarWindowCallback;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import android.app.INotificationManager;
import android.content.Context;

public final class BubblesManager extends Object
{
/*
 * Field Definitions.
 */
      public final IStatusBarService mBarService;
      public final Bubbles mBubbles;
      public final List mCallbacks;
      public final CommonNotifCollection mCommonNotifCollection;
      public final Context mContext;
      public final IDreamManager mDreamManager;
      public final NotifPipelineFlags mNotifPipelineFlags;
      public final NotificationLockscreenUserManager mNotifUserManager;
      public final INotificationManager mNotificationManager;
      public final NotificationShadeWindowController mNotificationShadeWindowController;
      public final ShadeController mShadeController;
      public final StatusBarWindowCallback mStatusBarWindowCallback;
      public final Executor mSysuiMainExecutor;
      public final NotificationVisibilityProvider mVisibilityProvider;
      public final VisualInterruptionDecisionProvider mVisualInterruptionDecisionProvider;
/*
 * Declared Constructors.
 */
    public BubblesManager(Context, Bubbles, NotificationShadeWindowController, KeyguardStateController, ShadeController, IStatusBarService, INotificationManager, IDreamManager, NotificationVisibilityProvider, VisualInterruptionDecisionProvider, ZenModeController, NotificationLockscreenUserManager, CommonNotifCollection, NotifPipeline, SysUiState, FeatureFlags, NotifPipelineFlags, Executor) { ... }
    public static boolean areBubblesEnabled(Context, UserHandle) { ... }
    public BubbleEntry notifToBubbleEntry(NotificationEntry) { ... }
    public final void onUserChangedBubble(NotificationEntry, boolean) { ... }
    public final boolean shouldBubbleUp(NotificationEntry) { ... }

} 