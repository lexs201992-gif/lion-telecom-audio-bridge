package com.android.ex.camera2.portability;

public abstract class SprdCameraAgent extends Object
{
/*
 * Field Definitions.
 */
      public static boolean isNeedMoreLog;
      public boolean mUsingSurfaceView;
/*
 * Declared Constructors.
 */
    public SprdCameraAgent() { ... }
    public void closeCameraAsyncWithState() { ... }
    protected abstract void startRecoderRequest() { ... }
    protected abstract void stopRecoderRequest() { ... }
    public void waitPixelCopy(boolean) { ... }

} 