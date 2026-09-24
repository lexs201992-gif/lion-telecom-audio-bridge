package com.android.wm.shell.dagger;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.sysui.ShellInit;
import android.content.Context;
import com.android.wm.shell.common.DisplayImeController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.ShellTaskOrganizer;
import java.util.Optional;
import com.android.launcher3.icons.IconProvider;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;

public abstract class WMShellModule_ProvideSplitScreenControllerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static SplitScreenController provideSplitScreenController(Context, ShellInit, ShellCommandHandler, ShellController, ShellTaskOrganizer, SyncTransactionQueue, RootTaskDisplayAreaOrganizer, DisplayController, DisplayImeController, DisplayInsetsController, Optional, Transitions, TransactionPool, IconProvider, Optional, ShellExecutor) { ... }

} 