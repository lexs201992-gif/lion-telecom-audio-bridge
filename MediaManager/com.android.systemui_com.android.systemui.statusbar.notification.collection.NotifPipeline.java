package com.android.systemui.statusbar.notification.collection;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeFinalizeFilterListener;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeRenderListListener;
import java.util.Collection;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifLifetimeExtender;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifPromoter;
import java.lang.String;
import com.android.systemui.statusbar.notification.collection.render.RenderStageManager;

public final class NotifPipeline extends Object
{
/*
 * Field Definitions.
 */
      public final NotifCollection mNotifCollection;
      public final RenderStageManager mRenderStageManager;
      public final ShadeListBuilder mShadeListBuilder;
/*
 * Declared Constructors.
 */
    public NotifPipeline(NotifCollection, ShadeListBuilder, RenderStageManager) { ... }
    public final void addCollectionListener(NotifCollectionListener) { ... }
    public final void addFinalizeFilter(NotifFilter) { ... }
    public final void addNotificationLifetimeExtender(NotifLifetimeExtender) { ... }
    public final void addOnBeforeFinalizeFilterListener(OnBeforeFinalizeFilterListener) { ... }
    public final void addOnBeforeRenderListListener(OnBeforeRenderListListener) { ... }
    public final void addPreGroupFilter(NotifFilter) { ... }
    public final void addPromoter(NotifPromoter) { ... }
    public final Collection getAllNotifs() { ... }
    public final NotificationEntry getEntry(String) { ... }

} 