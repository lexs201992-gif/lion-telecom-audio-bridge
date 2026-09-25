.class public Lcom/android/networkstack/android/net/dhcp/DhcpServer;
.super Lcom/android/networkstack/com/android/internal/util/StateMachine;
.source "DhcpServer.java"


# static fields
.field protected static final CMD_RECEIVE_PACKET:I = 0x4


# instance fields
.field private final mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDeps:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;

.field private mEventCallbacks:Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;

.field private final mIfName:Ljava/lang/String;

.field private final mLeaseRepo:Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;

.field private final mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

.field private mPacketListener:Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;

.field private final mRunningState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$RunningState;

.field private mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

.field private mSocket:Ljava/io/FileDescriptor;

.field private final mStartedState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$StartedState;

.field private final mStoppedState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$StoppedState;

.field private final mWaitBeforeRetrievalState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$WaitBeforeRetrievalState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeps(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mDeps:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventCallbacks(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mEventCallbacks:Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfName(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mIfName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeaseRepo(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLeaseRepo:Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/com/android/net/module/util/SharedLog;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketListener(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mPacketListener:Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningState(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpServer$RunningState;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mRunningState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$RunningState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServingParams(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSocket(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mSocket:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartedState(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpServer$StartedState;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mStartedState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$StartedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoppedState(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpServer$StoppedState;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mStoppedState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$StoppedState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitBeforeRetrievalState(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)Lcom/android/networkstack/android/net/dhcp/DhcpServer$WaitBeforeRetrievalState;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mWaitBeforeRetrievalState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$WaitBeforeRetrievalState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEventCallbacks(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mEventCallbacks:Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPacketListener(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mPacketListener:Lcom/android/networkstack/android/net/dhcp/DhcpPacketListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSocket(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mSocket:Ljava/io/FileDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMacAddr(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Landroid/net/MacAddress;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getMacAddr(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateServingParams(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;Lcom/android/networkstack/android/net/INetworkStackStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->handleUpdateServingParams(Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;Lcom/android/networkstack/android/net/INetworkStackStatusCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeNotifyStatus(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/INetworkStackStatusCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->maybeNotifyStatus(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransmitAck(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->transmitAck(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtransmitNak(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->transmitNak(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtransmitOffer(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->transmitOffer(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;Lcom/android/networkstack/com/android/net/module/util/SharedLog;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;Lcom/android/networkstack/com/android/net/module/util/SharedLog;Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;Lcom/android/networkstack/com/android/net/module/util/SharedLog;Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/networkstack/android/net/dhcp/DhcpServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer$StoppedState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$StoppedState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mStoppedState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$StoppedState;

    new-instance v1, Lcom/android/networkstack/android/net/dhcp/DhcpServer$StartedState;

    invoke-direct {v1, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$StartedState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)V

    iput-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mStartedState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$StartedState;

    new-instance v2, Lcom/android/networkstack/android/net/dhcp/DhcpServer$RunningState;

    invoke-direct {v2, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$RunningState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)V

    iput-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mRunningState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$RunningState;

    new-instance v3, Lcom/android/networkstack/android/net/dhcp/DhcpServer$WaitBeforeRetrievalState;

    invoke-direct {v3, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$WaitBeforeRetrievalState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpServer;)V

    iput-object v3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mWaitBeforeRetrievalState:Lcom/android/networkstack/android/net/dhcp/DhcpServer$WaitBeforeRetrievalState;

    if-nez p5, :cond_0

    new-instance p5, Lcom/android/networkstack/android/net/dhcp/DhcpServer$DependenciesImpl;

    const/4 v4, 0x0

    invoke-direct {p5, p0, v4}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$DependenciesImpl;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpServer-IA;)V

    :cond_0
    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mIfName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iput-object p4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    iput-object p5, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mDeps:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;

    invoke-interface {p5}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;->makeClock()Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    iget-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-interface {p5, p2, p4, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;->makeLeaseRepository(Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;Lcom/android/networkstack/com/android/net/module/util/SharedLog;Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;)Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLeaseRepo:Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;)V

    invoke-virtual {p0, v1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    invoke-virtual {p0, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->setInitialState(Lcom/android/networkstack/com/android/internal/util/State;)V

    invoke-super {p0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->start()V

    return-void
.end method

.method private addArpEntry(Landroid/net/MacAddress;Ljava/net/Inet4Address;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mDeps:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mIfName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mSocket:Ljava/io/FileDescriptor;

    invoke-interface {v0, p2, p1, v1, v2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;->addArpEntry(Ljava/net/Inet4Address;Landroid/net/MacAddress;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    const-string p2, "Error adding client to ARP table"

    invoke-virtual {p0, p2, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private getAckOrOfferDst(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Z)Ljava/net/Inet4Address;
    .locals 0

    iget-object p0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-static {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->isEmpty(Ljava/net/Inet4Address;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    sget-object p0, Lcom/android/networkstack/com/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ALL:Ljava/net/Inet4Address;

    return-object p0

    :cond_1
    iget-object p0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-static {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->isEmpty(Ljava/net/Inet4Address;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method private static getBroadcastFlag(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-static {v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->isEmpty(Ljava/net/Inet4Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mBroadcast:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object p0

    invoke-static {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->isEmpty(Ljava/net/Inet4Address;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getHostnameIfRequested(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->hasRequestedParam(B)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getHostname()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getHostname()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLeaseTimeout(Lcom/android/networkstack/android/net/dhcp/DhcpLease;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getExpTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mClock:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;

    invoke-virtual {v2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing expired lease "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->e(Ljava/lang/String;)V

    const/16 p0, 0x78

    return p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    return p0

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method private getMacAddr(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Landroid/net/MacAddress;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/networkstack/com/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid MAC address in packet: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer$MalformedPacketException;

    invoke-direct {v0, p1, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$MalformedPacketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private handleUpdateServingParams(Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;Lcom/android/networkstack/android/net/INetworkStackStatusCallback;)V
    .locals 7

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLeaseRepo:Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;

    iget-object v1, p1, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->serverAddr:Landroid/net/LinkAddress;

    invoke-static {v1}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->makeIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    move-result-object v1

    iget-object v2, p1, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->excludedAddrs:Ljava/util/Set;

    iget-wide v3, p1, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->dhcpLeaseTimeSecs:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iget-object v5, p1, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->singleClientAddr:Ljava/net/Inet4Address;

    iget v6, p1, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->leasesSubnetPrefixLength:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/networkstack/android/net/dhcp/DhcpLeaseRepository;->updateParams(Landroid/net/IpPrefix;Ljava/util/Set;JLjava/net/Inet4Address;I)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->maybeNotifyStatus(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;I)V

    return-void
.end method

.method private static isEmpty(Ljava/net/Inet4Address;)Z
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/networkstack/com/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private maybeNotifyStatus(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/networkstack/android/net/INetworkStackStatusCallback;->onStatusAvailable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    const-string p2, "Could not send status back to caller"

    invoke-virtual {p0, p2, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private transmitAck(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static/range {p1 .. p2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getBroadcastFlag(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;)Z

    move-result v6

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getLeaseTimeout(Lcom/android/networkstack/android/net/dhcp/DhcpLease;)I

    move-result v2

    invoke-static/range {p1 .. p2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getHostnameIfRequested(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;)Ljava/lang/String;

    move-result-object v19

    iget v5, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mTransId:I

    iget-object v4, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v4}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getServerInet4Addr()Ljava/net/Inet4Address;

    move-result-object v7

    iget-object v8, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object v9

    iget-object v10, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    iget-object v11, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v2}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getPrefixMaskAsAddress()Ljava/net/Inet4Address;

    move-result-object v13

    iget-object v2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v2}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getBroadcastAddress()Ljava/net/Inet4Address;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-object v2, v2, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->defaultRouters:Ljava/util/Set;

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-object v4, v4, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->dnsServers:Ljava/util/Set;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v4}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getServerInet4Addr()Ljava/net/Inet4Address;

    move-result-object v17

    iget-object v4, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-boolean v0, v4, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->metered:Z

    iget v4, v4, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->linkMtu:I

    int-to-short v4, v4

    move/from16 v20, v0

    iget-boolean v0, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRapidCommit:Z

    const/16 v23, 0x0

    move/from16 v21, v4

    const/4 v4, 0x2

    const/16 v18, 0x0

    move/from16 v22, v0

    move-object/from16 v16, v2

    invoke-static/range {v4 .. v23}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;Ljava/lang/String;ZSZLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v2, Lcom/android/networkstack/android/net/dhcp/DhcpAckPacket;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p3

    move-object v4, v1

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->transmitOfferOrAckPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;Z)Z

    move-result v0

    return v0
.end method

.method private transmitNak(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transmitting NAK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->w(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mTransId:I

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getServerInet4Addr()Ljava/net/Inet4Address;

    move-result-object v4

    iget-object v5, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    iget-object v6, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientMac:[B

    const/4 v7, 0x1

    const/4 v2, 0x2

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[BZLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-static {v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->isEmpty(Ljava/net/Inet4Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/networkstack/com/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ALL:Ljava/net/Inet4Address;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    :goto_0
    const-class v0, Lcom/android/networkstack/android/net/dhcp/DhcpNakPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method private transmitOffer(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static/range {p1 .. p2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getBroadcastFlag(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;)Z

    move-result v6

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getLeaseTimeout(Lcom/android/networkstack/android/net/dhcp/DhcpLease;)I

    move-result v2

    iget-object v4, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-object v4, v4, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->serverAddr:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-static {v4}, Lcom/android/networkstack/com/android/net/module/util/Inet4AddressUtils;->getPrefixMaskAsInet4Address(I)Ljava/net/Inet4Address;

    move-result-object v12

    iget-object v4, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v4}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getServerInet4Addr()Ljava/net/Inet4Address;

    move-result-object v4

    iget-object v5, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-object v5, v5, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->serverAddr:Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/networkstack/com/android/net/module/util/Inet4AddressUtils;->getBroadcastAddress(Ljava/net/Inet4Address;I)Ljava/net/Inet4Address;

    move-result-object v13

    invoke-static/range {p1 .. p2}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getHostnameIfRequested(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;)Ljava/lang/String;

    move-result-object v18

    iget v5, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mTransId:I

    iget-object v4, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v4}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getServerInet4Addr()Ljava/net/Inet4Address;

    move-result-object v7

    iget-object v8, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object v9

    iget-object v10, v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v14, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-object v2, v2, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->defaultRouters:Ljava/util/Set;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-object v2, v2, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->dnsServers:Ljava/util/Set;

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    invoke-virtual {v2}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->getServerInet4Addr()Ljava/net/Inet4Address;

    move-result-object v16

    iget-object v2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mServingParams:Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    iget-boolean v4, v2, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->metered:Z

    iget v2, v2, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->linkMtu:I

    int-to-short v2, v2

    const/16 v21, 0x0

    move/from16 v19, v4

    const/4 v4, 0x2

    const/16 v17, 0x0

    move/from16 v20, v2

    invoke-static/range {v4 .. v21}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-class v4, Lcom/android/networkstack/android/net/dhcp/DhcpOfferPacket;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->transmitOfferOrAckPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;Z)Z

    move-result v0

    return v0
.end method

.method private transmitOfferOrAckPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Landroid/net/MacAddress;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    const-string v1, "Transmitting %s with lease %s"

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/android/networkstack/android/net/dhcp/DhcpLease;->getNetAddr()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->addArpEntry(Landroid/net/MacAddress;Ljava/net/Inet4Address;)Z

    move-result p5

    if-nez p5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p3, p4, p6}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->getAckOrOfferDst(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/dhcp/DhcpLease;Z)Ljava/net/Inet4Address;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mDeps:Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mSocket:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$Dependencies;->sendPacket(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t send packet "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public makeConnector()Lcom/android/networkstack/android/net/dhcp/IDhcpServer;
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpServer$DhcpServerConnector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer$DhcpServerConnector;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpServer;Lcom/android/networkstack/android/net/dhcp/DhcpServer-IA;)V

    return-object v0
.end method

.method start(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->start(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;)V

    return-void
.end method

.method start(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;Lcom/android/networkstack/android/net/dhcp/IDhcpEventCallbacks;)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method stop(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method updateParams(Lcom/android/networkstack/android/net/dhcp/DhcpServingParamsParcel;Lcom/android/networkstack/android/net/INetworkStackStatusCallback;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;->fromParcelableObject(Lcom/android/networkstack/android/net/dhcp/DhcpServingParamsParcel;)Lcom/android/networkstack/android/net/dhcp/DhcpServingParams;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/networkstack/android/net/dhcp/DhcpServingParams$InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->mLog:Lcom/android/networkstack/com/android/net/module/util/SharedLog;

    const-string v1, "Invalid parameters sent to DhcpServer"

    invoke-virtual {v0, v1, p1}, Lcom/android/networkstack/com/android/net/module/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpServer;->maybeNotifyStatus(Lcom/android/networkstack/android/net/INetworkStackStatusCallback;I)V

    return-void
.end method
