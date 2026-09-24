package com.sprd.USCPhotosProvider.providers.photos;
import java.lang.Object;
import android.net.Uri;
import android.content.Context;
import android.graphics.Bitmap;
import com.sprd.USCPhotosProvider.providers.photos.api.ProcessingMetadataQuery$ProgressStatus;
import java.util.concurrent.atomic.AtomicInteger;

static final class ProcessingMediaManager$ProcessingMedia extends Object
{
/*
 * Field Definitions.
 */
      private Bitmap bitmap;
      private final Object bitmapLock;
      private Context context;
      private final long mediaStoreId;
      private final AtomicInteger progressPercentage;
      private final ProcessingMetadataQuery$ProgressStatus progressStatus;
/*
 * Declared Constructors.
 */
     ProcessingMediaManager$ProcessingMedia(Context, long, ProcessingMetadataQuery$ProgressStatus) { ... }
     Bitmap getBitmap(Uri) { ... }
     long getMediaStoreId() { ... }
     int getProgressPercentage() { ... }
     int getProgressStatus() { ... }

} 