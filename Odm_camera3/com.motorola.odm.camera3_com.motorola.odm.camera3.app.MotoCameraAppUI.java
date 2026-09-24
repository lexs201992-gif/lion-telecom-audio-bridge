package com.motorola.odm.camera3.app;
import android.view.ViewGroup;
import com.motorola.odm.camera3.ui.MotoCaptureLayoutHelper;
import com.motorola.odm.camera3.modeui.CameraModeSwitchManager;
import com.motorola.odm.camera3.app.AppController;
import java.util.List;
import android.graphics.Bitmap;
import com.motorola.odm.camera3.app.OrientationManager$DeviceOrientation;
import com.motorola.odm.camera3.widget.selector.SelectorSwitcher;
import com.motorola.odm.camera3.app.OrientationManager;
import com.motorola.odm.camera3.ui.PortraitAniDialog;
import android.widget.ImageView;
import android.graphics.Canvas;
import com.motorola.odm.camera3.QuickOptionLayout;
import com.motorola.odm.camera3.ui.MainActivityLayout;
import android.animation.Animator$AnimatorListener;
import android.graphics.Rect;
import android.graphics.RectF;
import com.motorola.odm.camera3.TopCircleView;
import com.motorola.odm.camera3.app.IViewStateObserver;
import android.view.View;
import android.animation.AnimatorSet;
import com.motorola.odm.camera3.debug.Log$Tag;
import android.widget.LinearLayout;
import com.motorola.odm.camera3.ui.BackgroundRotateImageView;
import com.motorola.odm.camera3.SelfFlashCoverView;
import java.lang.String;
import android.widget.ImageButton;

public class MotoCameraAppUI extends CameraAppUI
{
/*
 * Field Definitions.
 */
      public final int MODE_TRANSITION_DURATION;
      private static final Log$Tag TAG;
      private AnimatorSet blurPreviewAnimatorSet;
      private final Animator$AnimatorListener blurViewAnimatorListener;
      private boolean isFilterViewVisible;
      private PortraitAniDialog mAniDialog;
      private final Rect mBottomBarRect;
      private int mBufferCount;
      private boolean mBufferShowing;
      private View mCameraQuickParent;
      private TopCircleView mCircleView;
      private ImageButton mGoogleLens;
      private BackgroundRotateImageView mInfoBtn;
      private long mLastModeChangeMillis;
      private int mLastUiType;
      private ImageView mModeListBlurView;
      private CameraModeSwitchManager mModeSwitchManager;
      private QuickOptionLayout mQuickOptionLayout;
      private View mQuickParentLayout;
      private SelfFlashCoverView mSelfFlashCoverView;
      private boolean mSkipSelfFlashCheck;
      private ImageView mSwapeMoreInfo;
      private ImageView mSwapeMoreSettings;
      private ImageView mSwapeSettings;
      private ImageView mSwapeView;
      private final List mViewStateObservers;
      private boolean quickShowing;
      private LinearLayout zoomParentLinearLayout;
/*
 * Declared Constructors.
 */
    public MotoCameraAppUI(AppController, MainActivityLayout, boolean) { ... }
    public static void $r8$lambda$7lXpTkqckIypumuKnAPMjCjSGJU(MotoCameraAppUI) { ... }
    public static void $r8$lambda$eKH2OvNWJF1Wd9QDhh3bPWElhvw(MotoCameraAppUI, int, int, int) { ... }
    public static void $r8$lambda$r8YHeoO1Biy_6EoHKnHM2d2-J8Y(MotoCameraAppUI) { ... }
    static volatile boolean -$$Nest$fgetmBufferShowing(MotoCameraAppUI) { ... }
    static volatile ImageView -$$Nest$fgetmModeListBlurView(MotoCameraAppUI) { ... }
    static volatile CameraModeSwitchManager -$$Nest$fgetmModeSwitchManager(MotoCameraAppUI) { ... }
    static volatile SelfFlashCoverView -$$Nest$fgetmSelfFlashCoverView(MotoCameraAppUI) { ... }
    static volatile boolean -$$Nest$fgetquickShowing(MotoCameraAppUI) { ... }
    static volatile void -$$Nest$msetInfoBtnVisibility(MotoCameraAppUI) { ... }
    static volatile void -$$Nest$mshowPortraitTipDialog(MotoCameraAppUI) { ... }
    static volatile boolean -$$Nest$mswapeViewShowing(MotoCameraAppUI) { ... }
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    private void StartBlurCoverAnimation(boolean) { ... }
    public void changeBottomScrollView(int, boolean) { ... }
    private void changeGoogleLensUI(int) { ... }
    public void changeZoomPanelVisibility(int) { ... }
    public void changeZoomPanelVisibility(boolean) { ... }
    protected void freezeScreenWithBlurBitmap(Bitmap, RectF) { ... }
    public MotoCaptureLayoutHelper getCaptureLayoutHelper() { ... }
    public boolean getFilterViewVisible() { ... }
    public ImageButton getGoogleLensButton() { ... }
    public SelectorSwitcher getMakeUpSwitcher() { ... }
    public Rect getMotoTopPanelRect() { ... }
    public int getRightCamera() { ... }
    public void getTopAndBottomOverlay(Canvas) { ... }
    public void hideImageCoverAfterAnimationEnd() { ... }
    public void hideSelfFlashCover() { ... }
    public boolean inMoreMenuState() { ... }
    public boolean inTouchPhotoGraphState() { ... }
    protected void inflateLayout() { ... }
    public void initBottomBar() { ... }
    protected void initHorizontalModeScroll() { ... }
    public void initModeList() { ... }
    public boolean isModeChangeEnable() { ... }
    public boolean isModeDoubleChange() { ... }
    public boolean isModeListBlurViewVisible() { ... }
    public boolean isPreviewFrameAvailable() { ... }
    public boolean isQuickOptionShowing() { ... }
    public boolean isQuickShowing() { ... }
    private void lambda$hideSelfFlashCover$2() { ... }
    private void lambda$new$0(int, int, int) { ... }
    private void lambda$showSelfFlashCover$1() { ... }
    public void onCameraIdUpdate(int) { ... }
    public void onCloseModeList() { ... }
    public void onDestroy() { ... }
    public void onItemChangeListener(String, int, int) { ... }
    public void onModeItemChangeListener(int) { ... }
    public boolean onModeScrolled(int, int) { ... }
    public void onOpenModeList() { ... }
    public void onOrientationChanged(OrientationManager, OrientationManager$DeviceOrientation) { ... }
    public void onPreviewStarted() { ... }
    protected void onSwipeDetected(int) { ... }
    public void pause() { ... }
    public void prepareModuleUI() { ... }
    public void registerViewStateObserver(IViewStateObserver) { ... }
    public int resetToDefaultMode(int) { ... }
    public void resume() { ... }
    protected void runFreezeCoverRunnable(Bitmap) { ... }
    public boolean selfFlashShowing() { ... }
    public void setBlurImage(Bitmap) { ... }
    public void setCircleViewVisible(boolean) { ... }
    public void setDesiredPreviewSize(int, int) { ... }
    public void setIndicatorBottomBarWrapperVisible(boolean) { ... }
    private void setInfoBtnVisibility() { ... }
    public void setModeScrollPanelShow(boolean) { ... }
    public void setModeTagVisible(int) { ... }
    public void setQuickItemEnable(String, boolean) { ... }
    public void setQuickItemState(String, int) { ... }
    public void setSwipeEnabled(boolean) { ... }
    public void setSwitchButtonEnabled(boolean) { ... }
    public void showModeSwitchView(boolean) { ... }
    private void showPortraitTipDialog() { ... }
    public void showSelfFlashCover() { ... }
    public boolean showSettingsUI(int) { ... }
    public void skipSelfFlashCheck() { ... }
    public void startModeTransitionImageAnimation(RectF, RectF) { ... }
    private boolean supportSwapSettings() { ... }
    private boolean supportSwapSettings(int) { ... }
    private boolean swapeViewShowing() { ... }
    public void transitionToCancel() { ... }
    public void transitionToIntentCaptureLayout() { ... }
    public void transitionToIntentReviewLayout() { ... }
    public void unregisterViewStateObserver(IViewStateObserver) { ... }
    private void updateBottomBarBottomGuideline(int) { ... }
    private void updateBottomBarTopExGuideline(int) { ... }
    private void updateBottomBarTopGuideline(int) { ... }
    private void updateBottomBarTopOpGuideline(int) { ... }
    public void updateDualViewZoomPanel() { ... }
    public void updateExtendLayoutParams(ViewGroup, int) { ... }
    private void updateExtendPanelLayout() { ... }
    public void updateExtendPanelUI(int) { ... }
    public void updateFilterVisible(boolean) { ... }
    public void updateGoogleLensUI(boolean) { ... }
    public void updateGoogleLensUI(boolean, boolean) { ... }
    private void updateGuideline() { ... }
    public void updateRatioButtonAndQuickItemState() { ... }
    private void updateSelfFlashCoverState(boolean) { ... }
    public void updateSelfFlashUI(int) { ... }
    public void updateSomeQuickOptionSettings(boolean) { ... }
    public void updateSwapeView(boolean) { ... }
    public void updateSwapeViewVisible(boolean) { ... }
    private void updateTopPanelBottomGuideline(int) { ... }
    public void updateTopPanelUI(int) { ... }
    public void updateZoomPanelHeight(int) { ... }
    public void updatetimelapseVisible(boolean) { ... }

} 