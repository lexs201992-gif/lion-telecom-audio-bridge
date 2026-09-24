package com.android.systemui.statusbar.notification.collection.coordinator;
import com.android.systemui.statusbar.notification.people.PeopleNotificationIdentifierImpl;
import com.android.systemui.statusbar.notification.collection.provider.HighPriorityProvider;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.coordinator.ConversationCoordinator$onBeforeRenderListListener$1;
import com.android.systemui.statusbar.notification.collection.coordinator.ConversationCoordinator$notificationPromoter$1;
import com.android.systemui.statusbar.notification.collection.ListEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.ConversationCoordinator$notifComparator$1;
import com.android.systemui.statusbar.notification.collection.coordinator.ConversationCoordinator$peopleSilentSectioner$1;
import java.util.Map;
import com.android.systemui.statusbar.notification.icon.IconManager;

public final class ConversationCoordinator extends Object
{
/*
 * Field Definitions.
 */
      public final IconManager conversationIconManager;
      public final HighPriorityProvider highPriorityProvider;
      public final ConversationCoordinator$notifComparator$1 notifComparator;
      public final ConversationCoordinator$notificationPromoter$1 notificationPromoter;
      public final ConversationCoordinator$onBeforeRenderListListener$1 onBeforeRenderListListener;
      public final ConversationCoordinator$peopleSilentSectioner$1 peopleAlertingSectioner;
      public final PeopleNotificationIdentifierImpl peopleNotificationIdentifier;
      public final ConversationCoordinator$peopleSilentSectioner$1 peopleSilentSectioner;
      public final Map promotedEntriesToSummaryOfSameChannel;
/*
 * Declared Constructors.
 */
    public ConversationCoordinator(PeopleNotificationIdentifierImpl, IconManager, HighPriorityProvider) { ... }
    public final void attach(NotifPipeline) { ... }
    public final int getPeopleType(ListEntry) { ... }

} 