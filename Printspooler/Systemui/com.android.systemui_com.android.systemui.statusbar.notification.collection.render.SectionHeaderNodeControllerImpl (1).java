package com.android.systemui.statusbar.notification.collection.render;
import android.view.ViewGroup;
import com.android.systemui.statusbar.notification.collection.render.NodeController;
import android.view.View;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl$onHeaderClickListener$1;
import android.view.View$OnClickListener;
import android.view.LayoutInflater;
import java.lang.String;
import com.android.systemui.statusbar.notification.stack.SectionHeaderView;

public final class SectionHeaderNodeControllerImpl extends Object
{
/*
 * Field Definitions.
 */
      public SectionHeaderView _view;
      public final ActivityStarter activityStarter;
      public boolean clearAllButtonEnabled;
      public View$OnClickListener clearAllClickListener;
      public final String clickIntentAction;
      public final int headerTextResId;
      public final LayoutInflater layoutInflater;
      public final String nodeLabel;
      public final SectionHeaderNodeControllerImpl$onHeaderClickListener$1 onHeaderClickListener;
/*
 * Declared Constructors.
 */
    public SectionHeaderNodeControllerImpl(String, LayoutInflater, int, ActivityStarter, String) { ... }
    public final void addChildAt(NodeController, int) { ... }
    public final View getChildAt(int) { ... }
    public final int getChildCount() { ... }
    public final String getNodeLabel() { ... }
    public final View getView() { ... }
    public final void moveChildTo(NodeController, int) { ... }
    public final boolean offerToKeepInParentForAnimation() { ... }
    public final void onViewAdded() { ... }
    public final void onViewMoved() { ... }
    public final void onViewRemoved() { ... }
    public final void reinflateView(ViewGroup) { ... }
    public final void removeChild(NodeController, boolean) { ... }
    public final boolean removeFromParentIfKeptForAnimation() { ... }
    public final void resetKeepInParentForAnimation() { ... }

} 