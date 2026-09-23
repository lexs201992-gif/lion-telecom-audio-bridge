package com.unisoc.server.telecom;
import com.unisoc.server.telecom.UniTelecomManager;
import com.android.server.telecom.CallAudioManager;
import com.android.server.telecom.CallLogManager;
import com.unisoc.server.telecom.UniRinger;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import com.android.server.telecom.Ringer;
import android.content.Context;
import com.unisoc.server.telecom.UniCallsManager;
import com.android.server.telecom.CallsManager;
import com.unisoc.server.telecom.UniHeadsetMediaButton;
import com.android.server.telecom.WiredHeadsetManager;
import com.unisoc.server.telecom.DualSimRingTone;
import com.unisoc.server.telecom.UniAsyncRingtonePlayer;
import com.unisoc.server.telecom.UniCallLogManager;
import android.media.AudioManager;
import java.lang.String;
import com.android.server.telecom.AsyncRingtonePlayer;

public class UniTelecomComponentFactoryImpl extends UniTelecomComponentFactory
{
/*
 * Field Definitions.
 */
      private static final String TAG;
/*
 * Declared Constructors.
 */
    public UniTelecomComponentFactoryImpl() { ... }
    public DualSimRingTone makeDualSimRingTone(CallsManager) { ... }
    public UniAsyncRingtonePlayer makeUniAsyncRingtonePlayer(Context, AsyncRingtonePlayer) { ... }
    public UniCallLogManager makeUniCallLogManager(Context, CallLogManager) { ... }
    public UniCallsManager makeUniCallsManager(Context, CallsManager, AsyncRingtonePlayer, WiredHeadsetManager, BluetoothRouteManager, CallAudioManager, Ringer, AudioManager) { ... }
    public UniHeadsetMediaButton makeUniHeadsetMediaButton(Context, CallsManager) { ... }
    public UniRinger makeUniRinger(Context, Ringer, AudioManager) { ... }
    public UniTelecomManager makeUniTelecomManager() { ... }

} 