package com.android.systemui.plugins;
import java.lang.String;
import java.lang.StringBuilder;
import android.content.ComponentName;
import android.util.SparseArray;

public final class VolumeDialogController$State extends Object
{
/*
 * Field Definitions.
 */
      public static int NO_ACTIVE_STREAM;
      public static final int VERSION;
      public int activeStream;
      public boolean disallowAlarms;
      public boolean disallowMedia;
      public boolean disallowRinger;
      public boolean disallowSystem;
      public ComponentName effectsSuppressor;
      public String effectsSuppressorName;
      public int ringerModeExternal;
      public int ringerModeInternal;
      public final SparseArray states;
      public int zenMode;
/*
 * Declared Constructors.
 */
    public VolumeDialogController$State() { ... }
    public VolumeDialogController$State copy() { ... }
    private static void sep(StringBuilder, int) { ... }
    public String toString() { ... }
    public String toString(int) { ... }

} 