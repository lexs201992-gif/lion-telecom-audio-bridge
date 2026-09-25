.class public Lcom/android/networkstack/android/net/dhcp/DhcpAckPacket;
.super Lcom/android/networkstack/android/net/dhcp/DhcpPacket;
.source "DhcpAckPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 1

    move-object v0, p8

    move p8, p3

    move-object p3, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p7

    move-object p7, v0

    invoke-direct/range {p0 .. p8}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    iput-boolean p8, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mBroadcast:Z

    iput-object p5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    iput-boolean p9, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRapidCommit:Z

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mBroadcast:Z

    if-eqz v9, :cond_0

    sget-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    goto :goto_0

    :goto_1
    if-eqz v9, :cond_1

    sget-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    goto :goto_2

    :goto_3
    const/4 v8, 0x2

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v7
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/16 v0, 0x35

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    const/16 v0, 0x36

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    invoke-virtual {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addCommonServerTlvs(Ljava/nio/ByteBuffer;)V

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRapidCommit:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    invoke-static {p1, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B)V

    :cond_0
    invoke-static {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-super {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, " DNS servers: "

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ACK: your new IP "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", netmask "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", gateways "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lease time "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", domain "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mIpv6OnlyWaitTime:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", V6ONLY_WAIT "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mIpv6OnlyWaitTime:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
