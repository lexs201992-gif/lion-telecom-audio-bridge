package com.android.server.telecom;
import android.content.Context;
import com.android.server.telecom.WiredHeadsetManager$Listener;
import java.util.Set;
import android.media.AudioManager;

public class WiredHeadsetManager extends Object
{
/*
 * Field Definitions.
 */
      private final AudioManager mAudioManager;
      private boolean mIsPluggedIn;
      private final Set mListeners;
/*
 * Declared Constructors.
 */
    public WiredHeadsetManager(Context) { ... }
    static volatile boolean -$$Nest$misWiredHeadsetPluggedIn(WiredHeadsetManager) { ... }
    static volatile void -$$Nest$monHeadsetPluggedInChanged(WiredHeadsetManager, boolean) { ... }
    public void addListener(WiredHeadsetManager$Listener) { ... }
    public boolean isPluggedIn() { ... }
    private boolean isWiredHeadsetPluggedIn() { ... }
    private void onHeadsetPluggedInChanged(boolean) { ... }

} 