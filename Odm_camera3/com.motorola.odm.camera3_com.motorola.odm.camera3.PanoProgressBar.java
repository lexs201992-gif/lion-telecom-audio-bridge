package com.motorola.odm.camera3;
import com.motorola.odm.camera3.PanoProgressBar$OnDirectionChangeListener;
import android.graphics.Canvas;
import android.content.Context;
import com.motorola.odm.camera3.debug.Log$Tag;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.graphics.Paint;
import android.graphics.RectF;

public class PanoProgressBar extends ImageView
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private Paint avoidXfermodePaint;
       float bottomx;
       float bottomy;
      private final Paint mBackgroundPaint;
      private Context mContext;
      private int mDirection;
      private final Paint mDoneAreaPaint;
      private RectF mDrawBounds;
      private float mHeight;
      private final Paint mIndicatorPaint;
      private float mIndicatorWidth;
      private float mLeftMostProgress;
      private PanoProgressBar$OnDirectionChangeListener mListener;
      private float mMaxProgress;
      private float mProgress;
      private float mProgressOffset;
      private float mRightMostProgress;
      private float mWidth;
      private PorterDuffXfermode porterDuffXfermode;
       float rectHeight;
       float rectWidth;
      private RectF topRectF;
       float topx;
       float topy;
/*
 * Declared Constructors.
 */
    public PanoProgressBar(Context, AttributeSet) { ... }
    public static int dip2px(Context, float) { ... }
    protected void onDraw(Canvas) { ... }
    protected void onSizeChanged(int, int, int, int) { ... }
    public void reset() { ... }
    public void setBackgroundColor(int) { ... }
    private void setDirection(int) { ... }
    public void setDoneColor(int) { ... }
    public void setIndicatorColor(int) { ... }
    public void setIndicatorWidth(float) { ... }
    public void setMaxProgress(int) { ... }
    public void setOnDirectionChangeListener(PanoProgressBar$OnDirectionChangeListener) { ... }
    public void setProgress(int) { ... }
    public void setRightIncreasing(boolean) { ... }

} 