package com.android.server.wm;
import android.view.InsetsState;
import android.view.SurfaceControl$Transaction;
import java.util.ArrayList;
import android.graphics.Rect;
import android.view.SurfaceControl;
import android.content.res.Configuration;
import com.android.server.wm.WindowManagerService;
import android.view.SurfaceControlViewHost$SurfacePackage;

 class TrustedOverlayHost extends Object
{
/*
 * Field Definitions.
 */
      final ArrayList mOverlays;
       SurfaceControl mSurfaceControl;
      final WindowManagerService mWmService;
/*
 * Declared Constructors.
 */
     TrustedOverlayHost(WindowManagerService) { ... }
     void addOverlay(SurfaceControlViewHost$SurfacePackage, SurfaceControl) { ... }
     void dispatchConfigurationChanged(Configuration) { ... }
    private void dispatchDetachedFromWindow() { ... }
     void dispatchInsetsChanged(InsetsState, Rect) { ... }
     void release() { ... }
     boolean removeOverlay(SurfaceControlViewHost$SurfacePackage) { ... }
     void requireOverlaySurfaceControl() { ... }
     void setLayer(SurfaceControl$Transaction, int) { ... }
     void setParent(SurfaceControl$Transaction, SurfaceControl) { ... }
     void setVisibility(SurfaceControl$Transaction, boolean) { ... }

} 