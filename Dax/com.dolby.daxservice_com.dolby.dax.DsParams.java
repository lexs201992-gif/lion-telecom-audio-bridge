package com.dolby.dax;
import java.lang.String;
import java.util.Map;

public final class DsParams extends Enum
{
/*
 * Field Definitions.
 */
      private static final DsParams[] $VALUES;
      public static final DsParams BassEnable;
      private static final String[] DAP_PARAM_NAMES;
      public static final DsParams DialogEnhancementAmount;
      public static final DsParams DialogEnhancementDucking;
      public static final DsParams DialogEnhancementEnable;
      public static final DsParams DolbyHeadphoneVirtualizerControl;
      public static final DsParams DolbyVirtualSpeakerVirtualizerControl;
      public static final DsParams DolbyVolumeLevelerAmount;
      public static final DsParams DolbyVolumeLevelerEnable;
      public static final DsParams GraphicEqualizerBandGains;
      public static final DsParams GraphicEqualizerEnable;
      public static final DsParams IntelligentEqualizerAmount;
      public static final DsParams IntelligentEqualizerPreset;
      public static final DsParams ReverbReductionAmount;
      public static final DsParams ReverbReductionEnable;
      public static final DsParams StereoWideningAmount;
      public static final DsParams VirtualBassEnable;
      private int id_;
      public static final Map kParamToLen;
      private static final DsParams[] params;
/*
 * Declared Constructors.
 */
    private DsParams(String, int, int) { ... }
    private static DsParams[] $values() { ... }
    public int toInt() { ... }
    public String toString() { ... }
    public static DsParams valueOf(String) { ... }
    public static DsParams[] values() { ... }

} 