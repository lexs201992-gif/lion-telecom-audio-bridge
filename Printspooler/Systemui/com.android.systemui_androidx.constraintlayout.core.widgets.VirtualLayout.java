package androidx.constraintlayout.core.widgets;
import androidx.constraintlayout.widget.ConstraintLayout$Measurer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;

public abstract class VirtualLayout extends HelperWidget
{
/*
 * Field Definitions.
 */
      public final BasicMeasure$Measure mMeasure;
      public int mMeasuredHeight;
      public int mMeasuredWidth;
      public ConstraintLayout$Measurer mMeasurer;
      public boolean mNeedsCallFromSolver;
      public int mPaddingBottom;
      public int mPaddingEnd;
      public int mPaddingStart;
      public int mPaddingTop;
      public int mResolvedPaddingLeft;
      public int mResolvedPaddingRight;
/*
 * Declared Constructors.
 */
    public VirtualLayout() { ... }
    public abstract void measure(int, int, int, int) { ... }
    public final void measure(ConstraintWidget, ConstraintWidget$DimensionBehaviour, int, ConstraintWidget$DimensionBehaviour, int) { ... }
    public final void updateConstraints() { ... }

} 