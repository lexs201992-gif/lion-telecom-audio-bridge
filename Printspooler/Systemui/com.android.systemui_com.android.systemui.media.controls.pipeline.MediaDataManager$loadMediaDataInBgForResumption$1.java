package com.android.systemui.media.controls.pipeline;
import java.lang.Runnable;
import android.app.PendingIntent;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import java.lang.Double;
import android.media.session.MediaSession$Token;
import com.android.internal.logging.InstanceId;
import com.android.systemui.media.controls.models.player.MediaAction;
import android.media.MediaDescription;
import android.graphics.drawable.Icon;
import java.lang.String;

public final class MediaDataManager$loadMediaDataInBgForResumption$1 extends Object
{
/*
 * Field Definitions.
 */
      public final PendingIntent $appIntent;
      public final String $appName;
      public final int $appUid;
      public final Icon $artworkIcon;
      public final MediaDescription $desc;
      public final InstanceId $instanceId;
      public final boolean $isExplicit;
      public final long $lastActive;
      public final MediaAction $mediaAction;
      public final String $packageName;
      public final Double $progress;
      public final Runnable $resumeAction;
      public final MediaSession$Token $token;
      public final int $userId;
      public final MediaDataManager this$0;
/*
 * Declared Constructors.
 */
    public MediaDataManager$loadMediaDataInBgForResumption$1(MediaDataManager, String, int, String, MediaDescription, Icon, MediaAction, MediaSession$Token, PendingIntent, Runnable, long, InstanceId, int, boolean, Double) { ... }
    public final void run() { ... }

} 