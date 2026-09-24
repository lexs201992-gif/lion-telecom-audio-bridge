package com.dolby.daxservice;
import android.content.Context;

public class DefaultValues extends Object
{
/*
 * Field Definitions.
 */
      private final int DEFAULT_DE_AMOUNT;
      private final int DEFAULT_DS_PROFILE;
      private final boolean DEFAULT_DS_STATE;
      private final int[] DEFAULT_GEQ_GAINS;
      private final int DEFAULT_IEQ_PRESET;
      private int default_de_amount;
      private int default_ds_profile;
      private boolean default_ds_state;
      private int[] default_geq_gains;
      private int default_ieq_preset_headphone;
      private int default_ieq_preset_speaker;
/*
 * Declared Constructors.
 */
     DefaultValues(Context) { ... }
    public int getDefaultDeAmount() { ... }
    public int getDefaultDsProfile() { ... }
    public boolean getDefaultDsState() { ... }
    public int getDefaultIeqPresetHeadphone() { ... }
    public int getDefaultIeqPresetSpeaker() { ... }

} 