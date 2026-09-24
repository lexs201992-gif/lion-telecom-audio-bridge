package com.android.systemui.volume;
import com.android.systemui.volume.VolumeDialogImpl$7;
import com.android.systemui.plugins.VolumeDialogController$StreamState;
import com.android.systemui.volume.VolumeDialogImpl$5;
import com.android.systemui.plugins.VolumeDialogController$State;
import java.lang.String;
import com.android.systemui.volume.VolumeDialogImpl$Accessibility;
import com.android.systemui.volume.VolumeDialogImpl$$ExternalSyntheticLambda1;
import com.android.systemui.volume.VolumeDialogImpl$$ExternalSyntheticLambda0;
import com.android.systemui.volume.ConfigurableTexts;
import com.android.internal.jank.InteractionJankMonitor;
import android.view.ViewTreeObserver$InternalInsetsInfo;
import android.widget.FrameLayout;
import android.content.Context;
import com.android.systemui.statusbar.policy.AccessibilityManagerWrapper;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.volume.CsdWarningDialog$Factory;
import android.widget.SeekBar;
import android.app.ActivityManager;
import android.view.View;
import android.view.ViewStub;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.statusbar.policy.DevicePostureController;
import java.lang.Object;
import com.android.systemui.plugins.VolumeDialogController;
import java.io.PrintWriter;
import android.content.res.Configuration;
import com.android.systemui.volume.VolumePanelFactory;
import android.graphics.Region;
import android.os.Looper;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.volume.CsdWarningDialog;
import com.android.systemui.volume.VolumeDialogImpl$CustomDialog;
import com.android.systemui.plugins.VolumeDialog$Callback;
import android.widget.ImageButton;
import com.android.systemui.volume.VolumeDialogImpl$H;
import com.android.systemui.volume.CaptionsToggleImageButton;
import com.android.systemui.media.dialog.MediaOutputDialogFactory;
import com.android.systemui.dump.DumpManager;
import android.view.Window;
import com.android.systemui.volume.VolumeDialogImpl$VolumeRow;
import android.util.SparseBooleanArray;
import com.android.internal.graphics.drawable.BackgroundBlurDrawable;
import android.app.KeyguardManager;

public final class VolumeDialogImpl extends Object
{
/*
 * Field Definitions.
 */
      public static final String TAG;
      public int densityDpi;
      public final VolumeDialogImpl$Accessibility mAccessibility;
      public final AccessibilityManagerWrapper mAccessibilityMgr;
      public int mActiveStream;
      public final ActivityManager mActivityManager;
      public final ActivityStarter mActivityStarter;
      public ValueAnimator mAnimateUpBackgroundToMatchDrawer;
      public boolean mAutomute;
      public final boolean mChangeVolumeRowTintWhenInactive;
      public boolean mConfigChanged;
      public ConfigurableTexts mConfigurableTexts;
      public final ConfigurationController mConfigurationController;
      public final Context mContext;
      public final VolumeDialogController mController;
      public final VolumeDialogImpl$7 mControllerCallbackH;
      public final VolumeDialogImpl$$ExternalSyntheticLambda0 mCrossWindowBlurEnabledListener;
      public CsdWarningDialog mCsdDialog;
      public final CsdWarningDialog$Factory mCsdWarningDialogFactory;
      public int mDevicePosture;
      public final DevicePostureController mDevicePostureController;
      public final VolumeDialogImpl$$ExternalSyntheticLambda1 mDevicePostureControllerCallback;
      public final DeviceProvisionedController mDeviceProvisionedController;
      public VolumeDialogImpl$CustomDialog mDialog;
      public int mDialogBackgroundWidth;
      public int mDialogCornerRadius;
      public final int mDialogHideAnimationDurationMs;
      public ViewGroup mDialogRowsView;
      public BackgroundBlurDrawable mDialogRowsViewBackground;
      public ViewGroup mDialogRowsViewContainer;
      public final int mDialogShowAnimationDurationMs;
      public ViewGroup mDialogView;
      public int mDialogWidth;
      public final SparseBooleanArray mDynamic;
      public final VolumeDialogImpl$H mHandler;
      public boolean mHasSeenODICaptionsTooltip;
      public boolean mHovering;
      public final InteractionJankMonitor mInteractionJankMonitor;
      public boolean mIsAnimatingDismiss;
      public boolean mIsRingerDrawerOpen;
      public final KeyguardManager mKeyguard;
      public final MediaOutputDialogFactory mMediaOutputDialogFactory;
      public CaptionsToggleImageButton mODICaptionsIcon;
      public View mODICaptionsTooltipView;
      public ViewStub mODICaptionsTooltipViewStub;
      public ViewGroup mODICaptionsView;
      public int mOrientation;
      public int mOriginalGravity;
      public int mPrevActiveStream;
      public ViewGroup mRinger;
      public View mRingerAndDrawerContainer;
      public Drawable mRingerAndDrawerContainerBackground;
      public int mRingerCount;
      public float mRingerDrawerClosedAmount;
      public ViewGroup mRingerDrawerContainer;
      public ImageView mRingerDrawerIconAnimatingDeselected;
      public ImageView mRingerDrawerIconAnimatingSelected;
      public ValueAnimator mRingerDrawerIconColorAnimator;
      public int mRingerDrawerItemSize;
      public ViewGroup mRingerDrawerMute;
      public ImageView mRingerDrawerMuteIcon;
      public ViewGroup mRingerDrawerNewSelectionBg;
      public ViewGroup mRingerDrawerNormal;
      public ImageView mRingerDrawerNormalIcon;
      public ViewGroup mRingerDrawerVibrate;
      public ImageView mRingerDrawerVibrateIcon;
      public ImageButton mRingerIcon;
      public int mRingerRowsPadding;
      public final List mRows;
      public VolumeDialogImpl$5 mSafetyWarning;
      public final Object mSafetyWarningLock;
      public ViewGroup mSelectedRingerContainer;
      public ImageView mSelectedRingerIcon;
      public ImageButton mSettingsIcon;
      public View mSettingsView;
      public boolean mShowA11yStream;
      public final boolean mShowActiveStreamOnly;
      public final boolean mShowLowMediaVolumeIcon;
      public boolean mShowVibrate;
      public boolean mShowing;
      public boolean mSilentMode;
      public VolumeDialogController$State mState;
      public View mTopContainer;
      public final Region mTouchableRegion;
      public final boolean mUseBackgroundBlur;
      public final VolumePanelFactory mVolumePanelFactory;
      final int mVolumeRingerIconDrawableId;
      final int mVolumeRingerMuteIconDrawableId;
      public Window mWindow;
      public int mWindowGravity;
      public FrameLayout mZenIcon;
/*
 * Declared Constructors.
 */
    public VolumeDialogImpl(Context, VolumeDialogController, AccessibilityManagerWrapper, DeviceProvisionedController, ConfigurationController, MediaOutputDialogFactory, VolumePanelFactory, ActivityStarter, InteractionJankMonitor, CsdWarningDialog$Factory, DevicePostureController, Looper, DumpManager) { ... }
    public static void -$$Nest$mshowH(VolumeDialogImpl, int, boolean, int) { ... }
    public final void addAccessibilityDescription(View, int, String) { ... }
    public final void addRow$1(int, int, int, boolean, boolean) { ... }
    public final void checkODICaptionsTooltip(boolean) { ... }
    public void clearInternalHandlerAfterTest() { ... }
    public final void destroy() { ... }
    public final void dismissH(int) { ... }
    public final void dump(PrintWriter, String[]) { ... }
    public final VolumeDialogImpl$VolumeRow getActiveRow() { ... }
    public final ImageView getDrawerIconViewForMode(int) { ... }
    public static int getImpliedLevel(int, SeekBar) { ... }
    public final int getRingerDrawerOpenExtraSize() { ... }
    public final String getStreamLabelH(VolumeDialogController$StreamState) { ... }
    public final float getTranslationInDrawerForRingerMode(int) { ... }
    public final int getVisibleRowsExtraSize() { ... }
    public int getWindowGravity() { ... }
    public final void hideCaptionsTooltip() { ... }
    public final void hideRingerDrawer() { ... }
    public final void init(int, VolumeDialog$Callback) { ... }
    public final void initDialog(int) { ... }
    public final void initDimens() { ... }
    public final void initRow(VolumeDialogImpl$VolumeRow, int, int, int, boolean, boolean) { ... }
    public final void initSettingsH(int) { ... }
    public final boolean isLandscape() { ... }
    public final boolean isRtl() { ... }
    public final void onComputeInternalInsets(ViewTreeObserver$InternalInsetsInfo) { ... }
    public final void onConfigChanged(Configuration) { ... }
    public void onPostureChanged(int) { ... }
    public final void onStateChangedH(VolumeDialogController$State) { ... }
    public final void onUiModeChanged() { ... }
    public final void recheckH(VolumeDialogImpl$VolumeRow) { ... }
    public final void rescheduleTimeoutH() { ... }
    public final void setRingerMode(int) { ... }
    public final boolean shouldBeVisibleH(VolumeDialogImpl$VolumeRow, VolumeDialogImpl$VolumeRow) { ... }
    public void showCsdWarningH(int, int) { ... }
    public final void trimObsoleteH() { ... }
    public final void unionViewBoundstoTouchableRegion(View) { ... }
    public final void updateBackgroundForDrawerClosedAmount() { ... }
    public final void updateCaptionsIcon() { ... }
    public final void updateRingerH() { ... }
    public final void updateRowsH(VolumeDialogImpl$VolumeRow) { ... }
    public final void updateVolumeRowH(VolumeDialogImpl$VolumeRow) { ... }
    public final void updateVolumeRowTintH(VolumeDialogImpl$VolumeRow, boolean) { ... }

} 