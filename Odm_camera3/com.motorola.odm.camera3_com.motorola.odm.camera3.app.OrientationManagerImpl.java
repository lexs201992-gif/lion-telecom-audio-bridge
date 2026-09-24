package com.motorola.odm.camera3.app;
import com.motorola.odm.camera3.app.OrientationManager$DeviceOrientation;
import android.os.Handler;
import java.util.List;
import android.content.Context;
import com.motorola.odm.camera3.app.OrientationManager$OnOrientationChangeListener;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.CameraActivity;
import com.motorola.odm.camera3.app.OrientationManagerImpl$MyOrientationEventListener;

public class OrientationManagerImpl extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private final CameraActivity mActivity;
      private final Handler mHandler;
      private final boolean mIsDefaultToPortrait;
      private OrientationManager$DeviceOrientation mLastDeviceOrientation;
      private final List mListeners;
      private final OrientationManagerImpl$MyOrientationEventListener mOrientationListener;
      private boolean mOrientationLocked;
      private boolean mRotationLockedSetting;
/*
 * Declared Constructors.
 */
    public OrientationManagerImpl(CameraActivity, Handler) { ... }
    static volatile Handler -$$Nest$fgetmHandler(OrientationManagerImpl) { ... }
    static volatile OrientationManager$DeviceOrientation -$$Nest$fgetmLastDeviceOrientation(OrientationManagerImpl) { ... }
    static volatile List -$$Nest$fgetmListeners(OrientationManagerImpl) { ... }
    static volatile void -$$Nest$fputmLastDeviceOrientation(OrientationManagerImpl, OrientationManager$DeviceOrientation) { ... }
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    static volatile OrientationManager$DeviceOrientation -$$Nest$smroundOrientation(OrientationManager$DeviceOrientation, int) { ... }
    public void addOnOrientationChangeListener(OrientationManager$OnOrientationChangeListener) { ... }
    public OrientationManager$DeviceOrientation getDeviceOrientation() { ... }
    public OrientationManager$DeviceOrientation getDisplayRotation() { ... }
    private static boolean isDefaultToPortrait(Context) { ... }
    public void pause() { ... }
    public void removeOnOrientationChangeListener(OrientationManager$OnOrientationChangeListener) { ... }
    public void resume() { ... }
    private static OrientationManager$DeviceOrientation roundOrientation(OrientationManager$DeviceOrientation, int) { ... }

} 