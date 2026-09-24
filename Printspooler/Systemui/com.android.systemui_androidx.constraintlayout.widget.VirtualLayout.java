package androidx.constraintlayout.widget;
import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.core.widgets.VirtualLayout;

public abstract class VirtualLayout extends ConstraintHelper
{
/*
 * Field Definitions.
 */
      public boolean mApplyElevationOnAttach;
      public boolean mApplyVisibilityOnAttach;
/*
 * Declared Constructors.
 */
    public VirtualLayout(Context, AttributeSet) { ... }
    public final void applyLayoutFeaturesInConstraintSet(ConstraintLayout) { ... }
    public void init(AttributeSet) { ... }
    public void onAttachedToWindow() { ... }
    public void onMeasure(VirtualLayout, int, int) { ... }
    public final void setElevation(float) { ... }
    public final void setVisibility(int) { ... }

} 