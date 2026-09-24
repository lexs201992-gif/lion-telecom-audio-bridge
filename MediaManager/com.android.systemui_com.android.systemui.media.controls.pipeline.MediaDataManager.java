package com.android.systemui.media.controls.pipeline;
import java.util.Set;
import com.android.systemui.media.controls.util.MediaControllerFactory;
import android.app.smartspace.SmartspaceManager;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.media.controls.pipeline.MediaDeviceManager;
import com.android.systemui.tuner.TunerService;
import java.lang.String;
import com.android.internal.logging.InstanceId;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.controls.util.MediaUiEventLogger;
import android.media.session.MediaController;
import com.android.systemui.media.controls.models.player.MediaAction;
import android.content.Context;
import com.android.systemui.util.time.SystemClock;
import android.app.PendingIntent;
import java.util.List;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import android.os.UserHandle;
import com.android.systemui.media.controls.pipeline.MediaSessionBasedFilter;
import java.util.concurrent.Executor;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.util.concurrency.DelayableExecutor;
import kotlin.sequences.TransformingSequence$iterator$1;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.media.controls.models.player.MediaButton;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.lang.Runnable;
import android.app.smartspace.SmartspaceSession;
import com.android.systemui.media.controls.pipeline.MediaDataCombineLatest;
import android.graphics.Bitmap;
import android.app.StatusBarManager;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.media.controls.resume.MediaResumeListener;
import android.service.notification.StatusBarNotification;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaDataProvider;
import com.android.systemui.media.controls.pipeline.MediaTimeoutListener;
import android.net.Uri;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.media.controls.pipeline.MediaDataFilter;

public final class MediaDataManager extends Object
{
/*
 * Field Definitions.
 */
      public static final int MAX_NOTIFICATION_ACTIONS;
      public final ActivityStarter activityStarter;
      public boolean allowMediaRecommendations;
      public final int artworkHeight;
      public final int artworkWidth;
      public final Executor backgroundExecutor;
      public final Context context;
      public final DelayableExecutor foregroundExecutor;
      public final Set internalListeners;
      public final KeyguardUpdateMonitor keyguardUpdateMonitor;
      public final MediaUiEventLogger logger;
      public final MediaControllerFactory mediaControllerFactory;
      public final MediaDataFilter mediaDataFilter;
      public final LinkedHashMap mediaEntries;
      public final MediaFlags mediaFlags;
      public SmartspaceMediaData smartspaceMediaData;
      public final SmartspaceMediaDataProvider smartspaceMediaDataProvider;
      private SmartspaceSession smartspaceSession;
      public final StatusBarManager statusBarManager;
      public final SystemClock systemClock;
      public final int themeText;
      public boolean useMediaResumption;
      public final boolean useQsMediaPlayer;
/*
 * Declared Constructors.
 */
    public MediaDataManager(Context, Executor, Executor, DelayableExecutor, MediaControllerFactory, DumpManager, BroadcastDispatcher, MediaTimeoutListener, MediaResumeListener, MediaSessionBasedFilter, MediaDeviceManager, MediaDataCombineLatest, MediaDataFilter, ActivityStarter, SmartspaceMediaDataProvider, SystemClock, TunerService, MediaFlags, MediaUiEventLogger, SmartspaceManager, KeyguardUpdateMonitor) { ... }
    public static final void access$removeAllForPackage(MediaDataManager, String) { ... }
    public static final boolean access$sendPendingIntent(MediaDataManager, PendingIntent) { ... }
    public final void convertToResumePlayer(MediaData, String) { ... }
    public final MediaButton createActionsFromState(String, MediaController, UserHandle) { ... }
    public static final MediaAction createActionsFromState$nextCustomAction(TransformingSequence$iterator$1) { ... }
    public final boolean dismissMediaData(long, String) { ... }
    public final void dismissSmartspaceRecommendation(long, String) { ... }
    public final void dump(PrintWriter, String[]) { ... }
    public final MediaAction getResumeMediaAction(Runnable) { ... }
    public final MediaAction getStandardAction(MediaController, long, long) { ... }
    public final boolean hasActiveMediaOrRecommendation() { ... }
    public final Bitmap loadBitmapFromUri(Uri) { ... }
    public final void logSingleVsMultipleMediaAdded(int, InstanceId, String) { ... }
    public final void notifyMediaDataLoaded(String, String, MediaData) { ... }
    public final void notifyMediaDataRemoved(String) { ... }
    public final void notifySmartspaceMediaDataRemoved(String, boolean) { ... }
    public final void onMediaDataLoaded(String, String, MediaData) { ... }
    public final void onNotificationAdded(StatusBarNotification, String) { ... }
    public final void onNotificationRemoved(String) { ... }
    public final void onSmartspaceTargetsUpdated(List) { ... }
    public static void removeEntry$default(MediaDataManager, String) { ... }
    public final void setTimedOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(String, boolean, boolean) { ... }

} 