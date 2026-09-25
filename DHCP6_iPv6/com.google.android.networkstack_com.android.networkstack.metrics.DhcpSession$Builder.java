package com.android.networkstack.metrics;
import com.android.networkstack.metrics.DhcpSession-IA;
import com.android.networkstack.android.stats.connectivity.DhcpErrorCode;
import com.android.networkstack.android.stats.connectivity.DhcpFeature;
import com.android.networkstack.android.stats.connectivity.HostnameTransResult;

public final class DhcpSession$Builder extends GeneratedMessageLite$Builder
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    private DhcpSession$Builder() { ... }
     DhcpSession$Builder(DhcpSession-IA) { ... }
    public DhcpSession$Builder addErrorCode(DhcpErrorCode) { ... }
    public DhcpSession$Builder addUsedFeatures(DhcpFeature) { ... }
    public int getConflictCount() { ... }
    public int getDiscoverCount() { ... }
    public int getErrorCodeCount() { ... }
    public int getRequestCount() { ... }
    public DhcpSession$Builder setConflictCount(int) { ... }
    public DhcpSession$Builder setDiscoverCount(int) { ... }
    public DhcpSession$Builder setHtResult(HostnameTransResult) { ... }
    public DhcpSession$Builder setRequestCount(int) { ... }

} 