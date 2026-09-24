package com.android.wm.shell.dagger;
import com.android.wm.shell.common.SystemWindows;
import android.os.Handler;
import com.android.wm.shell.pip.phone.PhonePipMenuController;
import android.content.Context;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipUiEventLogger;
import java.util.Optional;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.pip.PipMediaController;

public abstract class WMShellModule_ProvidesPipPhoneMenuControllerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static PhonePipMenuController providesPipPhoneMenuController(Context, PipBoundsState, PipMediaController, SystemWindows, Optional, PipUiEventLogger, ShellExecutor, Handler) { ... }

} 