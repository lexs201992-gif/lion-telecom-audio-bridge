package com.android.server.telecom;
import android.os.Message;
import com.android.server.telecom.CallAudioRouteStateMachine;

abstract class CallAudioRouteStateMachine$BluetoothRoute extends CallAudioRouteStateMachine$AudioState
{
/*
 * Field Definitions.
 */
      final CallAudioRouteStateMachine this$0;
/*
 * Declared Constructors.
 */
     CallAudioRouteStateMachine$BluetoothRoute(CallAudioRouteStateMachine) { ... }
    public int getRouteCode() { ... }
    public void handleBtInitiatedDisconnect() { ... }
    public boolean processMessage(Message) { ... }

} 