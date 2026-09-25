.class public Lcom/android/networkstack/metrics/IpProvisioningMetrics;
.super Ljava/lang/Object;
.source "IpProvisioningMetrics.java"


# instance fields
.field private final mDhcpFeatures:Ljava/util/Set;

.field private final mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

.field private final mIpv4Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

.field private final mIpv6Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

.field private final mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

.field private final mWatch:Lcom/android/networkstack/android/net/util/Stopwatch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->newBuilder()Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-static {}, Lcom/android/networkstack/metrics/DhcpSession;->newBuilder()Lcom/android/networkstack/metrics/DhcpSession$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    new-instance v0, Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-direct {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;->start()Lcom/android/networkstack/android/net/util/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mIpv4Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

    new-instance v0, Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-direct {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;->start()Lcom/android/networkstack/android/net/util/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mIpv6Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

    new-instance v0, Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-direct {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;->start()Lcom/android/networkstack/android/net/util/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mWatch:Lcom/android/networkstack/android/net/util/Stopwatch;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpFeatures:Ljava/util/Set;

    return-void
.end method

.method private static dhcpErrorFromNumberSafe(I)Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    invoke-static {p0}, Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;->forNumber(I)Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;->ET_UNKNOWN:Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addDhcpErrorCode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->getErrorCodeCount()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-static {p1}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->dhcpErrorFromNumberSafe(I)Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->addErrorCode(Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;)Lcom/android/networkstack/metrics/DhcpSession$Builder;

    return-void
.end method

.method public incrementCountForDiscover()V
    .locals 1

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-virtual {p0}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->getDiscoverCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->setDiscoverCount(I)Lcom/android/networkstack/metrics/DhcpSession$Builder;

    return-void
.end method

.method public incrementCountForIpConflict()V
    .locals 1

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-virtual {p0}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->getConflictCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->setConflictCount(I)Lcom/android/networkstack/metrics/DhcpSession$Builder;

    return-void
.end method

.method public incrementCountForRequest()V
    .locals 1

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-virtual {p0}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->getRequestCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->setRequestCount(I)Lcom/android/networkstack/metrics/DhcpSession$Builder;

    return-void
.end method

.method public incrementIgnoredNudFailureCount()V
    .locals 1

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {p0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->getIgnoreNudFailureCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setIgnoreNudFailureCount(I)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    return-void
.end method

.method public incrementQueriedNudFailureCount()V
    .locals 1

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {p0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->getQueryNudFailureCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setQueryNudFailureCount(I)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$Builder;

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-virtual {v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$Builder;

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpFeatures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mIpv4Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;->restart()Lcom/android/networkstack/android/net/util/Stopwatch;

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mIpv6Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;->restart()Lcom/android/networkstack/android/net/util/Stopwatch;

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mWatch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/util/Stopwatch;->restart()Lcom/android/networkstack/android/net/util/Stopwatch;

    return-void
.end method

.method public setDhcpEnabledFeature(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V
    .locals 1

    sget-object v0, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;->DF_UNKNOWN:Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpFeatures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDisconnectCode(Lcom/android/networkstack/android/stats/connectivity/DisconnectCode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->hasDisconnectCode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setDisconnectCode(Lcom/android/networkstack/android/stats/connectivity/DisconnectCode;)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    return-void
.end method

.method public setHostnameTransinfo(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;->HTR_DISABLE:Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;->HTR_SUCCESS:Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;->HTR_FAILURE:Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->setHtResult(Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;)Lcom/android/networkstack/metrics/DhcpSession$Builder;

    return-void
.end method

.method public setIPv4ProvisionedLatencyOnFirstTime(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {p1}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->hasIpv4LatencyMicros()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mIpv4Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/util/Stopwatch;->stop()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/networkstack/com/android/net/module/util/ConnectivityUtils;->saturatedCast(J)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setIpv4LatencyMicros(I)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    :cond_0
    return-void
.end method

.method public setIPv6ProvisionedLatencyOnFirstTime(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {p1}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->hasIpv6LatencyMicros()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mIpv6Watch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/util/Stopwatch;->stop()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/networkstack/com/android/net/module/util/ConnectivityUtils;->saturatedCast(J)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setIpv6LatencyMicros(I)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    :cond_0
    return-void
.end method

.method public setTransportType(Lcom/android/networkstack/android/stats/connectivity/TransportType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setTransportType(Lcom/android/networkstack/android/stats/connectivity/TransportType;)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    return-void
.end method

.method public statsWrite()Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;
    .locals 14

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mWatch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpFeatures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;

    iget-object v2, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-virtual {v2, v1}, Lcom/android/networkstack/metrics/DhcpSession$Builder;->addUsedFeatures(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)Lcom/android/networkstack/metrics/DhcpSession$Builder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    iget-object v1, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mDhcpSessionBuilder:Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-virtual {v0, v1}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setDhcpSession(Lcom/android/networkstack/metrics/DhcpSession$Builder;)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    iget-object v1, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mWatch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {v1}, Lcom/android/networkstack/android/net/util/Stopwatch;->stop()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setProvisioningDurationMicros(J)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;->setRandomNumber(I)Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    iget-object v0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mStatsBuilder:Lcom/android/networkstack/metrics/NetworkIpProvisioningReported$Builder;

    invoke-virtual {v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getDhcpSession()Lcom/android/networkstack/metrics/DhcpSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/networkstack/com/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getTransportType()Lcom/android/networkstack/android/stats/connectivity/TransportType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/networkstack/android/stats/connectivity/TransportType;->getNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getIpv4LatencyMicros()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getIpv6LatencyMicros()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getProvisioningDurationMicros()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getDisconnectCode()Lcom/android/networkstack/android/stats/connectivity/DisconnectCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/networkstack/android/stats/connectivity/DisconnectCode;->getNumber()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getRandomNumber()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getIpv6ProvisioningMode()Lcom/android/networkstack/android/stats/connectivity/Ipv6ProvisioningMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/networkstack/android/stats/connectivity/Ipv6ProvisioningMode;->getNumber()I

    move-result v11

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getIgnoreNudFailureCount()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/networkstack/metrics/NetworkIpProvisioningReported;->getQueryNudFailureCount()I

    move-result v13

    const/16 v2, 0x122

    invoke-static/range {v2 .. v13}, Lcom/android/networkstack/metrics/NetworkStackStatsLog;->write(IIIIJI[BIIII)V

    iget-object p0, p0, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->mWatch:Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/util/Stopwatch;->reset()V

    return-object v0
.end method
