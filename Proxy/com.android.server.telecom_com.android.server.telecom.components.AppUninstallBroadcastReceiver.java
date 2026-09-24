package com.android.server.telecom.components;
import java.lang.String;
import android.content.Context;
import android.content.Intent;

public class AppUninstallBroadcastReceiver extends BroadcastReceiver
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public AppUninstallBroadcastReceiver() { ... }
    private void handlePackageRemoved(Context, String) { ... }
    private void handleUninstallOfCallScreeningService(Context, String) { ... }
    public void onReceive(Context, Intent) { ... }

} 