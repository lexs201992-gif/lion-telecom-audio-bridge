package com.android.networkstack.metrics;
import com.android.networkstack.com.google.protobuf.Internal$IntList;
import com.android.networkstack.com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.android.networkstack.android.stats.connectivity.HostnameTransResult;
import com.android.networkstack.android.stats.connectivity.DhcpErrorCode;
import com.android.networkstack.android.stats.connectivity.DhcpFeature;
import java.lang.Object;
import com.android.networkstack.com.google.protobuf.Internal$IntListAdapter$IntConverter;
import com.android.networkstack.com.google.protobuf.Parser;
import com.android.networkstack.metrics.DhcpSession$Builder;

public final class DhcpSession extends GeneratedMessageLite
{
/*
 * Field Definitions.
 */
      public static final int CONFLICT_COUNT_FIELD_NUMBER;
      private static final DhcpSession DEFAULT_INSTANCE;
      public static final int DISCOVER_COUNT_FIELD_NUMBER;
      public static final int ERROR_CODE_FIELD_NUMBER;
      public static final int HT_RESULT_FIELD_NUMBER;
      private static volatile Parser PARSER;
      public static final int REQUEST_COUNT_FIELD_NUMBER;
      public static final int USED_FEATURES_FIELD_NUMBER;
      private int bitField0_;
      private int conflictCount_;
      private int discoverCount_;
      private Internal$IntList errorCode_;
      private static final Internal$IntListAdapter$IntConverter errorCode_converter_;
      private int htResult_;
      private int requestCount_;
      private Internal$IntList usedFeatures_;
      private static final Internal$IntListAdapter$IntConverter usedFeatures_converter_;
/*
 * Declared Constructors.
 */
    private DhcpSession() { ... }
    static volatile void -$$Nest$maddErrorCode(DhcpSession, DhcpErrorCode) { ... }
    static volatile void -$$Nest$maddUsedFeatures(DhcpSession, DhcpFeature) { ... }
    static volatile void -$$Nest$msetConflictCount(DhcpSession, int) { ... }
    static volatile void -$$Nest$msetDiscoverCount(DhcpSession, int) { ... }
    static volatile void -$$Nest$msetHtResult(DhcpSession, HostnameTransResult) { ... }
    static volatile void -$$Nest$msetRequestCount(DhcpSession, int) { ... }
    static volatile DhcpSession -$$Nest$sfgetDEFAULT_INSTANCE() { ... }
    private void addErrorCode(DhcpErrorCode) { ... }
    private void addUsedFeatures(DhcpFeature) { ... }
    protected final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke, Object, Object) { ... }
    private void ensureErrorCodeIsMutable() { ... }
    private void ensureUsedFeaturesIsMutable() { ... }
    public int getConflictCount() { ... }
    public static DhcpSession getDefaultInstance() { ... }
    public int getDiscoverCount() { ... }
    public int getErrorCodeCount() { ... }
    public int getRequestCount() { ... }
    public static DhcpSession$Builder newBuilder() { ... }
    private void setConflictCount(int) { ... }
    private void setDiscoverCount(int) { ... }
    private void setHtResult(HostnameTransResult) { ... }
    private void setRequestCount(int) { ... }

} 