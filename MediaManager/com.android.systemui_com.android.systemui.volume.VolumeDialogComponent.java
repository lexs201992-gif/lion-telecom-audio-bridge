package com.android.systemui.volume;
import com.android.systemui.plugins.PluginDependencyProvider;
import com.android.systemui.volume.VolumeDialogControllerImpl;
import com.android.settingslib.applications.InterestingConfigChanges;
import com.android.systemui.volume.VolumeDialogComponent$1;
import java.util.List;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.statusbar.policy.ExtensionController;
import android.content.Context;
import android.os.Bundle;
import com.android.systemui.keyguard.KeyguardViewMediator;
import android.media.VolumePolicy;
import com.android.systemui.demomode.DemoModeController;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.VolumeDialog;
import android.content.Intent;
import java.lang.String;

public final class VolumeDialogComponent extends Object
{
/*
 * Field Definitions.
 */
      public static final Intent ZEN_PRIORITY_SETTINGS;
      public static final Intent ZEN_SETTINGS;
      public final ActivityStarter mActivityStarter;
      public final InterestingConfigChanges mConfigChanges;
      public final Context mContext;
      public final VolumeDialogControllerImpl mController;
      public final boolean mDefaultVolumeDownToEnterSilent;
      public VolumeDialog mDialog;
      public final KeyguardViewMediator mKeyguardViewMediator;
      public final VolumeDialogComponent$1 mVolumeDialogCallback;
      public VolumePolicy mVolumePolicy;
/*
 * Declared Constructors.
 */
    public VolumeDialogComponent(Context, KeyguardViewMediator, ActivityStarter, VolumeDialogControllerImpl, DemoModeController, PluginDependencyProvider, ExtensionController, TunerService, VolumeDialog) { ... }
    public final List demoCommands() { ... }
    public final void dispatchDemoCommand(Bundle, String) { ... }
    public final void onTuningChanged(String, String) { ... }

} 