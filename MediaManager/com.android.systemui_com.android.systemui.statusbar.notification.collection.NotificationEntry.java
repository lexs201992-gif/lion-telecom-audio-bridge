package com.android.systemui.statusbar.notification.collection;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRowController;
import com.android.systemui.statusbar.notification.collection.NotificationEntry$DismissState;
import com.android.systemui.statusbar.notification.collection.NotificationEntry$EditedSuggestionInfo;
import android.view.ContentInfo;
import java.util.List;
import com.android.systemui.util.ListenerSet;
import com.android.systemui.statusbar.notification.icon.IconPack;
import android.service.notification.StatusBarNotification;
import android.service.notification.NotificationListenerService$Ranking;
import java.lang.CharSequence;
import android.app.Notification$BubbleMetadata;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.InflationTask;
import android.app.NotificationChannel;
import android.net.Uri;
import java.lang.String;

public final class NotificationEntry extends ListEntry
{
/*
 * Field Definitions.
 */
      public NotificationEntry$EditedSuggestionInfo editedSuggestionInfo;
      public boolean hasSentReply;
      public CharSequence headsUpStatusBarText;
      public CharSequence headsUpStatusBarTextPublic;
      public long initializationTime;
      public boolean interruption;
      public long lastFullScreenIntentLaunchTime;
      public long lastRemoteInputSent;
      public boolean mBlockable;
      public Notification$BubbleMetadata mBubbleMetadata;
      public int mBucket;
      public int mCachedContrastColor;
      public int mCachedContrastColorIsFor;
      public int mCancellationReason;
      public final List mDismissInterceptors;
      public NotificationEntry$DismissState mDismissState;
      public boolean mExpandAnimationRunning;
      public IconPack mIcons;
      public boolean mIsAlerting;
      public boolean mIsDemoted;
      public boolean mIsMarkedForUserTriggeredMovement;
      public final String mKey;
      public final List mLifetimeExtenders;
      public final ListenerSet mOnSensitivityChangedListeners;
      public boolean mPulseSupressed;
      public NotificationListenerService$Ranking mRanking;
      public boolean mRemoteEditImeAnimatingAway;
      public boolean mRemoteEditImeVisible;
      public ExpandableNotificationRowController mRowController;
      public InflationTask mRunningTask;
      public StatusBarNotification mSbn;
      public boolean mSensitive;
      public ContentInfo remoteInputAttachment;
      public String remoteInputMimeType;
      public CharSequence remoteInputText;
      public CharSequence remoteInputTextWhenReset;
      public Uri remoteInputUri;
      public ExpandableNotificationRow row;
      public int targetSdk;
/*
 * Declared Constructors.
 */
    public NotificationEntry(StatusBarNotification, NotificationListenerService$Ranking, long) { ... }
    public final boolean abortTask() { ... }
    public final List getAttachedNotifChildren() { ... }
    public final NotificationChannel getChannel() { ... }
    public final int getImportance() { ... }
    public final String getKey() { ... }
    public final NotificationEntry getRepresentativeEntry() { ... }
    public InflationTask getRunningTask() { ... }
    public final boolean hasFinishedInitialization() { ... }
    public final boolean isBubble() { ... }
    public final boolean isCanceled() { ... }
    public final boolean isClearable() { ... }
    public boolean isDemoted() { ... }
    public boolean isExemptFromDndVisualSuppression() { ... }
    public final boolean isRowPinned() { ... }
    public final boolean isStickyAndNotDemoted() { ... }
    public final boolean legacyIsDismissableRecursive() { ... }
    public final boolean rowExists() { ... }
    public void setCreationElapsedRealTime(long) { ... }
    public final void setHeadsUp(boolean) { ... }
    public final void setRanking(NotificationListenerService$Ranking) { ... }
    public final void setSbn(StatusBarNotification) { ... }
    public final boolean shouldSuppressVisualEffect(int) { ... }

} 