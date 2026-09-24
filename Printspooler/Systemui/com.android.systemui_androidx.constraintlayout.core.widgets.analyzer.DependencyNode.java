package androidx.constraintlayout.core.widgets.analyzer;
import java.lang.String;
import androidx.constraintlayout.core.widgets.analyzer.Dependency;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import java.util.List;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type;
import androidx.constraintlayout.core.widgets.analyzer.DimensionDependency;

public class DependencyNode extends Object
{
/*
 * Field Definitions.
 */
      public boolean delegateToWidgetRun;
      public final List mDependencies;
      public int mMargin;
      public DimensionDependency mMarginDependency;
      public int mMarginFactor;
      public final WidgetRun mRun;
      public final List mTargets;
      public DependencyNode$Type mType;
      public boolean readyToSolve;
      public boolean resolved;
      public WidgetRun updateDelegate;
      public int value;
/*
 * Declared Constructors.
 */
    public DependencyNode(WidgetRun) { ... }
    public final void addDependency(Dependency) { ... }
    public final void clear() { ... }
    public void resolve(int) { ... }
    public final String toString() { ... }
    public final void update(Dependency) { ... }

} 