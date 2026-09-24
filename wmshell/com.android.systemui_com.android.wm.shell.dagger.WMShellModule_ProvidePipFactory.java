package com.android.wm.shell.dagger;
import com.android.wm.shell.pip.PipParamsChangedForwarder;
import com.android.wm.shell.pip.phone.PipMotionHelper;
import com.android.wm.shell.pip.PipTransitionController;
import com.android.wm.shell.pip.PipBoundsAlgorithm;
import com.android.wm.shell.common.TaskStackListenerImpl;
import com.android.wm.shell.pip.PipTaskOrganizer;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.pip.PipMediaController;
import com.android.wm.shell.common.TabletopModeController;
import com.android.wm.shell.pip.PipTransitionState;
import com.android.wm.shell.pip.PipAppOpsListener;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.pip.phone.PipTouchHandler;
import com.android.wm.shell.pip.PipAnimationController;
import com.android.wm.shell.pip.phone.PipSizeSpecHandler;
import com.android.wm.shell.sysui.ShellInit;
import com.android.wm.shell.WindowManagerShellWrapper;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.pip.phone.PhonePipMenuController;
import com.android.wm.shell.common.ShellExecutor;
import java.util.Optional;
import com.android.wm.shell.sysui.ShellCommandHandler;
import android.content.Context;
import com.android.wm.shell.pip.phone.PhonePipKeepClearAlgorithm;

public abstract class WMShellModule_ProvidePipFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static Optional providePip(Context, ShellInit, ShellCommandHandler, ShellController, DisplayController, PipAnimationController, PipAppOpsListener, PipBoundsAlgorithm, PhonePipKeepClearAlgorithm, PipBoundsState, PipSizeSpecHandler, PipDisplayLayoutState, PipMotionHelper, PipMediaController, PhonePipMenuController, PipTaskOrganizer, PipTransitionState, PipTouchHandler, PipTransitionController, WindowManagerShellWrapper, TaskStackListenerImpl, PipParamsChangedForwarder, DisplayInsetsController, TabletopModeController, Optional, ShellExecutor) { ... }

} 