package com.android.wm.shell.dagger;
import com.android.wm.shell.common.ShellExecutor;
import android.content.Context;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellInit;

public abstract class WMShellBaseModule_ProvideShellControllerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static ShellController provideShellController(Context, ShellInit, ShellCommandHandler, ShellExecutor) { ... }

} 