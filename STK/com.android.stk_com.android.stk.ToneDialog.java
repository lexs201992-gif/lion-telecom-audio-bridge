package com.android.stk;
import android.app.AlertDialog;
import android.os.Bundle;
import android.content.Intent;
import com.android.internal.telephony.cat.TextMessage;
import android.content.BroadcastReceiver;

public class ToneDialog extends Activity
{
/*
 * Field Definitions.
 */
      private AlertDialog mAlertDialog;
      private BroadcastReceiver mFinishActivityReceiver;
      private BroadcastReceiver mReceiver;
       int mSlotId;
       TextMessage toneMsg;
/*
 * Declared Constructors.
 */
    public ToneDialog() { ... }
    static volatile void -$$Nest$msendStopTone(ToneDialog) { ... }
    private void initFromIntent(Intent) { ... }
    protected void onCreate(Bundle) { ... }
    protected void onDestroy() { ... }
    private void sendStopTone() { ... }

} 