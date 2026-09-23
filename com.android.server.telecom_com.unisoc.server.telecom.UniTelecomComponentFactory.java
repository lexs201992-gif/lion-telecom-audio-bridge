package com.unisoc.server.telecom;
import com.unisoc.server.telecom.UniRinger;
import android.media.AudioManager;
import com.unisoc.server.telecom.UniAsyncRingtonePlayer;
import com.unisoc.server.telecom.DualSimRingTone;
import com.android.server.telecom.CallLogManager;
import com.android.server.telecom.WiredHeadsetManager;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import com.android.server.telecom.CallsManager;
import com.unisoc.server.telecom.UniTelecomManager;
import com.android.server.telecom.Ringer;
import com.unisoc.server.telecom.UniCallLogManager;
import com.android.server.telecom.AsyncRingtonePlayer;
import com.unisoc.server.telecom.UniCallsManager;
import com.android.server.telecom.CallAudioManager;
import com.unisoc.server.telecom.UniHeadsetMediaButton;
import com.unisoc.server.telecom.incallTone.RingBackTone;
import java.lang.String;
import android.content.Context;

public class UniTelecomComponentFactory extends Object
{
/*
 * Field Definitions.
 */
      private static final String TAG;
      private static UniTelecomComponentFactory sInstance;
/*
 * Declared Constructors.
 */
    public UniTelecomComponentFactory() { ... }
    public static UniTelecomComponentFactory getInstance(Context) { ... }
    public DualSimRingTone makeDualSimRingTone(CallsManager) { ... }
    public RingBackTone makeRingBackTone() { ... }
    public UniAsyncRingtonePlayer makeUniAsyncRingtonePlayer(Context, AsyncRingtonePlayer) { ... }
    public UniCallLogManager makeUniCallLogManager(Context, CallLogManager) { ... }
    public UniCallsManager makeUniCallsManager(Context, CallsManager, AsyncRingtonePlayer, WiredHeadsetManager, BluetoothRouteManager, CallAudioManager, Ringer, AudioManager) { ... }
    public UniHeadsetMediaButton makeUniHeadsetMediaButton(Context, CallsManager) { ... }
    public UniRinger makeUniRinger(Context, Ringer, AudioManager) { ... }
    public UniTelecomManager makeUniTelecomManager() { ... }

} 