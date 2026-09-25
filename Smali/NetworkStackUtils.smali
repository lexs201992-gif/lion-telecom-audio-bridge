.class public Lcom/android/networkstack/util/NetworkStackUtils;
.super Ljava/lang/Object;
.source "NetworkStackUtils.java"


# static fields
.field public static final DEFAULT_CAPTIVE_PORTAL_FALLBACK_PROBE_SPECS:[Ljava/lang/String;

.field public static final DEFAULT_CAPTIVE_PORTAL_HTTPS_URLS:[Ljava/lang/String;

.field public static final DEFAULT_CAPTIVE_PORTAL_HTTP_URLS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/networkstack/util/NetworkStackUtils;->DEFAULT_CAPTIVE_PORTAL_FALLBACK_PROBE_SPECS:[Ljava/lang/String;

    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/networkstack/util/NetworkStackUtils;->DEFAULT_CAPTIVE_PORTAL_HTTP_URLS:[Ljava/lang/String;

    const-string v0, "https://www.google.com/generate_204"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/networkstack/util/NetworkStackUtils;->DEFAULT_CAPTIVE_PORTAL_HTTPS_URLS:[Ljava/lang/String;

    const-string v0, "networkstackutilsjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static addArpEntry(Ljava/net/Inet4Address;Landroid/net/MacAddress;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    invoke-static {p1, p0, p2, p3}, Lcom/android/networkstack/util/NetworkStackUtils;->addArpEntry([B[BLjava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private static native addArpEntry([B[BLjava/lang/String;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native attachControlPacketFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static native attachDhcpFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static native attachEgressMulticastReportFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static native attachRaFilter(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static createInet6AddressFromEui64(Landroid/net/IpPrefix;[B)Ljava/net/Inet6Address;
    .locals 5

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    const-string v3, "NetworkStackUtils"

    if-le v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid IPv6 prefix length "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object p0

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-static {p0, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    invoke-static {p1, v1, v0, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid IPv6 address "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/networkstack/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static native getApfCapabilities(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static native installPacketFilter(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static ipv4MulticastToEthernetMulticast(Ljava/net/Inet4Address;)Landroid/net/MacAddress;
    .locals 7

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x2

    aget-byte v3, p0, v2

    const/4 v4, 0x3

    aget-byte p0, p0, v4

    const/4 v5, 0x6

    new-array v5, v5, [B

    const/4 v6, 0x0

    aput-byte v0, v5, v6

    aput-byte v6, v5, v0

    const/16 v0, 0x5e

    aput-byte v0, v5, v2

    aput-byte v1, v5, v4

    const/4 v0, 0x4

    aput-byte v3, v5, v0

    const/4 v0, 0x5

    aput-byte p0, v5, v0

    invoke-static {v5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0
.end method

.method public static ipv6AddressToSolicitedNodeMulticast(Ljava/net/Inet6Address;)Ljava/net/Inet6Address;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid host IP address "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NetworkStackUtils"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ipv6MulticastToEthernetMulticast(Ljava/net/Inet6Address;)Landroid/net/MacAddress;
    .locals 6

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0xc

    aget-byte v0, p0, v0

    const/16 v1, 0xd

    aget-byte v1, p0, v1

    const/16 v2, 0xe

    aget-byte v2, p0, v2

    const/16 v3, 0xf

    aget-byte p0, p0, v3

    const/4 v3, 0x6

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x33

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    aput-byte v0, v3, v4

    const/4 v0, 0x3

    aput-byte v1, v3, v0

    const/4 v0, 0x4

    aput-byte v2, v3, v0

    const/4 v0, 0x5

    aput-byte p0, v3, v0

    invoke-static {v3}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0
.end method

.method public static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static macAddressToEui64(Landroid/net/MacAddress;)[B
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/4 v3, 0x4

    const/4 v4, -0x2

    aput-byte v4, v0, v3

    const/4 v3, 0x5

    invoke-static {p0, v2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, v0, v1

    xor-int/lit8 p0, p0, 0x2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static native readPacketFilterRam(Ljava/lang/String;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static selectPreferredIPv6LinkLocalAddress(Landroid/net/LinkProperties;)Ljava/net/Inet6Address;
    .locals 5

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getFlags()I

    move-result v1

    instance-of v3, v2, Ljava/net/Inet6Address;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    sget v3, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    check-cast v0, Ljava/net/Inet6Address;

    sget v2, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    and-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :cond_4
    return-object v0
.end method
