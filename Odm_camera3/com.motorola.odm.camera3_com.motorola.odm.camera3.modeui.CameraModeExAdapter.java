package com.motorola.odm.camera3.modeui;
import android.view.ViewGroup;
import java.util.List;
import androidx.recyclerview.widget.RecyclerView$ViewHolder;
import android.content.Context;
import java.util.Map;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.modeui.CameraModeExAdapter$OnScrollChangeListener;
import com.motorola.odm.camera3.modeui.ModeRecyclerView;
import androidx.recyclerview.widget.LinearSnapHelper;

public class CameraModeExAdapter extends RecyclerView$Adapter
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private Context mContext;
      private int mCurrentColor;
      private Map mEmptyViews;
      private boolean mIsLock;
      private boolean mIsScroll;
      private LinearSnapHelper mLinearSnapHelper;
      private CameraModeExAdapter$OnScrollChangeListener mListener;
      private List mModeList;
      private int mNextVisiblePosition;
      private int mPosition;
      private ModeRecyclerView mRecyclerView;
      private int mUPosition;
/*
 * Declared Constructors.
 */
    public CameraModeExAdapter(Context, List) { ... }
    static volatile boolean -$$Nest$fgetmIsLock(CameraModeExAdapter) { ... }
    static volatile LinearSnapHelper -$$Nest$fgetmLinearSnapHelper(CameraModeExAdapter) { ... }
    static volatile CameraModeExAdapter$OnScrollChangeListener -$$Nest$fgetmListener(CameraModeExAdapter) { ... }
    static volatile int -$$Nest$fgetmPosition(CameraModeExAdapter) { ... }
    static volatile ModeRecyclerView -$$Nest$fgetmRecyclerView(CameraModeExAdapter) { ... }
    static volatile int -$$Nest$fgetmUPosition(CameraModeExAdapter) { ... }
    static volatile void -$$Nest$fputmIsScroll(CameraModeExAdapter, boolean) { ... }
    static volatile void -$$Nest$fputmPosition(CameraModeExAdapter, int) { ... }
    static volatile void -$$Nest$fputmUPosition(CameraModeExAdapter, int) { ... }
    static volatile void -$$Nest$mupdateVisibleColor(CameraModeExAdapter, int) { ... }
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    public void bindRecyclerViewScrollListener(ModeRecyclerView) { ... }
    public int getItemCount() { ... }
    public int getItemViewType(int) { ... }
    public LinearSnapHelper getLinearSnapHelper() { ... }
    public int getPosition() { ... }
    public void onBindViewHolder(RecyclerView$ViewHolder, int) { ... }
    public RecyclerView$ViewHolder onCreateViewHolder(ViewGroup, int) { ... }
    public void onItemChange(boolean, int) { ... }
    public void setLock(boolean) { ... }
    public void setPosition(int) { ... }
    public void setScrollChangeListener(CameraModeExAdapter$OnScrollChangeListener) { ... }
    public void updateTheme(int) { ... }
    private void updateVisibleColor(int) { ... }

} 