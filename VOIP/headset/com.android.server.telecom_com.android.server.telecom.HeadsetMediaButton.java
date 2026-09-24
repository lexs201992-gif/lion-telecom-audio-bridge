package com.android.server.telecom;
import android.media.AudioAttributes;
import android.os.Handler;
import android.content.Context;
import com.android.server.telecom.Call;
import com.android.server.telecom.CallsManager;
import android.media.session.MediaSession$Callback;
import com.unisoc.server.telecom.UniHeadsetMediaButton;
import com.android.server.telecom.HeadsetMediaButton$MediaSessionAdapter;
import com.android.server.telecom.TelecomSystem$SyncRoot;

public class HeadsetMediaButton extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private static final AudioAttributes AUDIO_ATTRIBUTES;
      public static final int LONG_PRESS;
      public static final int SHORT_PRESS;
      private final CallsManager mCallsManager;
      private final Context mContext;
      private final TelecomSystem$SyncRoot mLock;
      private final Handler mMediaSessionHandler;
      private HeadsetMediaButton$MediaSessionAdapter mSession;
      private final MediaSession$Callback mSessionCallback;
      private UniHeadsetMediaButton mUniHeadsetMediaButton;
/*
 * Declared Constructors.
 */
    public HeadsetMediaButton(Context, CallsManager, TelecomSystem$SyncRoot) { ... }
    public HeadsetMediaButton(Context, CallsManager, TelecomSystem$SyncRoot, HeadsetMediaButton$MediaSessionAdapter) { ... }
    static volatile Context -$$Nest$fgetmContext(HeadsetMediaButton) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmLock(HeadsetMediaButton) { ... }
    static volatile HeadsetMediaButton$MediaSessionAdapter -$$Nest$fgetmSession(HeadsetMediaButton) { ... }
    static volatile MediaSession$Callback -$$Nest$fgetmSessionCallback(HeadsetMediaButton) { ... }
    static volatile UniHeadsetMediaButton -$$Nest$fgetmUniHeadsetMediaButton(HeadsetMediaButton) { ... }
    static volatile void -$$Nest$fputmSession(HeadsetMediaButton, HeadsetMediaButton$MediaSessionAdapter) { ... }
    static volatile AudioAttributes -$$Nest$sfgetAUDIO_ATTRIBUTES() { ... }
    public Handler getHandler() { ... }
    private void handleCallAddition() { ... }
    private void handleCallRemoval() { ... }
    public void onCallAdded(Call) { ... }
    public void onCallRemoved(Call) { ... }
    public void onExternalCallChanged(Call, boolean) { ... }

} 