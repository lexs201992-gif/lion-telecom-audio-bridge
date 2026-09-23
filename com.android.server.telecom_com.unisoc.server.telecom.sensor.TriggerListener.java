package com.unisoc.server.telecom.sensor;
import java.lang.String;
import com.android.server.telecom.AsyncRingtonePlayer;
import android.hardware.TriggerEvent;

 class TriggerListener extends TriggerEventListener
{
/*
 * Field Definitions.
 */
      private static final String TAG;
      private AsyncRingtonePlayer mAsyncRingtonePlayer;
/*
 * Declared Constructors.
 */
     TriggerListener(AsyncRingtonePlayer) { ... }
    public void onTrigger(TriggerEvent) { ... }

} 