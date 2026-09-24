package com.android.server.telecom;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import android.content.Context;
import android.telecom.CallAudioState;
import android.os.Bundle;
import com.android.server.telecom.CallsManager;
import android.telecom.CallEndpoint;
import android.bluetooth.BluetoothDevice;
import java.util.HashMap;
import java.util.Map;
import java.lang.CharSequence;
import android.os.ParcelUuid;
import android.os.ResultReceiver;
import java.lang.String;
import java.lang.Integer;

public class CallEndpointController extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private CallEndpoint mActiveCallEndpoint;
      private final Set mAvailableCallEndpoints;
      private final Map mBluetoothAddressMap;
      private final CallsManager mCallsManager;
      private final Context mContext;
      private CompletableFuture mPendingChangeRequest;
      private ParcelUuid mRequestedEndpointId;
      private final HashMap mRouteToTypeMap;
      private final HashMap mTypeToRouteMap;
/*
 * Declared Constructors.
 */
    public CallEndpointController(Context, CallsManager) { ... }
    public static void $r8$lambda$2cZ8XQ7lJWu2C_ci98QgwG_TWmg(CallEndpointController, CallAudioState, Set, Map, Integer, Integer) { ... }
    public static void $r8$lambda$3RriaLX7UX2MMfjUloJHmBn1lng(CallEndpointController, ResultReceiver, Integer) { ... }
    private void createAvailableCallEndpoints(CallAudioState) { ... }
    private CallEndpoint findMatchingBluetoothEndpoint(BluetoothDevice) { ... }
    private CallEndpoint findMatchingTypeEndpoint(int) { ... }
    public Set getAvailableEndpoints() { ... }
    public String getBluetoothAddress(CallEndpoint) { ... }
    public CallEndpoint getCurrentCallEndpoint() { ... }
    private CharSequence getEndpointName(int) { ... }
    private Bundle getErrorResult(int) { ... }
    private boolean isAvailableEndpointChanged(CallAudioState, CallAudioState) { ... }
    public boolean isCurrentEndpointRequestedEndpoint(int, String) { ... }
    private boolean isEndpointChanged(CallAudioState, CallAudioState) { ... }
    private boolean isMuteStateChanged(CallAudioState, CallAudioState) { ... }
    private void lambda$createAvailableCallEndpoints$1(CallAudioState, Set, Map, Integer, Integer) { ... }
    private void lambda$requestCallEndpointChange$0(ResultReceiver, Integer) { ... }
    private void notifyAvailableCallEndpointsChange() { ... }
    private void notifyCallEndpointChange() { ... }
    private void notifyMuteStateChange(boolean) { ... }
    public void onCallAudioStateChanged(CallAudioState, CallAudioState) { ... }
    public void requestCallEndpointChange(CallEndpoint, ResultReceiver) { ... }

} 