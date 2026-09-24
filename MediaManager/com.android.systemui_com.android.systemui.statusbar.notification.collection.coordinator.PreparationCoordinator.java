package com.android.systemui.statusbar.notification.collection.coordinator;
import com.android.systemui.statusbar.notification.collection.inflation.NotifUiAdjustment;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRowController;
import android.util.ArraySet;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManagerImpl;
import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$4;
import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$3;
import com.android.systemui.statusbar.notification.collection.inflation.NotifUiAdjustmentProvider;
import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$2;
import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$1;
import com.android.internal.statusbar.IStatusBarService;
import com.android.systemui.statusbar.notification.row.NotifInflationErrorManager;
import com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import android.util.ArrayMap;
import com.android.systemui.statusbar.notification.collection.render.NotifViewBarn;
import com.android.systemui.statusbar.notification.collection.inflation.NotifInflater;
import java.lang.String;

public final class PreparationCoordinator extends Object
{
/*
 * Field Definitions.
 */
      public final NotifUiAdjustmentProvider mAdjustmentProvider;
      public final BindEventManagerImpl mBindEventManager;
      public final int mChildBindCutoff;
      public final ArraySet mInflatingNotifs;
      public final ArrayMap mInflationAdjustments;
      public final PreparationCoordinator$4 mInflationErrorListener;
      public final ArrayMap mInflationStates;
      public final PreparationCoordinatorLogger mLogger;
      public final long mMaxGroupInflationDelay;
      public final PreparationCoordinator$1 mNotifCollectionListener;
      public final NotifInflationErrorManager mNotifErrorManager;
      public final NotifInflater mNotifInflater;
      public final PreparationCoordinator$3 mNotifInflatingFilter;
      public final PreparationCoordinator$2 mNotifInflationErrorFilter;
      public final IStatusBarService mStatusBarService;
      public final NotifViewBarn mViewBarn;
/*
 * Declared Constructors.
 */
    public PreparationCoordinator(PreparationCoordinatorLogger, NotifInflater, NotifInflationErrorManager, NotifViewBarn, NotifUiAdjustmentProvider, IStatusBarService, BindEventManagerImpl, int, long) { ... }
    public static void $r8$lambda$T1DwXSSxf_XS7CenlmlbkE5FMFw(PreparationCoordinator, NotificationEntry, ExpandableNotificationRowController) { ... }
    public final void abortInflation(NotificationEntry, String) { ... }
    public final void attach(NotifPipeline) { ... }
    public final int getInflationState(NotificationEntry) { ... }
    public final void inflateEntry(NotificationEntry, NotifUiAdjustment, String) { ... }
    public final void inflateRequiredNotifViews(NotificationEntry) { ... }
    public final boolean needToReinflate(NotificationEntry, NotifUiAdjustment, String) { ... }
    public final void rebind(NotificationEntry, NotifUiAdjustment) { ... }

} 