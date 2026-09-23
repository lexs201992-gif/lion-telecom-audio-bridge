package com.android.server.telecom;
import com.android.server.telecom.bluetooth.BluetoothRouteManager;
import com.android.server.telecom.CallAudioManager$AudioServiceFactory;
import com.android.server.telecom.WiredHeadsetManager;
import android.content.Context;
import java.util.concurrent.Executor;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.StatusBarNotifier;
import com.android.server.telecom.CallAudioRouteStateMachine;

public static class CallAudioRouteStateMachine$Factory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public CallAudioRouteStateMachine$Factory() { ... }
    public CallAudioRouteStateMachine create(Context, CallsManager, BluetoothRouteManager, WiredHeadsetManager, StatusBarNotifier, CallAudioManager$AudioServiceFactory, int, Executor) { ... }

} 