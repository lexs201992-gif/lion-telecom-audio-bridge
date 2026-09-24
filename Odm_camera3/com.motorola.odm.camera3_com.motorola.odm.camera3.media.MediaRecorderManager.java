package com.motorola.odm.camera3.media;
import android.os.Handler;
import java.util.concurrent.CountDownLatch;
import com.motorola.odm.camera3.debug.Log$Tag;
import android.os.HandlerThread;
import androidx.lifecycle.LifecycleOwner;

public class MediaRecorderManager extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private final CountDownLatch mCountDownLatch;
      private Handler mHandler;
      private HandlerThread mHandlerThread;
/*
 * Declared Constructors.
 */
    public MediaRecorderManager() { ... }
    public Handler getBlockingHandler() { ... }
    public void onCreate(LifecycleOwner) { ... }
    public void onDestroy(LifecycleOwner) { ... }

} 