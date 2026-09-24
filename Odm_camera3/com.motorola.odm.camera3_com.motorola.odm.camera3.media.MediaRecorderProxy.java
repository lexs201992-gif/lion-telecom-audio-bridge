package com.motorola.odm.camera3.media;
import java.lang.ref.WeakReference;
import java.io.FileDescriptor;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.lang.IllegalArgumentException;
import com.motorola.odm.camera3.media.MediaRecorderProxy$StateRunnable;
import java.util.concurrent.locks.Condition;
import android.util.SparseArray;
import android.media.MediaRecorder$OnErrorListener;
import android.os.Handler;
import android.media.MediaRecorder$OnInfoListener;
import com.motorola.odm.camera3.media.MediaRecorderProxy$CrashRunnable;
import com.motorola.odm.camera3.media.MediaRecorderProxy$OnStateChangeListener;
import java.lang.IllegalStateException;
import java.io.IOException;
import android.view.Surface;
import java.util.concurrent.locks.ReentrantLock;
import java.lang.Exception;
import com.motorola.odm.camera3.CameraActivity;
import com.android.ex.camera2.portability.Counter;
import android.media.MediaRecorder;
import com.motorola.odm.camera3.debug.Log$Tag;
import android.hardware.Camera;
import com.motorola.odm.camera3.media.MediaRecorderProxy$Runnable;
import java.lang.String;

public class MediaRecorderProxy extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private final SparseArray mConditions;
      private WeakReference mContext;
      private final ConcurrentLinkedDeque mCounters;
      private int mCurrentState;
      private final Handler mHandler;
      private MediaRecorder mMediaRecorder;
      private final MediaRecorderProxy$OnStateChangeListener mOnStateChangeListener;
      private final ReentrantLock mReentrantLock;
/*
 * Declared Constructors.
 */
    private MediaRecorderProxy(Handler, MediaRecorderProxy$OnStateChangeListener) { ... }
    public MediaRecorderProxy(CameraActivity, MediaRecorderProxy$OnStateChangeListener) { ... }
    public static void $r8$lambda$1NFsH_Pq4H80DsS3Uo1HGXqu38c(MediaRecorderProxy) { ... }
    public static void $r8$lambda$3Ai-l1xB7Q4Ht8eOXzeYIgb9FQE(MediaRecorderProxy) { ... }
    public static void $r8$lambda$4PA2pO79RMVWBCD2SPtm1PGjZDw(MediaRecorderProxy, long) { ... }
    public static void $r8$lambda$5SUh_tLaGt-_XQqMxXe1kFs4lVE(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$5dkySeAj0PkYzmomV3Jms6J1FV0(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$6Bqm9dQ7T3mMUFRe0YGykaNX47E(MediaRecorderProxy, MediaRecorderProxy$Runnable, Exception[], Counter) { ... }
    public static void $r8$lambda$8LRHYLyfnEVG2MoYl-uGaBPcP9k(MediaRecorderProxy, MediaRecorder$OnInfoListener) { ... }
    public static void $r8$lambda$9P2Ds6kn2nqM9-_kYvNIlBbhFUw(MediaRecorderProxy, MediaRecorder$OnErrorListener) { ... }
    public static void $r8$lambda$9cxEqFEcPV6SCICJS_izVVsNcOI(MediaRecorderProxy, MediaRecorder) { ... }
    public static void $r8$lambda$9yi139fmjhDDOpB3Oxj_ArX9IDQ(MediaRecorderProxy, double) { ... }
    public static void $r8$lambda$DeR732SWKq3hrnKihbamPYeizFI(MediaRecorderProxy) { ... }
    public static void $r8$lambda$GphjyEs0dV6GKezJlQdp-9xsxxo(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$HtmUJM03rIa9Ubj9kuH4hUT6C7Y(MediaRecorderProxy, Camera) { ... }
    public static void $r8$lambda$K7FYMtbr5rEBXDPZ3zcXF1TgZRw(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$Q2my_uO_9ZArRApPZK0_BjjveAE(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$Rkrnxilkf3Jh9PmhxW-ml1wgi68(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$Tds_MtqUbRDzPNIu-Ym56EJ895E(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$TsIhnBveeeBoSz3OiRWntUZ9Ubo(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$X0Bd7hMwpf3zYcprTYNvxInT2Dk(MediaRecorderProxy, String) { ... }
    public static void $r8$lambda$ZPc9-9nALV867kPFg8hfiFbXZFI(MediaRecorderProxy, Surface) { ... }
    public static void $r8$lambda$_IrOzvij8PCu4OIPRfl0zrRyBaw(MediaRecorderProxy, int, int) { ... }
    public static void $r8$lambda$cbilSSu2YkiIxmygpPAofyyQXv4(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$doElFAd8GlJ8n_B3zbReRC72AVE(MediaRecorderProxy, float, float) { ... }
    public static void $r8$lambda$dq78_Mm-KPEpSvpYslxORVvSxxM(MediaRecorderProxy) { ... }
    public static void $r8$lambda$lGa8UqSMMoswt6p7Uhc4oftQOC8(MediaRecorderProxy, int, int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$Runnable[], Exception[], Counter) { ... }
    public static void $r8$lambda$nVw7XameT7bGcMQcfRAR6H58MpQ(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$po7BfCSopn93ujhJI9jjOzHG6tQ(MediaRecorderProxy) { ... }
    public static void $r8$lambda$r3Mv2VuQSSj_tTG-N9F79GzyFkk(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$rHZr5XNq3PsijAvU68Oj_m3r37w(MediaRecorderProxy, int, int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$CrashRunnable[]) { ... }
    public static void $r8$lambda$stEOorswPUZbVPCT46fe-tso8ww(MediaRecorderProxy) { ... }
    public static void $r8$lambda$v4IjLv4QLctOKx_ED2OSzmKrjYk(MediaRecorderProxy, int) { ... }
    public static void $r8$lambda$wSOBv8NqNWN2BbYJECFkMWt1fD0(MediaRecorderProxy, FileDescriptor) { ... }
    static volatile SparseArray -$$Nest$fgetmConditions(MediaRecorderProxy) { ... }
    static volatile int -$$Nest$fgetmCurrentState(MediaRecorderProxy) { ... }
    static volatile MediaRecorder -$$Nest$fgetmMediaRecorder(MediaRecorderProxy) { ... }
    static volatile ReentrantLock -$$Nest$fgetmReentrantLock(MediaRecorderProxy) { ... }
    static volatile void -$$Nest$fputmCurrentState(MediaRecorderProxy, int) { ... }
    static volatile void -$$Nest$munlock(MediaRecorderProxy, Condition) { ... }
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    private void change(MediaRecorderProxy$Runnable)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private transient void changeState(int, int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$CrashRunnable[]) { ... }
    private transient void changeStateAsync(int, int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$CrashRunnable[]) { ... }
    private transient void changeStateAsync(int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$CrashRunnable[]) { ... }
    private transient void changeStateSync(int, int, Counter, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$Runnable[])  throws IllegalStateExceptionIOException{ ... }
    private transient void changeStateSync(int, int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$Runnable[])  throws IllegalStateExceptionIOException{ ... }
    private transient void changeStateSync(int, Counter, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$Runnable[])  throws IllegalStateExceptionIOException{ ... }
    private boolean checkCurrentState(int) { ... }
    public void clear() { ... }
    private void convertException(Exception)  throws IOException{ ... }
    public Surface getSurface() { ... }
    private boolean isPaused() { ... }
    public boolean isPrepareComplete() { ... }
    private void lambda$change$31(MediaRecorderProxy$Runnable, Exception[], Counter) { ... }
    private void lambda$changeStateAsync$30(int, int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$CrashRunnable[]) { ... }
    private void lambda$changeStateSync$29(int, int, MediaRecorderProxy$StateRunnable, MediaRecorderProxy$Runnable[], Exception[], Counter) { ... }
    private void lambda$clear$32()  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$new$0(MediaRecorder) { ... }
    private void lambda$pause$27()  throws IllegalStateExceptionIOException{ ... }
    private void lambda$release$25()  throws IllegalStateExceptionIOException{ ... }
    private void lambda$reset$24()  throws IllegalStateExceptionIOException{ ... }
    private void lambda$resume$28()  throws IllegalStateExceptionIOException{ ... }
    private void lambda$setAudioChannels$9(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setAudioEncoder$7(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setAudioEncodingBitRate$8(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setAudioSamplingRate$10(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setAudioSource$6(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setCamera$18(Camera)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setCaptureRate$19(double)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setInputSurface$15(Surface)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setLocation$20(float, float)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setMaxDuration$16(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setMaxFileSize$17(long)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setOnErrorListener$22(MediaRecorder$OnErrorListener)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setOnInfoListener$23(MediaRecorder$OnInfoListener)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setOrientationHint$21(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setOutputFile$11(FileDescriptor)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setOutputFile$13(String)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setOutputFormat$14(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setVideoEncoder$2(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setVideoEncodingBitRate$3(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setVideoFrameRate$5(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setVideoSize$4(int, int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$setVideoSource$1(int)  throws IllegalStateExceptionIllegalArgumentException{ ... }
    private void lambda$start$26()  throws IllegalStateExceptionIOException{ ... }
    private void lock(Condition) { ... }
    public void pause() { ... }
    public transient void prepare(MediaRecorderProxy$CrashRunnable[])  throws IllegalStateException{ ... }
    public void release() { ... }
    public void reset() { ... }
    public void resume()  throws IllegalStateException{ ... }
    public void setAudioChannels(int)  throws IllegalArgumentException{ ... }
    public void setAudioEncoder(int)  throws IllegalStateException{ ... }
    public void setAudioEncodingBitRate(int)  throws IllegalArgumentException{ ... }
    public void setAudioSamplingRate(int)  throws IllegalArgumentException{ ... }
    public void setAudioSource(int)  throws IllegalStateException{ ... }
    public void setCamera(Camera) { ... }
    public void setCaptureRate(double) { ... }
    public void setInputSurface(Surface)  throws IllegalArgumentException{ ... }
    public void setLocation(float, float)  throws IllegalArgumentException{ ... }
    public void setMaxDuration(int)  throws IllegalArgumentException{ ... }
    public void setMaxFileSize(long)  throws IllegalArgumentException{ ... }
    public void setOnErrorListener(MediaRecorder$OnErrorListener) { ... }
    public void setOnInfoListener(MediaRecorder$OnInfoListener) { ... }
    public void setOrientationHint(int)  throws IllegalArgumentException{ ... }
    public void setOutputFile(FileDescriptor)  throws IllegalStateException{ ... }
    public void setOutputFile(String)  throws IllegalStateException{ ... }
    public void setOutputFormat(int)  throws IllegalStateException{ ... }
    public void setVideoEncoder(int)  throws IllegalStateException{ ... }
    public void setVideoEncodingBitRate(int)  throws IllegalArgumentException{ ... }
    public void setVideoFrameRate(int)  throws IllegalStateException{ ... }
    public void setVideoSize(int, int)  throws IllegalStateException{ ... }
    public void setVideoSource(int)  throws IllegalStateException{ ... }
    public transient void start(MediaRecorderProxy$Runnable[])  throws IllegalStateException{ ... }
    public transient void stop(MediaRecorderProxy$Runnable[])  throws IllegalStateException{ ... }
    private void unlock(Condition) { ... }

} 