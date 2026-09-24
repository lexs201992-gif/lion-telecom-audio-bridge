package androidx.constraintlayout.motion.widget;
import java.lang.String;
import androidx.constraintlayout.motion.widget.MotionLayout;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Path;
import android.graphics.Paint;
import androidx.constraintlayout.motion.widget.MotionController;

public final class MotionLayout$DevModeDraw extends Object
{
/*
 * Field Definitions.
 */
      public final Rect mBounds;
      public final Paint mFillPaint;
      public int mKeyFrameCount;
      public final float[] mKeyFramePoints;
      public final Paint mPaint;
      public final Paint mPaintGraph;
      public final Paint mPaintKeyframes;
      public Path mPath;
      public final int[] mPathMode;
      public float[] mPoints;
      public final float[] mRectangle;
      public final int mShadowTranslate;
      public final Paint mTextPaint;
      public final MotionLayout this$0;
/*
 * Declared Constructors.
 */
    public MotionLayout$DevModeDraw(MotionLayout) { ... }
    public final void drawAll(Canvas, int, int, MotionController) { ... }
    public final void drawPathCartesian(Canvas) { ... }
    public final void drawPathCartesianTicks(Canvas, float, float) { ... }
    public final void drawPathRelativeTicks(Canvas, float, float) { ... }
    public final void drawPathScreenTicks(Canvas, float, float, int, int) { ... }
    public final void getTextBounds(Paint, String) { ... }

} 