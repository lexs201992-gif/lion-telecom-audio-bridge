package com.android.systemui.volume;
import java.lang.String;
import android.content.Context;
import android.media.session.MediaSession$Token;
import java.util.HashMap;
import com.android.systemui.volume.VolumeDialogControllerImpl;

public final class VolumeDialogControllerImpl$MediaSessionsCallbacks extends Object
{
/*
 * Field Definitions.
 */
      public int mNextStream;
      public final HashMap mRemoteStreams;
      public final boolean mVolumeAdjustmentForRemoteGroupSessions;
      public final VolumeDialogControllerImpl this$0;
/*
 * Declared Constructors.
 */
    public VolumeDialogControllerImpl$MediaSessionsCallbacks(VolumeDialogControllerImpl, Context) { ... }
    public final void addStream(MediaSession$Token, String) { ... }
    public final void onRemoteRemoved(MediaSession$Token) { ... }
    public final boolean showForSession(MediaSession$Token) { ... }

} 