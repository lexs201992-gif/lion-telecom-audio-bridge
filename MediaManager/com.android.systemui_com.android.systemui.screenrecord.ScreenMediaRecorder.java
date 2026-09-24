package com.android.systemui.screenrecord;
import android.media.MediaRecorder;
import java.io.File;
import android.os.Handler;
import android.content.Context;
import com.android.systemui.screenrecord.ScreenMediaRecorder$ScreenMediaRecorderListener;
import android.media.projection.MediaProjection;
import android.view.Surface;
import android.hardware.display.VirtualDisplay;
import com.android.systemui.screenrecord.ScreenInternalAudioRecorder;
import com.android.systemui.screenrecord.ScreenRecordingAudioSource;
import com.android.systemui.media.MediaProjectionCaptureTarget;
import com.android.systemui.screenrecord.ScreenMediaRecorder$SavedRecording;

public final class ScreenMediaRecorder extends MediaProjection$Callback
{
/*
 * Field Definitions.
 */
      public ScreenInternalAudioRecorder mAudio;
      public final ScreenRecordingAudioSource mAudioSource;
      public final MediaProjectionCaptureTarget mCaptureRegion;
      public final Context mContext;
      public final Handler mHandler;
      public Surface mInputSurface;
      public final ScreenMediaRecorder$ScreenMediaRecorderListener mListener;
      public MediaProjection mMediaProjection;
      public MediaRecorder mMediaRecorder;
      public File mTempAudioFile;
      public File mTempVideoFile;
      public final int mUser;
      public VirtualDisplay mVirtualDisplay;
/*
 * Declared Constructors.
 */
    public ScreenMediaRecorder(Context, Handler, int, ScreenRecordingAudioSource, MediaProjectionCaptureTarget, ScreenMediaRecorder$ScreenMediaRecorderListener) { ... }
    public final void end() { ... }
    public final void onStop() { ... }
    public final ScreenMediaRecorder$SavedRecording save() { ... }
    public final void start() { ... }

} 