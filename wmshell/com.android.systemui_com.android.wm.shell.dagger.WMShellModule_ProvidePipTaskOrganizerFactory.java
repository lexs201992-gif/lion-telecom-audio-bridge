package com.android.wm.shell.dagger;
import com.android.wm.shell.pip.PipTransitionState;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.pip.phone.PhonePipMenuController;
import com.android.wm.shell.pip.PipTaskOrganizer;
import android.content.Context;
import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipTransitionController;
import com.android.wm.shell.pip.PipUiEventLogger;
import com.android.wm.shell.pip.PipParamsChangedForwarder;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.pip.PipDisplayLayoutState;
import java.util.Optional;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.pip.PipSurfaceTransactionHelper;
import com.android.wm.shell.pip.PipBoundsAlgorithm;
import com.android.wm.shell.pip.PipAnimationController;

public abstract class WMShellModule_ProvidePipTaskOrganizerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static PipTaskOrganizer providePipTaskOrganizer(Context, SyncTransactionQueue, PipTransitionState, PipBoundsState, PipDisplayLayoutState, PipBoundsAlgorithm, PhonePipMenuController, PipAnimationController, PipSurfaceTransactionHelper, PipTransitionController, PipParamsChangedForwarder, Optional, DisplayController, PipUiEventLogger, ShellTaskOrganizer, ShellExecutor) { ... }

} 