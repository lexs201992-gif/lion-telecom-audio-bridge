package com.android.systemui.media.controls.resume;
import com.android.systemui.media.controls.resume.ResumeMediaBrowser$SessionDestroyCallback;
import com.android.systemui.media.controls.resume.MediaBrowserFactory;
import com.android.systemui.media.controls.resume.ResumeMediaBrowser$Callback;
import android.content.ComponentName;
import com.android.systemui.media.controls.resume.ResumeMediaBrowserLogger;
import android.media.session.MediaSession$Token;
import android.content.Context;
import com.android.systemui.media.controls.resume.ResumeMediaBrowser$2;
import com.android.systemui.media.controls.resume.ResumeMediaBrowser$1;
import android.media.browse.MediaBrowser;
import android.media.session.MediaController;
import java.lang.String;

public final class ResumeMediaBrowser extends Object
{
/*
 * Field Definitions.
 */
      public final MediaBrowserFactory mBrowserFactory;
      public final ResumeMediaBrowser$Callback mCallback;
      public final ComponentName mComponentName;
      public final ResumeMediaBrowser$2 mConnectionCallback;
      public final Context mContext;
      public final ResumeMediaBrowserLogger mLogger;
      public MediaBrowser mMediaBrowser;
      public MediaController mMediaController;
      public final ResumeMediaBrowser$SessionDestroyCallback mMediaControllerCallback;
      public final ResumeMediaBrowser$1 mSubscriptionCallback;
      public final int mUserId;
/*
 * Declared Constructors.
 */
    public ResumeMediaBrowser(Context, ResumeMediaBrowser$Callback, ComponentName, MediaBrowserFactory, ResumeMediaBrowserLogger, int) { ... }
    public final void connectBrowser(MediaBrowser, String) { ... }
    public MediaController createMediaController(MediaSession$Token) { ... }
    public final void disconnect() { ... }
    public final boolean isBrowserConnected() { ... }
    public final void updateMediaController() { ... }

} 