package com.android.systemui.statusbar.notification.collection.coordinator;
import java.lang.Boolean;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.internal.statusbar.IStatusBarService;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import android.util.ArrayMap;
import com.android.systemui.statusbar.notification.collection.coordinator.MediaCoordinator$2;
import com.android.systemui.media.controls.util.MediaFeatureFlag;
import com.android.systemui.statusbar.notification.collection.coordinator.MediaCoordinator$1;
import com.android.systemui.statusbar.notification.icon.IconManager;
import com.android.systemui.statusbar.notification.InflationException;

public final class MediaCoordinator extends Object
{
/*
 * Field Definitions.
 */
      public final MediaCoordinator$2 mCollectionListener;
      public final IconManager mIconManager;
      public final ArrayMap mIconsState;
      public final Boolean mIsMediaFeatureEnabled;
      public final MediaCoordinator$1 mMediaFilter;
      public final IStatusBarService mStatusBarService;
/*
 * Declared Constructors.
 */
    public MediaCoordinator(MediaFeatureFlag, IStatusBarService, IconManager) { ... }
    public static void -$$Nest$mreportInflationError(MediaCoordinator, NotificationEntry, InflationException) { ... }
    public final void attach(NotifPipeline) { ... }

} 