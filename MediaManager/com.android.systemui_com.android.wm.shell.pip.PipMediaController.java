package com.android.wm.shell.pip;
import com.android.wm.shell.pip.PipMediaController$1;
import android.media.session.MediaSessionManager;
import android.os.Handler;
import java.util.List;
import java.util.ArrayList;
import android.content.Context;
import com.android.wm.shell.pip.PipMediaController$$ExternalSyntheticLambda0;
import android.app.RemoteAction;
import android.os.HandlerExecutor;
import android.media.session.MediaController;
import java.lang.String;
import com.android.wm.shell.pip.PipMediaController$2;

public final class PipMediaController extends Object
{
/*
 * Field Definitions.
 */
      public final ArrayList mActionListeners;
      public final Context mContext;
      public final HandlerExecutor mHandlerExecutor;
      public final Handler mMainHandler;
      public final PipMediaController$1 mMediaActionReceiver;
      public MediaController mMediaController;
      public final MediaSessionManager mMediaSessionManager;
      public final ArrayList mMetadataListeners;
      public final RemoteAction mNextAction;
      public final RemoteAction mPauseAction;
      public final RemoteAction mPlayAction;
      public final PipMediaController$2 mPlaybackChangedListener;
      public final RemoteAction mPrevAction;
      public final PipMediaController$$ExternalSyntheticLambda0 mSessionsChangedListener;
      public final ArrayList mTokenListeners;
/*
 * Declared Constructors.
 */
    public PipMediaController(Context, Handler) { ... }
    public final RemoteAction getDefaultRemoteAction(int, int, String) { ... }
    public final List getMediaActions() { ... }
    public final void resolveActiveMediaController(List) { ... }
    public final void setActiveMediaController(MediaController) { ... }

} 