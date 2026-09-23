package com.android.server.telecom;
import java.lang.String;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.Call;
import android.telephony.TelephonyRegistryManager;
import android.telephony.emergency.EmergencyNumber;

final class PhoneStateBroadcaster extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private final CallsManager mCallsManager;
      private int mCurrentState;
      private final TelephonyRegistryManager mRegistry;
/*
 * Declared Constructors.
 */
    public PhoneStateBroadcaster(CallsManager) { ... }
    public static boolean $r8$lambda$-i_T41L9hBJlcyaVS2IBm2r0blk(String, EmergencyNumber) { ... }
     int getCallState() { ... }
    private static boolean lambda$sendOutgoingEmergencyCallEvent$0(String, EmergencyNumber) { ... }
    public void onCallAdded(Call) { ... }
    public void onCallRemoved(Call) { ... }
    public void onCallStateChanged(Call, int, int) { ... }
    public void onExternalCallChanged(Call, boolean) { ... }
    private void sendOutgoingEmergencyCallEvent(Call) { ... }
    private void sendPhoneStateChangedBroadcast(Call, int) { ... }
    private void updateStates(Call) { ... }

} 