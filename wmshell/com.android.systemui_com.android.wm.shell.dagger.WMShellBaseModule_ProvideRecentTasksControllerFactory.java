package com.android.wm.shell.dagger;
import com.android.wm.shell.common.ShellExecutor;
import android.content.Context;
import com.android.wm.shell.sysui.ShellController;
import android.app.ActivityTaskManager;
import com.android.wm.shell.sysui.ShellCommandHandler;
import java.util.Optional;
import com.android.wm.shell.common.TaskStackListenerImpl;
import com.android.wm.shell.sysui.ShellInit;

public abstract class WMShellBaseModule_ProvideRecentTasksControllerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static Optional provideRecentTasksController(Context, ShellInit, ShellController, ShellCommandHandler, TaskStackListenerImpl, ActivityTaskManager, Optional, ShellExecutor) { ... }

} 