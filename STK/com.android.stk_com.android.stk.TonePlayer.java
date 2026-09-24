package com.android.stk;
import com.android.internal.telephony.cat.Tone;
import android.media.ToneGenerator;
import java.util.HashMap;

public class TonePlayer extends Object
{
/*
 * Field Definitions.
 */
      private ToneGenerator mToneGenerator;
      private static final HashMap mToneMap;
/*
 * Declared Constructors.
 */
     TonePlayer() { ... }
    private int getToneId(Tone) { ... }
    public void play(Tone) { ... }
    public void release() { ... }
    public void stop() { ... }

} 