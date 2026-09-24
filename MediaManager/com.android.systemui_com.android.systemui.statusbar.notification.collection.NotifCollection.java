package com.android.systemui.statusbar.notification.collection;
import android.service.notification.NotificationListenerService$RankingMap;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$1;
import com.android.systemui.dump.LogBufferEulogizer;
import android.service.notification.StatusBarNotification;
import java.util.List;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionLogger;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import java.util.concurrent.Executor;
import java.util.Map;
import java.util.Collection;
import android.os.Handler;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionInconsistencyTracker;
import com.android.internal.statusbar.IStatusBarService;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProvider;
import java.util.HashMap;
import java.io.PrintWriter;
import com.android.systemui.statusbar.notification.collection.notifcollection.DismissedByUserStats;
import com.android.systemui.util.time.SystemClock;
import java.util.Queue;
import com.android.systemui.statusbar.notification.collection.NotifCollection$1;
import android.service.notification.NotificationListenerService$Ranking;
import com.android.systemui.statusbar.notification.collection.PipelineDumper;
import java.lang.String;

public final class NotifCollection extends Object
{
/*
 * Field Definitions.
 */
      public boolean mAmDispatchingToOtherCode;
      public boolean mAttached;
      public final Executor mBgExecutor;
      public ShadeListBuilder$1 mBuildListener;
      public final SystemClock mClock;
      public final List mDismissInterceptors;
      public final NotificationDismissibilityProvider mDismissibilityProvider;
      public final DumpManager mDumpManager;
      public final LogBufferEulogizer mEulogizer;
      public final Queue mEventQueue;
      public final HashMap mFutureDismissals;
      public final NotifCollectionInconsistencyTracker mInconsistencyTracker;
      public final List mLifetimeExtenders;
      public final NotifCollectionLogger mLogger;
      public final Handler mMainHandler;
      public final List mNotifCollectionListeners;
      public final NotifCollection$1 mNotifHandler;
      public final Map mNotificationSet;
      public final Collection mReadOnlyNotificationSet;
      public final NotifCollection$$ExternalSyntheticLambda0 mRebuildListRunnable;
      public final IStatusBarService mStatusBarService;
/*
 * Declared Constructors.
 */
    public NotifCollection(IStatusBarService, SystemClock, NotifCollectionLogger, Handler, Executor, LogBufferEulogizer, DumpManager, NotificationDismissibilityProvider) { ... }
    public final void applyRanking(NotificationListenerService$RankingMap) { ... }
    public final void cancelDismissInterception(NotificationEntry) { ... }
    public final void cancelLifetimeExtension(NotificationEntry) { ... }
    public final void checkForReentrantCall() { ... }
    public final void dismissNotification(NotificationEntry, DismissedByUserStats) { ... }
    public final void dismissNotifications(List) { ... }
    public final void dispatchEvents() { ... }
    public final void dispatchEventsAndRebuildList(String) { ... }
    public final void dump(PrintWriter, String[]) { ... }
    public final void dumpPipeline(PipelineDumper) { ... }
    public static boolean hasFlag(NotificationEntry, int) { ... }
    public final void locallyDismissNotifications(List) { ... }
    public final void postNotification(StatusBarNotification, NotificationListenerService$Ranking) { ... }
    public static boolean shouldAutoDismissChildren(NotificationEntry, String) { ... }
    public final boolean tryRemoveNotification(NotificationEntry) { ... }
    public final void updateDismissInterceptors(NotificationEntry) { ... }

} 