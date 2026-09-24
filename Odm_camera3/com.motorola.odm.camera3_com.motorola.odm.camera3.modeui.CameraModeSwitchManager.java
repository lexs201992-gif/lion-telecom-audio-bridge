package com.motorola.odm.camera3.modeui;
import com.motorola.odm.camera3.app.IModeChangeController;
import android.graphics.Paint;
import android.os.Handler;
import java.util.List;
import android.widget.TextView;
import com.motorola.odm.camera3.modeui.CardModeAdapter;
import android.widget.ImageView;
import android.view.View;
import com.motorola.odm.camera3.modeui.CameraModeExAdapter;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.CameraActivity;
import com.motorola.odm.camera3.modeui.ModeRecyclerView;
import com.motorola.odm.camera3.modeui.CameraModeSwitchManager$ModeItemChangeListener;
import java.lang.String;
import com.motorola.odm.camera3.modeui.CardRecyclerView;

public class CameraModeSwitchManager extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private List activeModeList;
      private List cardModeList;
      private boolean mCardFilterDraw;
      private boolean mCardItemInMove;
      private CardModeAdapter mCardModeAdapter;
      private CardRecyclerView mCardRecyclerView;
      private int mCardSelectPosition;
      private boolean mClickCardChange;
      private CameraActivity mController;
      private String mDefaultModeInfo;
      private Handler mHandler;
      private boolean mInMoveState;
      private boolean mIsDetect;
      private CameraModeSwitchManager$ModeItemChangeListener mItemChangeListener;
      private Paint mItemPaint;
      private CameraModeExAdapter mModeAdapter;
      private TextView mModeDeleteView;
      private boolean mModeFilterDraw;
      private List mOriginList;
      private ModeRecyclerView mRecyclerView;
      private ImageView mResetImageView;
      private int mSelectPosition;
/*
 * Declared Constructors.
 */
    public CameraModeSwitchManager(CameraActivity, View) { ... }
    static volatile List -$$Nest$fgetactiveModeList(CameraModeSwitchManager) { ... }
    static volatile List -$$Nest$fgetcardModeList(CameraModeSwitchManager) { ... }
    static volatile boolean -$$Nest$fgetmCardFilterDraw(CameraModeSwitchManager) { ... }
    static volatile boolean -$$Nest$fgetmCardItemInMove(CameraModeSwitchManager) { ... }
    static volatile CardModeAdapter -$$Nest$fgetmCardModeAdapter(CameraModeSwitchManager) { ... }
    static volatile CardRecyclerView -$$Nest$fgetmCardRecyclerView(CameraModeSwitchManager) { ... }
    static volatile int -$$Nest$fgetmCardSelectPosition(CameraModeSwitchManager) { ... }
    static volatile boolean -$$Nest$fgetmClickCardChange(CameraModeSwitchManager) { ... }
    static volatile CameraActivity -$$Nest$fgetmController(CameraModeSwitchManager) { ... }
    static volatile Handler -$$Nest$fgetmHandler(CameraModeSwitchManager) { ... }
    static volatile boolean -$$Nest$fgetmIsDetect(CameraModeSwitchManager) { ... }
    static volatile Paint -$$Nest$fgetmItemPaint(CameraModeSwitchManager) { ... }
    static volatile CameraModeExAdapter -$$Nest$fgetmModeAdapter(CameraModeSwitchManager) { ... }
    static volatile TextView -$$Nest$fgetmModeDeleteView(CameraModeSwitchManager) { ... }
    static volatile boolean -$$Nest$fgetmModeFilterDraw(CameraModeSwitchManager) { ... }
    static volatile ModeRecyclerView -$$Nest$fgetmRecyclerView(CameraModeSwitchManager) { ... }
    static volatile ImageView -$$Nest$fgetmResetImageView(CameraModeSwitchManager) { ... }
    static volatile int -$$Nest$fgetmSelectPosition(CameraModeSwitchManager) { ... }
    static volatile void -$$Nest$fputmCardFilterDraw(CameraModeSwitchManager, boolean) { ... }
    static volatile void -$$Nest$fputmCardItemInMove(CameraModeSwitchManager, boolean) { ... }
    static volatile void -$$Nest$fputmCardSelectPosition(CameraModeSwitchManager, int) { ... }
    static volatile void -$$Nest$fputmInMoveState(CameraModeSwitchManager, boolean) { ... }
    static volatile void -$$Nest$fputmIsDetect(CameraModeSwitchManager, boolean) { ... }
    static volatile void -$$Nest$fputmModeFilterDraw(CameraModeSwitchManager, boolean) { ... }
    static volatile void -$$Nest$fputmSelectPosition(CameraModeSwitchManager, int) { ... }
    static volatile boolean -$$Nest$misDefaultList(CameraModeSwitchManager) { ... }
    static volatile boolean -$$Nest$misDefaultMode(CameraModeSwitchManager, int) { ... }
    static volatile boolean -$$Nest$misQRCodeMode(CameraModeSwitchManager) { ... }
    static volatile void -$$Nest$mscrollCurrentPostion(CameraModeSwitchManager, int) { ... }
    static volatile void -$$Nest$mupdateModeData(CameraModeSwitchManager) { ... }
    public boolean cardViewShowing() { ... }
    public void checkCurrentModeState() { ... }
    private void filterCardList(int) { ... }
    public int getActiveIndexByModeId(int) { ... }
    public int getCardIndexByModeId(int) { ... }
    private int getIndexByModeId(boolean, int) { ... }
    public int getListModeId(int) { ... }
    public String getModeDataInfo() { ... }
    public ModeRecyclerView getModeRecyclerView() { ... }
    private void init(View) { ... }
    private void initTouchHelp() { ... }
    private boolean isDefaultList() { ... }
    private boolean isDefaultMode(int) { ... }
    private boolean isQRCodeMode() { ... }
    public void onCardItemClick(int) { ... }
    public void onPositionChange(int) { ... }
    public void onSwipeDetected(boolean) { ... }
    public void onUpdateRect(int) { ... }
    private void onUpdateRectDelay(int) { ... }
    public void resetModeData() { ... }
    public int resetToDefaultMode(int) { ... }
    public void scrollCurrentMode(int) { ... }
    private void scrollCurrentPostion(int) { ... }
    public void setCardSelectMode(boolean, int) { ... }
    public void setModeChangeController(IModeChangeController) { ... }
    public void setModeItemChangeListener(CameraModeSwitchManager$ModeItemChangeListener) { ... }
    public void setModeList(List, List) { ... }
    public void setOrientation(int) { ... }
    public void showModeView(boolean) { ... }
    private void updateModeData() { ... }
    public void updateTheme(int) { ... }

} 