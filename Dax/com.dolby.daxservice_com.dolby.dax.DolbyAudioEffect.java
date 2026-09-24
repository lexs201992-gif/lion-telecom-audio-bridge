package com.dolby.dax;
import java.lang.Object;
import java.lang.IllegalArgumentException;
import java.lang.UnsupportedOperationException;
import java.util.UUID;

public class DolbyAudioEffect extends AudioEffect
{
/*
 * Field Definitions.
 */
      public static final UUID EFFECT_TYPE_DOLBY_AUDIO_PROCESSING;
      private final Object mParamListenerLock;
      private boolean mProfileSupported;
      private int mSessionId;
      private static int sNumOfIeqPresets;
      private static int sNumOfProfiles;
/*
 * Declared Constructors.
 */
    public DolbyAudioEffect(int, int) { ... }
    private static int byteArrayToInt32(byte[]) { ... }
    private static int[] byteArrayToInt32Array(byte[], int, int) { ... }
    private void checkReturnValue(int) { ... }
    protected boolean getBoolParam(int) { ... }
    public int[] getDapParameter(int, int)  throws IllegalArgumentException{ ... }
    public int[] getDapParameter(int, int, int)  throws IllegalArgumentException{ ... }
    public boolean getDsOn() { ... }
    public int getHeadTrackingMode() { ... }
    protected int getIntParam(int) { ... }
    public int getNumOfIeqPresets() { ... }
    public int getNumOfProfiles() { ... }
    public int getProfile() { ... }
    public boolean hasControl() { ... }
    private static int int32ArrayToByteArray(int[], byte[], int) { ... }
    private static int int32ToByteArray(int, byte[], int) { ... }
    public boolean isMonoSpeaker() { ... }
    protected int setBoolParam(int, boolean) { ... }
    public void setDapParameter(int, int, int, int[])  throws UnsupportedOperationExceptionIllegalArgumentException{ ... }
    public void setDapParameter(int, int, int[])  throws UnsupportedOperationExceptionIllegalArgumentException{ ... }
    public void setDsOn(boolean) { ... }
    public void setHeadTrackingMode(int) { ... }
    protected int setIntParam(int, int) { ... }
    public void setProfile(int)  throws IllegalArgumentException{ ... }

} 