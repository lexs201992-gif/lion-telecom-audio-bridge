package com.android.server.telecom;
import java.lang.String;
import android.os.Bundle;
import android.telephony.CallQuality;
import android.telecom.DisconnectCause;
import com.android.server.telecom.Call;
import java.util.List;
import android.telecom.BluetoothCallQualityReport;
import android.telecom.PhoneAccountHandle;

public abstract static class Call$ListenerBase extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public Call$ListenerBase() { ... }
    public void onBluetoothCallQualityReport(Call, BluetoothCallQualityReport) { ... }
    public void onCallDirectionChanged(Call) { ... }
    public void onCallHoldFailed(Call) { ... }
    public void onCallStreamingStateChanged(Call, boolean) { ... }
    public void onCallSwitchFailed(Call) { ... }
    public void onCallerDisplayNameChanged(Call) { ... }
    public void onCallerInfoChanged(Call) { ... }
    public void onCallerNumberVerificationStatusChanged(Call, int) { ... }
    public boolean onCanceledViaNewOutgoingCallBroadcast(Call, long) { ... }
    public void onCannedSmsResponsesLoaded(Call) { ... }
    public void onCdmaConferenceSwap(Call) { ... }
    public void onChildrenChanged(Call) { ... }
    public void onConferenceStateChanged(Call, boolean) { ... }
    public void onConferenceableCallsChanged(Call) { ... }
    public void onConnectionCapabilitiesChanged(Call) { ... }
    public void onConnectionEvent(Call, String, Bundle) { ... }
    public void onConnectionManagerPhoneAccountChanged(Call) { ... }
    public void onConnectionPropertiesChanged(Call, boolean) { ... }
    public void onExternalCallChanged(Call, boolean) { ... }
    public void onExtrasChanged(Call, int, Bundle, String) { ... }
    public void onExtrasRemoved(Call, int, List) { ... }
    public void onFailedIncomingCall(Call) { ... }
    public void onFailedOutgoingCall(Call, DisconnectCause) { ... }
    public void onFailedUnknownCall(Call) { ... }
    public void onHandleChanged(Call) { ... }
    public void onHandoverComplete(Call) { ... }
    public void onHandoverFailed(Call, int) { ... }
    public void onHandoverRequested(Call, PhoneAccountHandle, int, Bundle, boolean) { ... }
    public void onHoldToneRequested(Call) { ... }
    public void onIsVoipAudioModeChanged(Call) { ... }
    public void onParentChanged(Call) { ... }
    public void onPostDialChar(Call, char) { ... }
    public void onPostDialWait(Call, String) { ... }
    public void onReceivedCallQualityReport(Call, CallQuality) { ... }
    public void onReceivedDeviceToDeviceMessage(Call, int, int) { ... }
    public void onRemoteRttRequest(Call, int) { ... }
    public void onRingbackRequested(Call, boolean) { ... }
    public void onRttInitiationFailure(Call, int) { ... }
    public void onStatusHintsChanged(Call) { ... }
    public void onSuccessfulIncomingCall(Call) { ... }
    public void onSuccessfulOutgoingCall(Call, int) { ... }
    public void onSuccessfulUnknownCall(Call, int) { ... }
    public void onTargetPhoneAccountChanged(Call) { ... }
    public void onVideoCallProviderChanged(Call) { ... }
    public void onVideoStateChanged(Call, int, int) { ... }

} 