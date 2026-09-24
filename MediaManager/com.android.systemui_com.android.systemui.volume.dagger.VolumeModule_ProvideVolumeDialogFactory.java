package com.android.systemui.volume.dagger;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.systemui.statusbar.policy.AccessibilityManagerWrapper;
import com.android.systemui.plugins.VolumeDialogController;
import com.android.systemui.media.dialog.MediaOutputDialogFactory;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.volume.CsdWarningDialog$Factory;
import android.content.Context;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.policy.DevicePostureController;
import com.android.systemui.volume.VolumePanelFactory;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.volume.VolumeDialogImpl;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;

public abstract class VolumeModule_ProvideVolumeDialogFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static VolumeDialogImpl provideVolumeDialog(Context, VolumeDialogController, AccessibilityManagerWrapper, DeviceProvisionedController, ConfigurationController, MediaOutputDialogFactory, VolumePanelFactory, ActivityStarter, InteractionJankMonitor, CsdWarningDialog$Factory, DevicePostureController, DumpManager) { ... }

} 