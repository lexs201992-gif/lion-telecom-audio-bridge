package com.android.systemui.statusbar.notification.collection.coordinator;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mOnHeadsUpChangedListener$1;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifCollectionListener$1;
import java.util.LinkedHashMap;
import com.android.systemui.statusbar.notification.collection.provider.LaunchFullScreenIntentProvider;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinatorLogger;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mActionPressListener$1;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mNotifPromoter$1;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$sectioner$1;
import com.android.systemui.statusbar.notification.interruption.VisualInterruptionDecisionProvider;
import com.android.systemui.statusbar.notification.collection.coordinator.HunMutatorImpl;
import android.util.ArrayMap;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.notification.interruption.HeadsUpViewBinder;
import java.lang.String;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$mLifetimeExtender$1;
import com.android.systemui.statusbar.notification.collection.coordinator.HeadsUpCoordinator$PostedEntry;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda3;

public final class HeadsUpCoordinator extends Object
{
/*
 * Field Definitions.
 */
      public final HeadsUpCoordinator$mActionPressListener$1 mActionPressListener;
      public NotifCollection$$ExternalSyntheticLambda3 mEndLifetimeExtension;
      public final ArrayMap mEntriesBindingUntil;
      public final ArrayMap mEntriesUpdateTimes;
      public final DelayableExecutor mExecutor;
      public final ArrayMap mFSIUpdateCandidates;
      public final HeadsUpManager mHeadsUpManager;
      public final HeadsUpViewBinder mHeadsUpViewBinder;
      public final LaunchFullScreenIntentProvider mLaunchFullScreenIntentProvider;
      public final HeadsUpCoordinator$mLifetimeExtender$1 mLifetimeExtender;
      public final HeadsUpCoordinatorLogger mLogger;
      public final HeadsUpCoordinator$mNotifCollectionListener$1 mNotifCollectionListener;
      public NotifPipeline mNotifPipeline;
      public final HeadsUpCoordinator$mNotifPromoter$1 mNotifPromoter;
      public final ArrayMap mNotifsExtendingLifetime;
      public long mNow;
      public final HeadsUpCoordinator$mOnHeadsUpChangedListener$1 mOnHeadsUpChangedListener;
      public final LinkedHashMap mPostedEntries;
      public final NotificationRemoteInputManager mRemoteInputManager;
      public final SystemClock mSystemClock;
      public final VisualInterruptionDecisionProvider mVisualInterruptionDecisionProvider;
      public final HeadsUpCoordinator$sectioner$1 sectioner;
/*
 * Declared Constructors.
 */
    public HeadsUpCoordinator(HeadsUpCoordinatorLogger, SystemClock, HeadsUpManager, HeadsUpViewBinder, VisualInterruptionDecisionProvider, NotificationRemoteInputManager, LaunchFullScreenIntentProvider, DelayableExecutor) { ... }
    public static final void access$endNotifLifetimeExtensionIfExtended(HeadsUpCoordinator, NotificationEntry) { ... }
    public static final void access$handlePostedEntry(HeadsUpCoordinator, HeadsUpCoordinator$PostedEntry, HunMutatorImpl, String) { ... }
    public static final boolean access$isGoingToShowHunNoRetract(HeadsUpCoordinator, ListEntry) { ... }
    public final void addForFSIReconsideration(NotificationEntry, long) { ... }
    public final void attach(NotifPipeline) { ... }
    public final void bindForAsyncHeadsUp(HeadsUpCoordinator$PostedEntry) { ... }
    public final void cancelHeadsUpBind(NotificationEntry) { ... }
    public final boolean isEntryBinding(ListEntry) { ... }
    public final void setUpdateTime(NotificationEntry, long) { ... }

} 