.class public Lcom/android/networkstack/android/net/dhcp/DhcpDeclinePacket;
.super Lcom/android/networkstack/android/net/dhcp/DhcpPacket;
.source "DhcpDeclinePacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/net/Inet4Address;Ljava/net/Inet4Address;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    move-object/from16 p1, p8

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    iget-object v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    const/4 v8, 0x1

    const/4 v9, 0x0

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

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    const/16 v0, 0x3d

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getClientId()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    const/16 v0, 0x32

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/16 v0, 0x36

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    invoke-static {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " DECLINE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
