.class abstract Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;
.super Lcom/android/networkstack/com/android/net/module/util/FdEventsReader;
.source "DhcpPacketListener.java"


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;

    invoke-direct {v0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/networkstack/com/android/net/module/util/FdEventsReader;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method private static inet4AddrOrNull(Ljava/net/InetSocketAddress;)Ljava/net/Inet4Address;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final handlePacket(Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;I)V
    .locals 3

    iget-object v0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mSrcAddr:Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mBytes:[B

    const/4 v1, 0x2

    invoke-static {v0, p2, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Lcom/android/networkstack/android/net/dhcp/DhcpPacket;

    move-result-object v0

    iget-object v1, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mSrcAddr:Ljava/net/Inet4Address;

    iget v2, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mSrcPort:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;->onReceive(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Ljava/net/Inet4Address;I)V
    :try_end_0
    .catch Lcom/android/networkstack/android/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-class p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error handling DHCP packet"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_0
    iget-object p1, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mBytes:[B

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;->logParseError([BILcom/android/networkstack/android/net/dhcp/DhcpPacket$ParseException;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected bridge synthetic handlePacket(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;->handlePacket(Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;I)V

    return-void
.end method

.method protected abstract logParseError([BILcom/android/networkstack/android/net/dhcp/DhcpPacket$ParseException;)V
.end method

.method protected abstract onReceive(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Ljava/net/Inet4Address;I)V
.end method

.method protected readPacket(Ljava/io/FileDescriptor;Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;)I
    .locals 6

    new-instance v5, Ljava/net/InetSocketAddress;

    const/4 p0, 0x0

    invoke-direct {v5, p0}, Ljava/net/InetSocketAddress;-><init>(I)V

    iget-object v1, p2, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mBytes:[B

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/networkstack/com/android/net/module/util/OsNoThrowCompat;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result p0

    invoke-static {v5}, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;->inet4AddrOrNull(Ljava/net/InetSocketAddress;)Ljava/net/Inet4Address;

    move-result-object p1

    iput-object p1, p2, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mSrcAddr:Ljava/net/Inet4Address;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    iput p1, p2, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;->mSrcPort:I

    return p0
.end method

.method protected bridge synthetic readPacket(Ljava/io/FileDescriptor;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;->readPacket(Ljava/io/FileDescriptor;Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener$Payload;)I

    move-result p0

    return p0
.end method

.method protected shouldProcessZeroLengthPacket()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
