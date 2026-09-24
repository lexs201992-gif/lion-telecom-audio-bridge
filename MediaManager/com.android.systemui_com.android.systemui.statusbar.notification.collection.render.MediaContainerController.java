package com.android.systemui.statusbar.notification.collection.render;
import java.lang.String;
import com.android.systemui.statusbar.notification.stack.MediaContainerView;
import android.view.LayoutInflater;
import com.android.systemui.statusbar.notification.collection.render.NodeController;
import android.view.View;

public final class MediaContainerController extends Object
{
/*
 * Field Definitions.
 */
      public final LayoutInflater layoutInflater;
      public MediaContainerView mediaContainerView;
/*
 * Declared Constructors.
 */
    public MediaContainerController(LayoutInflater) { ... }
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
    public final void removeChild(NodeController, boolean) { ... }
    public final boolean removeFromParentIfKeptForAnimation() { ... }
    public final void resetKeepInParentForAnimation() { ... }

} 