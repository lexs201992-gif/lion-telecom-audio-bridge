package com.android.systemui.statusbar.notification.collection;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$2;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$1;
import com.android.systemui.statusbar.notification.collection.render.RenderStageManager$attach$1;
import com.android.systemui.statusbar.notification.collection.NotifPipelineChoreographerImpl;
import java.util.ArrayList;
import com.android.systemui.statusbar.notification.collection.listbuilder.PipelineState;
import java.util.List;
import com.android.systemui.statusbar.NotificationInteractionTracker;
import com.android.systemui.statusbar.notification.collection.GroupEntry;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import java.util.Map;
import java.util.Collection;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifStabilityManager;
import java.util.Comparator;
import com.android.systemui.statusbar.notification.collection.listbuilder.SemiStableSort;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import java.io.PrintWriter;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.statusbar.notification.collection.listbuilder.ShadeListBuilderLogger;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$$ExternalSyntheticLambda2;
import com.android.systemui.statusbar.notification.collection.PipelineDumper;
import java.lang.String;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$$ExternalSyntheticLambda1;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder$$ExternalSyntheticLambda0;

public final class ShadeListBuilder extends Object
{
/*
 * Field Definitions.
 */
      public static final ShadeListBuilder$2 DEFAULT_SECTIONER;
      public static final int MAX_CONSECUTIVE_REENTRANT_REBUILDS;
      public Collection mAllEntries;
      public final NotifPipelineChoreographerImpl mChoreographer;
      public int mConsecutiveReentrantRebuilds;
      public final DumpManager mDumpManager;
      public final ShadeListBuilder$$ExternalSyntheticLambda2 mGroupChildrenComparator;
      public final Map mGroups;
      public final NotificationInteractionTracker mInteractionTracker;
      public int mIterationCount;
      public final ShadeListBuilderLogger mLogger;
      public List mNewNotifList;
      public final List mNotifComparators;
      public final List mNotifFinalizeFilters;
      public List mNotifList;
      public final List mNotifPreGroupFilters;
      public final List mNotifPromoters;
      public final List mNotifSections;
      public NotifStabilityManager mNotifStabilityManager;
      public final List mOnBeforeFinalizeFilterListeners;
      public final List mOnBeforeRenderListListeners;
      public final List mOnBeforeSortListeners;
      public final List mOnBeforeTransformGroupsListeners;
      public RenderStageManager$attach$1 mOnRenderListListener;
      public Collection mPendingEntries;
      public final PipelineState mPipelineState;
      public List mReadOnlyNewNotifList;
      public List mReadOnlyNotifList;
      public final ShadeListBuilder$1 mReadyForBuildListener;
      public final SemiStableSort mSemiStableSort;
      public final ShadeListBuilder$$ExternalSyntheticLambda0 mStableOrder;
      public final SystemClock mSystemClock;
      public final ArrayList mTempSectionMembers;
      public final ShadeListBuilder$$ExternalSyntheticLambda1 mTopLevelComparator;
/*
 * Declared Constructors.
 */
    public ShadeListBuilder(DumpManager, NotifPipelineChoreographerImpl, NotifPipelineFlags, NotificationInteractionTracker, ShadeListBuilderLogger, SystemClock) { ... }
    public static void annulAddition(ListEntry) { ... }
    public static void annulAddition(ListEntry, List) { ... }
    public static boolean applyFilters(NotificationEntry, long, List) { ... }
    public final void applyNewNotifList() { ... }
    public static void callOnCleanup(List) { ... }
    public final void dump(PrintWriter, String[]) { ... }
    public final void dumpPipeline(PipelineDumper) { ... }
    public final void filterNotifs(Collection, List, List) { ... }
    public final NotifStabilityManager getStabilityManager() { ... }
    public static boolean isSorted(List, Comparator) { ... }
    public final void logAttachStateChanges(ListEntry) { ... }
    public final boolean maybeSuppressGroupChange(NotificationEntry, List) { ... }
    public final void pruneGroupAtIndexAndPromoteAnyChildren(List, GroupEntry, int) { ... }
    public final void pruneIncompleteGroups(List) { ... }
    public final void rebuildListIfBefore(int) { ... }
    public final void scheduleRebuild(int, boolean) { ... }
    public final void setSectioners(List) { ... }

} 