package com.android.systemui.statusbar.notification.collection;
import com.android.systemui.util.ListenerSet;
import com.android.systemui.util.concurrency.ExecutorImpl$ExecutionToken;
import com.android.systemui.statusbar.notification.collection.NotifPipelineChoreographerImpl$frameCallback$1;
import com.android.systemui.util.concurrency.DelayableExecutor;
import android.view.Choreographer;

public final class NotifPipelineChoreographerImpl extends Object
{
/*
 * Field Definitions.
 */
      public final DelayableExecutor executor;
      public final NotifPipelineChoreographerImpl$frameCallback$1 frameCallback;
      public boolean isScheduled;
      public final ListenerSet listeners;
      public ExecutorImpl$ExecutionToken timeoutSubscription;
      public final Choreographer viewChoreographer;
/*
 * Declared Constructors.
 */
    public NotifPipelineChoreographerImpl(Choreographer, DelayableExecutor) { ... }
    public final void schedule() { ... }

} 