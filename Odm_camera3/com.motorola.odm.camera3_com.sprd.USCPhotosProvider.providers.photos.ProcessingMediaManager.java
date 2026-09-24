package com.sprd.USCPhotosProvider.providers.photos;
import com.sprd.USCPhotosProvider.providers.photos.ProcessingMediaManager$ProcessingMedia;
import android.os.Handler;
import android.content.Context;
import java.util.List;
import java.util.Map;

public class ProcessingMediaManager extends Object
{
/*
 * Field Definitions.
 */
      private static final long REMOVE_DELAY_MILLIS;
      private final Context context;
      private final Handler handler;
      private static volatile ProcessingMediaManager instance;
      private final Map processingMediaMap;
/*
 * Declared Constructors.
 */
    private ProcessingMediaManager(Context) { ... }
    static volatile void -$$Nest$mhandleProcessingTimeOut(ProcessingMediaManager, long) { ... }
     void add(long) { ... }
     ProcessingMediaManager$ProcessingMedia get(long) { ... }
    public static ProcessingMediaManager getInstance(Context) { ... }
     List getProcessingMedia() { ... }
    private void handleProcessingTimeOut(long) { ... }
    private void notifyProcessingUri(long) { ... }
    public void release() { ... }
    public void remove(long, boolean) { ... }

} 