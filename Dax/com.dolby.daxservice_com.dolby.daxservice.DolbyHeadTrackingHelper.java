package com.dolby.daxservice;
import android.content.Context;
import android.media.AudioManager;
import com.dolby.daxservice.DolbyHeadTrackingHelper$HeadTrackingModeCallback;

public class DolbyHeadTrackingHelper extends Object
{
/*
 * Field Definitions.
 */
      private static final int[] WIRELESS_TYPES;
      private AudioManager mAudioManager;
      private Context mContext;
      private DolbyHeadTrackingHelper$HeadTrackingModeCallback mHeadTrackingModeCallback;
/*
 * Declared Constructors.
 */
     DolbyHeadTrackingHelper(Context) { ... }
    private static boolean isWireless(int) { ... }
    public void registerHeadTrackingCallback(DolbyHeadTrackingHelper$HeadTrackingModeCallback) { ... }
    public void setHeadTrackingMode() { ... }
    public void unregisterHeadTrackingCallback() { ... }

} 