package com.android.server.telecom;
import java.lang.String;
import com.android.server.telecom.Call;
import android.telecom.VideoProfile;
import com.android.server.telecom.ConnectionServiceWrapper;
import java.util.Set;
import android.telecom.CallEndpoint;
import android.telecom.CallAudioState;

public abstract class CallsManagerListenerBase extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public CallsManagerListenerBase() { ... }
    public void onAvailableCallEndpointsChanged(Set) { ... }
    public void onCallAdded(Call) { ... }
    public void onCallAudioStateChanged(CallAudioState, CallAudioState) { ... }
    public void onCallEndpointChanged(CallEndpoint) { ... }
    public void onCallRemoved(Call) { ... }
    public void onCallStateChanged(Call, int, int) { ... }
    public void onCallStreamingStateChanged(Call, boolean) { ... }
    public void onCanAddCallChanged(boolean) { ... }
    public void onCdmaConferenceSwap(Call) { ... }
    public void onConferenceStateChanged(Call, boolean) { ... }
    public void onConnectionServiceChanged(Call, ConnectionServiceWrapper, ConnectionServiceWrapper) { ... }
    public void onConnectionTimeChanged(Call) { ... }
    public void onCreateConnectionFailed(Call) { ... }
    public void onDisconnectedTonePlaying(boolean) { ... }
    public void onExternalCallChanged(Call, boolean) { ... }
    public void onHoldToneRequested(Call) { ... }
    public void onIncomingCallAnswered(Call) { ... }
    public void onIncomingCallRejected(Call, boolean, String) { ... }
    public void onIsConferencedChanged(Call) { ... }
    public void onIsVoipAudioModeChanged(Call) { ... }
    public void onMuteStateChanged(boolean) { ... }
    public void onRingbackRequested(Call, boolean) { ... }
    public void onSessionModifyRequestReceived(Call, VideoProfile) { ... }
    public void onSetCamera(Call, String) { ... }
    public void onVideoStateChanged(Call, int, int) { ... }

} 