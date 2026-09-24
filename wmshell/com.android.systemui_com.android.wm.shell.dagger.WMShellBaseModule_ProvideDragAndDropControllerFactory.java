package com.android.wm.shell.dagger;
import com.android.wm.shell.sysui.ShellCommandHandler;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.sysui.ShellInit;
import android.content.Context;
import com.android.wm.shell.common.DisplayController;
import java.util.Optional;
import com.android.launcher3.icons.IconProvider;
import com.android.wm.shell.common.ShellExecutor;
import com.android.internal.logging.UiEventLogger;

public abstract class WMShellBaseModule_ProvideDragAndDropControllerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static Optional provideDragAndDropController(Context, ShellInit, ShellController, ShellCommandHandler, DisplayController, UiEventLogger, IconProvider, ShellExecutor) { ... }

} 