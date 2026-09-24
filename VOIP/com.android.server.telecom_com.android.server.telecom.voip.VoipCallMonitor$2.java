package com.android.server.telecom.voip;
import android.content.ComponentName;
import com.android.server.telecom.Call;
import com.android.server.telecom.voip.VoipCallMonitor;
import android.os.IBinder;
import android.telecom.PhoneAccountHandle;

 class VoipCallMonitor$2 extends Object
{
/*
 * Field Definitions.
 */
      final VoipCallMonitor this$0;
      final Call val$call;
      final PhoneAccountHandle val$handle;
/*
 * Declared Constructors.
 */
     VoipCallMonitor$2(VoipCallMonitor, PhoneAccountHandle, Call) { ... }
    public void onServiceConnected(ComponentName, IBinder) { ... }
    public void onServiceDisconnected(ComponentName) { ... }

} 