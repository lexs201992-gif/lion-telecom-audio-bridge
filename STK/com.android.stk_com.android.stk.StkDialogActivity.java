package com.android.stk;
import android.app.AlertDialog;
import android.os.Bundle;
import android.content.Intent;
import com.android.internal.telephony.cat.TextMessage;
import android.app.AlarmManager$OnAlarmListener;
import android.content.BroadcastReceiver;
import com.android.stk.StkAppService;

public class StkDialogActivity extends Activity
{
/*
 * Field Definitions.
 */
      private StkAppService appService;
      private final AlarmManager$OnAlarmListener mAlarmListener;
      private long mAlarmTime;
      private AlertDialog mAlertDialog;
      private boolean mIsResponseSent;
      private BroadcastReceiver mLocalReceiver;
      private BroadcastReceiver mReceiver;
      private int mSlotId;
       TextMessage mTextMsg;
/*
 * Declared Constructors.
 */
    public StkDialogActivity() { ... }
    static volatile StkAppService -$$Nest$fgetappService(StkDialogActivity) { ... }
    static volatile boolean -$$Nest$fgetmIsResponseSent(StkDialogActivity) { ... }
    static volatile int -$$Nest$fgetmSlotId(StkDialogActivity) { ... }
    static volatile void -$$Nest$fputmAlarmTime(StkDialogActivity, long) { ... }
    static volatile void -$$Nest$msendResponse(StkDialogActivity, int) { ... }
    static volatile void -$$Nest$msendResponse(StkDialogActivity, int, boolean) { ... }
    private void cancelTimeOut() { ... }
    public void finish() { ... }
    private void initFromIntent(Intent) { ... }
    protected void onCreate(Bundle) { ... }
    public void onDestroy() { ... }
    protected void onNewIntent(Intent) { ... }
    public void onPause() { ... }
    public void onRestoreInstanceState(Bundle) { ... }
    public void onResume() { ... }
    public void onSaveInstanceState(Bundle) { ... }
    protected void onStart() { ... }
    public void onStop() { ... }
    private void sendResponse(int) { ... }
    private void sendResponse(int, boolean) { ... }
    private void startTimeOut() { ... }

} 