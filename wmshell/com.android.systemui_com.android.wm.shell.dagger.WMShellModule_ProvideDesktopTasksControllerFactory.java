package com.android.wm.shell.dagger;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.desktopmode.DesktopTasksController;
import android.content.Context;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.desktopmode.DesktopModeTaskRepository;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.desktopmode.ExitDesktopTaskTransitionHandler;
import com.android.wm.shell.desktopmode.EnterDesktopTaskTransitionHandler;

public abstract class WMShellModule_ProvideDesktopTasksControllerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static DesktopTasksController provideDesktopTasksController(Context, ShellInit, ShellController, DisplayController, ShellTaskOrganizer, SyncTransactionQueue, RootTaskDisplayAreaOrganizer, Transitions, EnterDesktopTaskTransitionHandler, ExitDesktopTaskTransitionHandler, DesktopModeTaskRepository, ShellExecutor) { ... }

} 