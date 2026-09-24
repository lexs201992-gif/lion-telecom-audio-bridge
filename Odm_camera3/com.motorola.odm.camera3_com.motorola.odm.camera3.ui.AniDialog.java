package com.motorola.odm.camera3.ui;
import com.motorola.odm.camera3.ui.MotoCaptureLayoutHelper;
import android.content.DialogInterface;
import android.util.SparseArray;
import android.util.DisplayMetrics;
import java.util.List;
import android.widget.TextView;
import android.widget.ImageView;
import android.os.Handler;
import android.os.Bundle;
import android.content.DialogInterface$OnKeyListener;
import android.view.View$OnClickListener;
import com.motorola.odm.camera3.ui.AniBean;
import android.view.View;
import com.motorola.odm.camera3.CameraActivity;
import android.content.DialogInterface$OnCancelListener;
import android.widget.LinearLayout;
import com.motorola.odm.camera3.ui.StepBaseDialog;
import android.view.KeyEvent;
import com.motorola.odm.camera3.ui.AniDialog$LinkedAniBean;
import java.lang.String;
import android.app.AlertDialog;
import android.content.Context;

public class AniDialog extends Dialog
{
/*
 * Field Definitions.
 */
      private static final List ANIMATION_TYPES;
      private AlertDialog alertDialog;
      private final String detail;
      private final int display;
      private final String item;
      private ImageView ivClose;
      private ImageView ivDisplay;
      private ImageView ivHint;
      private final CameraActivity mActivity;
      private final List mAnimationTypes;
      private final MotoCaptureLayoutHelper mCaptureLayoutHelper;
      private final int mContentHorizontal;
      private final int mContentSize;
      private final int mContentVertical;
       DisplayMetrics mDisplayMetrics;
      private boolean mExitDialog;
      private Handler mHandler;
      private final int mHint;
      private LinearLayout mLayout;
      private final SparseArray mLinkedAniBeans;
      private final int mMarginSpace;
      private final DialogInterface$OnCancelListener mOnCancellistener;
      private final View$OnClickListener mOnClickListener;
      private final int mPanelIconSize;
      private final int mSidePanelFirstIconMarginBottom;
      private StepBaseDialog mStepDialog;
      private final int mTopPanelMarginBottom;
      private final DialogInterface$OnKeyListener mTourMainListener;
      private int mType;
      private final String no;
      private final String ok;
      private final String title;
      private TextView tvDetail;
      private TextView tvItem;
      private TextView tvNo;
      private TextView tvOK;
      private TextView tvTitle;
/*
 * Declared Constructors.
 */
    public AniDialog(Context, int, int, int, String, String, String, String, String) { ... }
    public AniDialog(Context, int, int, String, String, String, String, String) { ... }
    public static void $r8$lambda$QtyKgNp4NHEjnsubE1OzbRNMz9E(AniDialog, int, AniDialog$LinkedAniBean, View) { ... }
    public static boolean $r8$lambda$oKhPIgEz3RhZHlJQsinpmObVxuc(AniDialog, int, AniDialog$LinkedAniBean, DialogInterface, int, KeyEvent) { ... }
    static volatile CameraActivity -$$Nest$fgetmActivity(AniDialog) { ... }
    static volatile boolean -$$Nest$fgetmExitDialog(AniDialog) { ... }
    static volatile Handler -$$Nest$fgetmHandler(AniDialog) { ... }
    static volatile SparseArray -$$Nest$fgetmLinkedAniBeans(AniDialog) { ... }
    static volatile int -$$Nest$fgetmType(AniDialog) { ... }
    static volatile void -$$Nest$mdialogStartAnimation(AniDialog) { ... }
    static volatile void -$$Nest$mshowComponents(AniDialog) { ... }
    public AniBean buildTourStep(int) { ... }
    public AniBean buildTourStep(int, int, int, float, float, int) { ... }
    public AniBean buildTourStep(int, int, int, float, float, int, int) { ... }
    public AniBean buildTourStep(int, int, int, float, float, boolean, int) { ... }
    public AniBean buildTourStep(String, int, String, float, float, boolean, int, int) { ... }
    private List checkAnimationTypes() { ... }
    public void closeDialog() { ... }
    private void dialogAnimation(AniDialog$LinkedAniBean, int) { ... }
    public void dialogAnimationNotNow(AniBean) { ... }
    private void dialogStartAnimation() { ... }
    public void exitDialog() { ... }
    private void formatDialogStyle(AniDialog$LinkedAniBean, int, View$OnClickListener) { ... }
    protected List getAnimationTypes() { ... }
    public int getDialogType() { ... }
    private void initView() { ... }
    private void lambda$dialogAnimation$1(int, AniDialog$LinkedAniBean, View) { ... }
    private boolean lambda$formatDialogStyle$0(int, AniDialog$LinkedAniBean, DialogInterface, int, KeyEvent) { ... }
    protected void onCreate(Bundle) { ... }
    public void setDialogType(int) { ... }
    private void setValue(int, int, String, String, String, String, String) { ... }
    private void setValue(int, String, String, String, String, String) { ... }
    private void showComponents() { ... }

} 