package com.android.systemui.statusbar.notification.collection.listbuilder;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.Pluggable;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.GroupEntry;
import java.util.List;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.NotifSection;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifPromoter;
import java.lang.String;

public final class ShadeListBuilderLogger extends Object
{
/*
 * Field Definitions.
 */
      public final LogBuffer buffer;
/*
 * Declared Constructors.
 */
    public ShadeListBuilderLogger(LogBuffer) { ... }
    public final void logDuplicateSummary(int, GroupEntry, NotificationEntry, NotificationEntry) { ... }
    public final void logDuplicateTopLevelKey(int, String) { ... }
    public final void logEndBuildList(int, int, int, boolean) { ... }
    public final void logEntryAttachStateChanged(int, ListEntry, GroupEntry, GroupEntry) { ... }
    public final void logFilterChanged(int, NotifFilter, NotifFilter) { ... }
    public final void logFinalList(List) { ... }
    public final void logGroupPruningSuppressed(int, GroupEntry) { ... }
    public final void logOnBuildList(String) { ... }
    public final void logParentChangeSuppressedStarted(int, GroupEntry, GroupEntry) { ... }
    public final void logParentChangeSuppressedStopped(int, GroupEntry, GroupEntry) { ... }
    public final void logParentChanged(int, GroupEntry, GroupEntry) { ... }
    public final void logPipelineRunSuppressed() { ... }
    public final void logPluggableInvalidated(String, Pluggable, int, String) { ... }
    public final void logPromoterChanged(int, NotifPromoter, NotifPromoter) { ... }
    public final void logPrunedReasonChanged(String, String, int) { ... }
    public final void logSectionChangeSuppressed(int, NotifSection, NotifSection) { ... }
    public final void logSectionChanged(int, NotifSection, NotifSection) { ... }

} 