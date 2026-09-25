package com.android.networkstack.android.stats.connectivity;
import java.lang.String;
import com.android.networkstack.com.google.protobuf.Internal$EnumVerifier;
import com.android.networkstack.com.google.protobuf.Internal$EnumLiteMap;

public final class DhcpFeature extends Enum
{
/*
 * Field Definitions.
 */
      private static final DhcpFeature[] $VALUES;
      public static final DhcpFeature DF_DAD;
      public static final DhcpFeature DF_FILS;
      public static final DhcpFeature DF_INITREBOOT;
      public static final DhcpFeature DF_RAPIDCOMMIT;
      public static final DhcpFeature DF_UNKNOWN;
      private static final Internal$EnumLiteMap internalValueMap;
      private final int value;
/*
 * Declared Constructors.
 */
    private DhcpFeature(String, int, int) { ... }
    private static DhcpFeature[] $values() { ... }
    public final int getNumber() { ... }
    public static Internal$EnumVerifier internalGetVerifier() { ... }
    public static DhcpFeature valueOf(String) { ... }
    public static DhcpFeature[] values() { ... }

} 