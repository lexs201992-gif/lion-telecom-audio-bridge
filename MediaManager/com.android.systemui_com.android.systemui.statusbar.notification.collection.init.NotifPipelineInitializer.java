package com.android.systemui.statusbar.notification.collection.init;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.coalescer.GroupCoalescer;
import com.android.systemui.statusbar.notification.collection.ShadeListBuilder;
import com.android.systemui.statusbar.notification.collection.NotifInflaterImpl;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.notification.collection.PipelineDumper;
import com.android.systemui.dagger.DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$1;
import com.android.systemui.statusbar.notification.collection.render.ShadeViewManager;
import com.android.systemui.statusbar.notification.collection.coordinator.NotifCoordinators;
import com.android.systemui.statusbar.NotificationListener;
import java.io.PrintWriter;
import java.lang.String;
import com.android.systemui.statusbar.notification.collection.render.RenderStageManager;

public final class NotifPipelineInitializer extends Object
{
/*
 * Field Definitions.
 */
      public final DumpManager mDumpManager;
      public final GroupCoalescer mGroupCoalescer;
      public final ShadeListBuilder mListBuilder;
      public final NotifCollection mNotifCollection;
      public final NotifInflaterImpl mNotifInflater;
      public final NotifCoordinators mNotifPluggableCoordinators;
      public NotificationListener mNotificationService;
      public final NotifPipeline mPipelineWrapper;
      public final RenderStageManager mRenderStageManager;
      public ShadeViewManager mShadeViewManager;
      public final DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$1 mShadeViewManagerFactory;
/*
 * Declared Constructors.
 */
    public NotifPipelineInitializer(NotifPipeline, GroupCoalescer, NotifCollection, ShadeListBuilder, RenderStageManager, NotifCoordinators, NotifInflaterImpl, DumpManager, DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$1) { ... }
    public final void dump(PrintWriter, String[]) { ... }
    public final void dumpPipeline(PipelineDumper) { ... }

} 