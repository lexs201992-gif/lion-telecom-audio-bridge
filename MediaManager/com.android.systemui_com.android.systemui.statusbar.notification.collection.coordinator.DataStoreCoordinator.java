package com.android.systemui.statusbar.notification.collection.coordinator;
import com.android.systemui.statusbar.notification.collection.NotifLiveDataStoreImpl;
import com.android.systemui.statusbar.notification.collection.PipelineDumper;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;

public final class DataStoreCoordinator extends Object
{
/*
 * Field Definitions.
 */
      public final NotifLiveDataStoreImpl notifLiveDataStoreImpl;
/*
 * Declared Constructors.
 */
    public DataStoreCoordinator(NotifLiveDataStoreImpl) { ... }
    public final void attach(NotifPipeline) { ... }
    public final void dumpPipeline(PipelineDumper) { ... }

} 