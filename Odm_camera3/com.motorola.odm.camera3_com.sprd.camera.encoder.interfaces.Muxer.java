package com.sprd.camera.encoder.interfaces;
import android.media.MediaFormat;
import java.nio.ByteBuffer;
import android.media.MediaCodec$BufferInfo;
import java.util.concurrent.atomic.AtomicInteger;
import android.media.MediaMuxer;
import com.sprd.camera.encoder.interfaces.Muxer$MuxerCallBack;
import java.util.HashMap;
import java.lang.Object;
import java.lang.String;

public class Muxer extends Object
{
/*
 * Field Definitions.
 */
      volatile int endCount;
       Muxer$MuxerCallBack mCallBack;
       String mFilePath;
       HashMap mFrameCount;
       MediaMuxer mMuxer;
       Object mMuxerLock;
       int mOrientation;
       AtomicInteger mTrackCount;
       HashMap mTrackMap;
       HashMap mTrackStartTimeUs;
      private long mstartTimeUS;
/*
 * Declared Constructors.
 */
    public Muxer() { ... }
    public void decreaceTrack() { ... }
    public synchronized void increaceTrack() { ... }
    public void muxerInit(String) { ... }
    private void muxerStart() { ... }
    private void muxerStop() { ... }
    public void onEncodeDataAvailable(MediaFormat, MediaCodec$BufferInfo, ByteBuffer) { ... }
    public void onEncodeEnd(MediaFormat, long) { ... }
    public void onFormatChanged(MediaFormat) { ... }
    private void resetStatus() { ... }
    public void setCallBack(Muxer$MuxerCallBack) { ... }
    public void setOrientation(int) { ... }

} 