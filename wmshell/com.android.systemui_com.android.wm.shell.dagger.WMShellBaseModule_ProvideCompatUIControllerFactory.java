package com.android.wm.shell.dagger;
import dagger.Lazy;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import android.content.Context;
import com.android.wm.shell.common.DisplayImeController;
import com.android.wm.shell.compatui.CompatUIConfiguration;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.compatui.CompatUIShellCommandHandler;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DockStateReader;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.compatui.CompatUIController;

public abstract class WMShellBaseModule_ProvideCompatUIControllerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static CompatUIController provideCompatUIController(Context, ShellInit, ShellController, DisplayController, DisplayInsetsController, DisplayImeController, SyncTransactionQueue, ShellExecutor, Lazy, DockStateReader, CompatUIConfiguration, CompatUIShellCommandHandler) { ... }

} 