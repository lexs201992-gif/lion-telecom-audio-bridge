package com.android.printspooler.util;
import java.lang.String;
import java.lang.Object;
import android.content.Context;
import java.util.Map;
import android.content.res.Configuration;
import android.print.PrintAttributes$MediaSize;

public static final class MediaSizeUtils$MediaSizeComparator extends Object
{
/*
 * Field Definitions.
 */
      private final Context mContext;
      private Configuration mCurrentConfig;
      private int mCurrentStandard;
      private final Map mMediaSizeToLabel;
/*
 * Declared Constructors.
 */
    public MediaSizeUtils$MediaSizeComparator(Context) { ... }
    public int compare(PrintAttributes$MediaSize, PrintAttributes$MediaSize) { ... }
    public volatile int compare(Object, Object) { ... }
    public String getLabel(Context, PrintAttributes$MediaSize) { ... }
    public void onConfigurationChanged(Configuration) { ... }

} 