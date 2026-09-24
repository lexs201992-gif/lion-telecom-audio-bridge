package com.android.systemui.media.controls.resume;
import com.android.systemui.media.controls.resume.MediaResumeListener$userTrackerCallback$1;
import com.android.systemui.media.controls.resume.MediaResumeListener$mediaBrowserCallback$1;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.controls.resume.MediaResumeListener$userUnlockReceiver$1;
import java.util.concurrent.Executor;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.models.player.MediaData;
import java.io.PrintWriter;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import java.util.concurrent.ConcurrentLinkedQueue;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.media.controls.resume.ResumeMediaBrowser;
import java.lang.String;
import android.content.Context;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.media.controls.resume.ResumeMediaBrowserFactory;

public final class MediaResumeListener extends Object
{
/*
 * Field Definitions.
 */
      public final Executor backgroundExecutor;
      public final Context context;
      public int currentUserId;
      public ResumeMediaBrowser mediaBrowser;
      public final MediaResumeListener$mediaBrowserCallback$1 mediaBrowserCallback;
      public final ResumeMediaBrowserFactory mediaBrowserFactory;
      public MediaDataManager mediaDataManager;
      public final MediaFlags mediaFlags;
      public final ConcurrentLinkedQueue resumeComponents;
      public final SystemClock systemClock;
      public final TunerService tunerService;
      public boolean useMediaResumption;
      public final MediaResumeListener$userTrackerCallback$1 userTrackerCallback;
      public final MediaResumeListener$userUnlockReceiver$1 userUnlockReceiver;
/*
 * Declared Constructors.
 */
    public MediaResumeListener(Context, BroadcastDispatcher, UserTracker, Executor, Executor, TunerService, ResumeMediaBrowserFactory, DumpManager, SystemClock, MediaFlags) { ... }
    public final void dump(PrintWriter, String[]) { ... }
    public static void getUserUnlockReceiver$annotations() { ... }
    public final void loadSavedComponents() { ... }
    public final void onMediaDataLoaded(String, String, MediaData, boolean, int, boolean) { ... }
    public final void onMediaDataRemoved(String) { ... }
    public final void onSmartspaceMediaDataLoaded(String, SmartspaceMediaData, boolean) { ... }
    public final void onSmartspaceMediaDataRemoved(String, boolean) { ... }
    public final void setMediaBrowser(ResumeMediaBrowser) { ... }
    public final void writeSharedPrefs() { ... }

} 