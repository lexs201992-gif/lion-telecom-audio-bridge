package com.android.server.telecom.stats;
import java.lang.String;

public final class CallFailureCause extends Enum
{
/*
 * Field Definitions.
 */
      private static final CallFailureCause[] $VALUES;
      public static final CallFailureCause CANNOT_HOLD_CALL;
      public static final CallFailureCause INVALID_USE;
      public static final CallFailureCause IN_EMERGENCY_CALL;
      public static final CallFailureCause MAX_HOLD_CALLS;
      public static final CallFailureCause MAX_OUTGOING_CALLS;
      public static final CallFailureCause MAX_RINGING_CALLS;
      public static final CallFailureCause MAX_SELF_MANAGED_CALLS;
      public static final CallFailureCause NONE;
      private final int mCode;
/*
 * Declared Constructors.
 */
    private CallFailureCause(String, int, int) { ... }
    private static CallFailureCause[] $values() { ... }
    public int getCode() { ... }
    public boolean isSuccess() { ... }
    public static CallFailureCause valueOf(String) { ... }
    public static CallFailureCause[] values() { ... }

} 