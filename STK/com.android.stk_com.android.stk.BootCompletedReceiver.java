package com.android.stk;
import java.lang.String;
import android.content.Context;
import android.content.Intent;
import com.android.stk.StkAppService;

public class BootCompletedReceiver extends BroadcastReceiver
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public BootCompletedReceiver() { ... }
    private String getMenuName(Context, StkAppService) { ... }
    private void needShowDoubleApp(Context, int, int, StkAppService) { ... }
    public void onReceive(Context, Intent) { ... }
    private void startServiceByBootCompleted(Context) { ... }

} 