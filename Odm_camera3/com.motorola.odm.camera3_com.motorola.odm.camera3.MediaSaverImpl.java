package com.motorola.odm.camera3;
import java.util.concurrent.BlockingQueue;
import com.motorola.odm.camera3.app.MediaSaver$Listener;
import com.dream.camera.settings.DataModuleBasic;
import com.motorola.odm.camera3.util.XmpBuilder;
import android.content.ContentValues;
import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import android.location.Location;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.exif.ExifInterface;
import com.motorola.odm.camera3.app.MediaSaver$OnMediaSavedListener;
import android.net.Uri;
import java.lang.String;
import com.motorola.odm.camera3.app.MediaSaver$QueueListener;
import android.content.ContentResolver;

public class MediaSaverImpl extends Object
{
/*
 * Field Definitions.
 */
      private static final int CORE_POOL_SIZE;
      private static final int CPU_COUNT;
      private static final int MAXIMUM_POOL_SIZE;
      private static final int SAVE_TASK_MEMORY_LIMIT;
      private static final ExecutorService SINGLE_THREAD_POOL_EXECUTOR;
      private static final Log$Tag TAG;
      private static final Executor THREAD_POOL_EXECUTOR;
      private Context mAppContext;
      private final ContentResolver mContentResolver;
      private DataModuleBasic mDataModuleCurrent;
      private MediaSaver$Listener mListener;
      private long mMemoryUse;
      private MediaSaver$QueueListener mQueueListener;
      private static final BlockingQueue sPoolWorkQueue;
/*
 * Declared Constructors.
 */
    public MediaSaverImpl(Context) { ... }
    static volatile MediaSaver$Listener -$$Nest$fgetmListener(MediaSaverImpl) { ... }
    static volatile long -$$Nest$fgetmMemoryUse(MediaSaverImpl) { ... }
    static volatile void -$$Nest$fputmMemoryUse(MediaSaverImpl, long) { ... }
    static volatile void -$$Nest$monQueueAvailable(MediaSaverImpl) { ... }
    static volatile int -$$Nest$sfgetSAVE_TASK_MEMORY_LIMIT() { ... }
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    public void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener) { ... }
    public void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String) { ... }
    public void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String, String) { ... }
    public void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String, String, XmpBuilder) { ... }
    public void addImage(byte[], String, long, Location, int, ExifInterface, MediaSaver$OnMediaSavedListener) { ... }
    public void addMemoryUse(long) { ... }
    public void addVideo(String, ContentValues, MediaSaver$OnMediaSavedListener) { ... }
    public void clearMemoryUse() { ... }
    public boolean isEmptyQueue() { ... }
    public boolean isQueueFull() { ... }
    private void onQueueAvailable() { ... }
    private void onQueueFull() { ... }
    public void reduceMemoryUse(long) { ... }
    public void setListener(MediaSaver$Listener) { ... }
    public void setQueueListener(MediaSaver$QueueListener) { ... }
    public static int staticGetLargeMemory() { ... }
    public void updateImage(Uri, byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String, String) { ... }

} 