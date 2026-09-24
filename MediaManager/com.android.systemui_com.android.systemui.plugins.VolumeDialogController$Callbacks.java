package com.android.systemui.plugins;
import java.lang.Boolean;
import com.android.systemui.plugins.VolumeDialogController$State;

public abstract interface VolumeDialogController$Callbacks
{
/*
 * Field Definitions.
 */
      public static final int VERSION;
/*
 * Declared Constructors.
 */
    public abstract void onAccessibilityModeChanged(Boolean) { ... }
    public abstract void onCaptionComponentStateChanged(Boolean, Boolean) { ... }
    public abstract void onConfigurationChanged() { ... }
    public abstract void onDismissRequested(int) { ... }
    public abstract void onLayoutDirectionChanged(int) { ... }
    public abstract void onScreenOff() { ... }
    public abstract void onShowCsdWarning(int, int) { ... }
    public abstract void onShowRequested(int, boolean, int) { ... }
    public abstract void onShowSafetyWarning(int) { ... }
    public abstract void onShowSilentHint() { ... }
    public abstract void onShowVibrateHint() { ... }
    public abstract void onStateChanged(VolumeDialogController$State) { ... }

} 