.class Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;
.super Ljava/lang/Object;
.source "DhcpLeaseRepository.java"


# instance fields
.field private mClientAddr:Ljava/net/Inet4Address;

.field private final mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

.field private final mCommittedLeases:Landroid/util/ArrayMap;

.field private final mDeclinedAddrs:Ljava/util/LinkedHashMap;

.field private mEventCallbacks:Landroid/os/RemoteCallbackList;

.field private mLeaseTimeMs:J

.field private mLeasesSubnetAddr:I

.field private mLeasesSubnetMask:I

.field private final mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

.field private mNextExpirationCheck:J

.field private mNumAddresses:I

.field private mPrefix:Landroid/net/IpPrefix;

.field private mPrefixLength:I

.field private mReservedAddrs:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/net/IpPrefix;Ljava/util/Set;JLjava/net/Inet4Address;ILcom/android/networkstack/com/android/net/module/util/SharedLog;Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNextExpirationCheck:J

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mEventCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mDeclinedAddrs:Ljava/util/LinkedHashMap;

    iput-object p7, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    iput-object p8, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    iput-object p5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClientAddr:Ljava/net/Inet4Address;

    invoke-virtual/range {p0 .. p6}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->updateParams(Landroid/net/IpPrefix;Ljava/util/Set;JLjava/net/Inet4Address;I)V

    return-void
.end method

.method private checkClientAndMakeLease([BLandroid/net/MacAddress;Ljava/net/Inet4Address;Ljava/lang/String;J)Lcom/android/networkstack/android/net/dhcp/DhcpLease;
    .locals 9

    iget-wide v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeaseTimeMs:J

    add-long v6, p5, v1

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->matchesClient([BLandroid/net/MacAddress;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidAddressException;

    const-string v1, "Address in use"

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidAddressException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-direct {p0, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isValidAddress(Ljava/net/Inet4Address;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mReservedAddrs:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    iget v5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mPrefixLength:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;-><init>([BLandroid/net/MacAddress;Ljava/net/Inet4Address;IJLjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidAddressException;

    const-string v1, "Lease not found and address unavailable"

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidAddressException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v1, v6, v7, p4}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->renewedLease(JLjava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->commitLease(Lcom/android/networkstack/android/net/dhcp/DhcpLease;)V

    return-object v1
.end method

.method private checkValidRelayAddr(Ljava/net/Inet4Address;)V
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mPrefix:Landroid/net/IpPrefix;

    invoke-static {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isIpAddrOutsidePrefix(Landroid/net/IpPrefix;Ljava/net/Inet4Address;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidSubnetException;

    const-string p1, "Lease requested by relay from outside of subnet"

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidSubnetException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private cleanMap(Ljava/util/Map;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    invoke-direct {p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isValidAddress(Ljava/net/Inet4Address;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mReservedAddrs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private commitLease(Lcom/android/networkstack/android/net/dhcp/DhcpLease;)V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getExpTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->maybeUpdateEarliestExpiration(J)V

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->notifyLeasesChanged()V

    return-void
.end method

.method private findByClient([BLandroid/net/MacAddress;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;
    .locals 2

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    invoke-virtual {v0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->matchesClient([BLandroid/net/MacAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAddrByIndex(I)I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeasesSubnetAddr:I

    or-int/2addr p0, p1

    return p0
.end method

.method private getAddrIndex(I)I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeasesSubnetMask:I

    not-int p0, p0

    and-int/2addr p0, p1

    return p0
.end method

.method private getFirstClientAddress(Landroid/net/MacAddress;)I
    .locals 5

    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p1, v1

    shl-int/lit8 v4, v3, 0x8

    add-int/2addr v4, v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNumAddresses:I

    rem-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getAddrByIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getValidAddress(I)I

    move-result p0

    return p0
.end method

.method private getNextAddress(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getAddrIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNumAddresses:I

    rem-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getAddrByIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getValidAddress(I)I

    move-result p0

    return p0
.end method

.method private getValidAddress(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClientAddr:Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/networkstack/com/android/net/module/util/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getAddrIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getAddrByIndex(I)I

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNumAddresses:I

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNumAddresses:I

    rem-int/2addr p1, v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNumAddresses:I

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_4

    :cond_3
    move p1, v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getAddrByIndex(I)I

    move-result p0

    return p0
.end method

.method private isAvailable(Ljava/net/Inet4Address;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mReservedAddrs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isIpAddrOutsidePrefix(Landroid/net/IpPrefix;Ljava/net/Inet4Address;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/networkstack/com/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isValidAddress(Ljava/net/Inet4Address;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/networkstack/com/android/net/module/util/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getValidAddress(I)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeNewOffer([BLandroid/net/MacAddress;JLjava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;
    .locals 8

    invoke-direct {p0, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getFirstClientAddress(Landroid/net/MacAddress;)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNumAddresses:I

    if-ge v3, v4, :cond_1

    move v4, v3

    invoke-static {v1}, Lcom/android/networkstack/com/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTH(I)Ljava/net/Inet4Address;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isAvailable(Ljava/net/Inet4Address;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mDeclinedAddrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v1, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    iget v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mPrefixLength:I

    move-object v2, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v0, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;-><init>([BLandroid/net/MacAddress;Ljava/net/Inet4Address;IJLjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getNextAddress(I)I

    move-result v1

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mDeclinedAddrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/net/Inet4Address;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    invoke-static {v3}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->inet4AddrToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Out of addresses in address pool: dropped declined addr %s"

    invoke-virtual {v2, v5, v4}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isAvailable(Ljava/net/Inet4Address;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    iget v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mPrefixLength:I

    move-object v2, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v0, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;-><init>([BLandroid/net/MacAddress;Ljava/net/Inet4Address;IJLjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$OutOfAddressesException;

    const-string v1, "No address available for offer"

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$OutOfAddressesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private maybeUpdateEarliestExpiration(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNextExpirationCheck:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNextExpirationCheck:J

    :cond_0
    return-void
.end method

.method private notifyLeasesChanged()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    invoke-virtual {v2}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->toParcelable()Lcom/android/networkstack/android/net/dhcp/DhcpLeaseParcelable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mEventCallbacks:Landroid/os/RemoteCallbackList;

    if-ge v2, v1, :cond_1

    :try_start_0
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;

    invoke-interface {v3, v0}, Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;->onLeasesChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    const-string v5, "Could not send lease callback"

    invoke-virtual {v4, v5, v3}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private removeExpired(JLjava/util/Map;Ljava/lang/String;Ljava/util/function/Function;)J
    .locals 7

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-gtz v6, :cond_0

    iget-object v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {p4, v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Removing expired %s lease for %s (expTime=%s, currentTime=%s)"

    invoke-virtual {v4, v3, v2}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private removeExpiredLeases(J)V
    .locals 7

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNextExpirationCheck:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$$ExternalSyntheticLambda0;-><init>()V

    const-string v5, "committed"

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->removeExpired(JLjava/util/Map;Ljava/lang/String;Ljava/util/function/Function;)J

    move-result-wide p0

    move-object v0, v1

    move-wide v1, v2

    iget-object v3, v0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mDeclinedAddrs:Ljava/util/LinkedHashMap;

    const-string v4, "declined"

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->removeExpired(JLjava/util/Map;Ljava/lang/String;Ljava/util/function/Function;)J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNextExpirationCheck:J

    return-void
.end method

.method private removeLease(Ljava/net/Inet4Address;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->notifyLeasesChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addLeaseCallbacks(Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;)V
    .locals 1

    const-string v0, "Callbacks must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public getCommittedLease([BLandroid/net/MacAddress;Ljava/net/Inet4Address;Ljava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->getOffer([BLandroid/net/MacAddress;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->commitLease(Lcom/android/networkstack/android/net/dhcp/DhcpLease;)V

    return-object p0
.end method

.method public getCommittedLeases()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->removeExpiredLeases(J)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOffer([BLandroid/net/MacAddress;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;
    .locals 9

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    invoke-virtual {v1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeaseTimeMs:J

    add-long v6, v1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->removeExpiredLeases(J)V

    invoke-direct {p0, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->checkValidRelayAddr(Ljava/net/Inet4Address;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->findByClient([BLandroid/net/MacAddress;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6, v7, p5}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->renewedLease(JLjava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    move-result-object v1

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offering extended lease "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->log(Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isValidAddress(Ljava/net/Inet4Address;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p4}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isAvailable(Ljava/net/Inet4Address;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    iget v5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mPrefixLength:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;-><init>([BLandroid/net/MacAddress;Ljava/net/Inet4Address;IJLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offering requested lease "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->log(Ljava/lang/String;)V

    return-object v1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-wide v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->makeNewOffer([BLandroid/net/MacAddress;JLjava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    move-result-object v1

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offering new generated lease "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public markAndReleaseDeclinedLease([BLandroid/net/MacAddress;Ljava/net/Inet4Address;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->releaseLease([BLandroid/net/MacAddress;Ljava/net/Inet4Address;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->markLeaseDeclined(Ljava/net/Inet4Address;)V

    const/4 p0, 0x1

    return p0
.end method

.method markLeaseDeclined(Ljava/net/Inet4Address;)V
    .locals 4

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mDeclinedAddrs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->isValidAddress(Ljava/net/Inet4Address;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeaseTimeMs:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mDeclinedAddrs:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    invoke-static {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->inet4AddrToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Marked %s as declined expiring %d"

    invoke-virtual {v2, v3, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->maybeUpdateEarliestExpiration(J)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    invoke-static {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->inet4AddrToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Not marking %s as declined: already declined or not assignable"

    invoke-virtual {p0, v0, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public releaseLease([BLandroid/net/MacAddress;Ljava/net/Inet4Address;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not release unknown lease for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->inet4AddrToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->w(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->matchesClient([BLandroid/net/MacAddress;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Released lease "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->removeLease(Ljava/net/Inet4Address;Z)V

    return p1

    :cond_1
    invoke-static {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->clientIdToString([B)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Not releasing lease %s: does not match client (cid %s, hwAddr %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->w(Ljava/lang/String;)V

    return v1
.end method

.method public requestLease([BLandroid/net/MacAddress;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;ZLjava/lang/String;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;
    .locals 8

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->removeExpiredLeases(J)V

    invoke-direct {p0, p4}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->checkValidRelayAddr(Ljava/net/Inet4Address;)V

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->findByClient([BLandroid/net/MacAddress;)Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    move-result-object p4

    if-eqz p5, :cond_0

    move-object v4, p5

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    if-eqz p4, :cond_1

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p4}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->removeLease(Ljava/net/Inet4Address;Z)V

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p7

    goto :goto_2

    :cond_2
    invoke-virtual {p4}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidAddressException;

    if-eqz p5, :cond_3

    const-string p1, "INIT-REBOOT"

    goto :goto_1

    :cond_3
    const-string p1, "RENEWING/REBINDING"

    :goto_1
    const-string p2, "Incorrect address for client in "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository$InvalidAddressException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    invoke-direct/range {v1 .. v7}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->checkClientAndMakeLease([BLandroid/net/MacAddress;Ljava/net/Inet4Address;Ljava/lang/String;J)Lcom/android/networkstack/android/net/dhcp/DhcpLease;

    move-result-object p0

    iget-object p1, v1, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    invoke-static {p5}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->inet4AddrToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p4, p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "DHCPREQUEST assignedLease %s, reqAddr=%s, sidSet=%s: created/renewed lease %s"

    invoke-virtual {p1, p3, p2}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public updateParams(Landroid/net/IpPrefix;Ljava/util/Set;JLjava/net/Inet4Address;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mPrefix:Landroid/net/IpPrefix;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mReservedAddrs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p2

    iput p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mPrefixLength:I

    if-le p2, p6, :cond_0

    move p6, p2

    :cond_0
    invoke-static {p6}, Lcom/android/networkstack/com/android/net/module/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTH(I)I

    move-result p2

    iput p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeasesSubnetMask:I

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    invoke-static {p1}, Lcom/android/networkstack/com/android/net/module/util/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result p1

    iget p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeasesSubnetMask:I

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeasesSubnetAddr:I

    const/4 p1, 0x1

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    rsub-int/lit8 p2, p6, 0x20

    shl-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mNumAddresses:I

    iput-wide p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mLeaseTimeMs:J

    iput-object p5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mClientAddr:Ljava/net/Inet4Address;

    iget-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mDeclinedAddrs:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->cleanMap(Ljava/util/Map;)Z

    iget-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->mCommittedLeases:Landroid/util/ArrayMap;

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->cleanMap(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->notifyLeasesChanged()V

    :cond_2
    return-void
.end method
