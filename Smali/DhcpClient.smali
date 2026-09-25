.class public Lcom/android/networkstack/android/net/dhcp/DhcpClient;
.super Lcom/android/networkstack/com/android/internal/util/StateMachine;
.source "DhcpClient.java"


# static fields
.field public static final ARP_ANNOUNCE_INTERVAL_MS:Ljava/lang/String; = "arp_announce_interval"

.field public static final ARP_FIRST_ANNOUNCE_DELAY_MS:Ljava/lang/String; = "arp_first_announce_delay"

.field public static final ARP_FIRST_PROBE_DELAY_MS:Ljava/lang/String; = "arp_first_probe_delay"

.field public static final ARP_PROBE_MAX_MS:Ljava/lang/String; = "arp_probe_max"

.field public static final ARP_PROBE_MIN_MS:Ljava/lang/String; = "arp_probe_min"

.field public static final CMD_ABORT_PRECONNECTION:I = 0x3f3

.field private static final CMD_ARP_ANNOUNCEMENT:I = 0x458

.field private static final CMD_ARP_PROBE:I = 0x457

.field public static final CMD_CLEAR_LINKADDRESS:I = 0x3ef

.field public static final CMD_CONFIGURE_LINKADDRESS:I = 0x3f0

.field private static final CMD_EXPIRE_DHCP:I = 0x452

.field private static final CMD_KICK:I = 0x44d

.field public static final CMD_ON_QUIT:I = 0x3ed

.field public static final CMD_POST_DHCP_ACTION:I = 0x3ec

.field public static final CMD_PRE_DHCP_ACTION:I = 0x3eb

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x3ee

.field private static final CMD_REBIND_DHCP:I = 0x451

.field private static final CMD_RECEIVED_PACKET:I = 0x44e

.field public static final CMD_REFRESH_LINKADDRESS:I = 0x3f4

.field private static final CMD_RENEW_DHCP:I = 0x450

.field public static final CMD_START_DHCP:I = 0x3e9

.field public static final CMD_START_PRECONNECTION:I = 0x3f2

.field public static final CMD_STOP_DHCP:I = 0x3ea

.field public static final CMD_TIMEOUT:I = 0x44f

.field static final DEFAULT_REQUESTED_PARAMS:[B

.field public static final DHCP_RESTART_CONFIG_DELAY:Ljava/lang/String; = "dhcp_restart_configuration_delay"

.field private static final EVENT_CONFIGURATION_INVALID:I = 0x455

.field private static final EVENT_CONFIGURATION_OBTAINED:I = 0x454

.field private static final EVENT_CONFIGURATION_TIMEOUT:I = 0x453

.field private static final EVENT_IP_CONFLICT:I = 0x456

.field public static final EVENT_LINKADDRESS_CONFIGURED:I = 0x3f1

.field public static final EXPIRED_LEASE:J = 0x1L

.field private static final MSG_DBG:Z

.field private static final PACKET_DBG:Z

.field private static final STATE_DBG:Z

.field private static final VDBG:Z

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sMessageNames:Landroid/util/SparseArray;


# instance fields
.field private mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

.field private mConfiguringInterfaceState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mConflictCount:I

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/networkstack/com/android/internal/util/StateMachine;

.field private mDependencies:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;

.field private mDhcpBoundState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpDecliningState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpInitRebootState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpInitState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

.field private mDhcpLeaseExpiry:J

.field private mDhcpPacketHandler:Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPacketHandler;

.field private mDhcpPreconnectingState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpRebindingState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpRebootingState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpRefreshingAddressState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpRenewingState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpRequestingState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpSelectingState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

.field private final mExpiryAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

.field private final mHostname:Ljava/lang/String;

.field private mHwAddr:[B

.field private mIface:Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Ljava/net/SocketAddress;

.field private mIpAddressConflictDetectingState:Lcom/android/networkstack/com/android/internal/util/State;

.field private final mIpMemoryStore:Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;

.field private mIpv6OnlyWaitState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mIpv6OnlyWaitTimeMs:J

.field private final mKickAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

.field private mLastAssignedIpv4Address:Ljava/net/Inet4Address;

.field private mLastAssignedIpv4AddressExpiry:J

.field private mLastBoundExitTime:J

.field private mLastInitEnterTime:J

.field private final mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mOffer:Lcom/android/networkstack/android/net/DhcpResults;

.field private final mRandom:Ljava/util/Random;

.field private final mRebindAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

.field private mRegisteredForPreDhcpNotification:Z

.field private final mRenewAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

.field private mStoppedState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mT2:J

.field private final mTimeoutAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

.field private mTransactionId:I

.field private mTransactionStartMillis:J

.field private mUdpSock:Ljava/io/FileDescriptor;

.field private mWaitBeforeObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/networkstack/com/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/networkstack/com/android/internal/util/State;


# direct methods
.method public static synthetic $r8$lambda$IRQ4vlSxciswPfBY3MFHG94YRQI(Lcom/android/networkstack/android/net/ipmemorystore/Status;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/ipmemorystore/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set lease expiry, status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DhcpClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$tyeRl6UjH5I0z3hw8NsgjjrEn9I(Lcom/android/networkstack/android/net/ipmemorystore/Status;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/ipmemorystore/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to store network attrs, status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DhcpClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguringInterfaceState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConflictCount(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConflictCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/StateMachine;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mController:Lcom/android/networkstack/com/android/internal/util/StateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDependencies(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDependencies:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpBoundState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpDecliningState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpDecliningState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpInitRebootState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpInitState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpLease(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/android/net/DhcpResults;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpLeaseExpiry(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpPacketHandler(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPacketHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpPacketHandler:Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPacketHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpPreconnectingState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpPreconnectingState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpRebindingState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpRefreshingAddressState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRefreshingAddressState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDhcpRenewingState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpiryAlarm(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHwAddr(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIface(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIface:Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceBroadcastAddr(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Ljava/net/SocketAddress;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpAddressConflictDetectingState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpAddressConflictDetectingState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpMemoryStore(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpMemoryStore:Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpv6OnlyWaitTimeMs(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpv6OnlyWaitTimeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmKickAlarm(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastAssignedIpv4Address(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Ljava/net/Inet4Address;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mLastAssignedIpv4Address:Ljava/net/Inet4Address;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastBoundExitTime(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInitEnterTime(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMetrics(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/metrics/IpProvisioningMetrics;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetricsLog(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Landroid/net/metrics/IpConnectivityLog;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOffer(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/android/net/DhcpResults;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mOffer:Lcom/android/networkstack/android/net/DhcpResults;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRandom(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRebindAlarm(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredForPreDhcpNotification(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenewAlarm(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoppedState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmT2(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mT2:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutAlarm(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransactionId(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUdpSock(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitBeforeRenewalState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Lcom/android/networkstack/com/android/internal/util/State;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/networkstack/com/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConfiguration(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConflictCount(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    iput p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConflictCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDhcpPacketHandler(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPacketHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpPacketHandler:Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPacketHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIpv6OnlyWaitTimeMs(Lcom/android/networkstack/android/net/dhcp/DhcpClient;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpv6OnlyWaitTimeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastAssignedIpv4Address(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)V
    .locals 0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mLastAssignedIpv4Address:Ljava/net/Inet4Address;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastAssignedIpv4AddressExpiry(Lcom/android/networkstack/android/net/dhcp/DhcpClient;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mLastAssignedIpv4AddressExpiry:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastBoundExitTime(Lcom/android/networkstack/android/net/dhcp/DhcpClient;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastInitEnterTime(Lcom/android/networkstack/android/net/dhcp/DhcpClient;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOffer(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/android/net/DhcpResults;)V
    .locals 0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mOffer:Lcom/android/networkstack/android/net/DhcpResults;

    return-void
.end method

.method static bridge synthetic -$$Nest$macceptDhcpResults(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/android/net/DhcpResults;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->acceptDhcpResults(Lcom/android/networkstack/android/net/DhcpResults;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDhcpState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->clearDhcpState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfirmDhcpLease(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/DhcpResults;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->confirmDhcpLease(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/DhcpResults;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectUdpSock(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->connectUdpSock(Ljava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetOptionsToSkip(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)[B
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getOptionsToSkip()[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRequestedParams(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)[B
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getRequestedParams()[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSecs(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)S
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getSecs()S

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasIpAddressConflict(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;Ljava/net/Inet4Address;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->hasIpAddressConflict(Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;Ljava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitInterface(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->initInterface()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitUdpSocket(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->initUdpSocket()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->logState(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeGetHostnameForSending(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->maybeGetHostnameForSending()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeTransitionToIpv6OnlyWaitState(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->maybeTransitionToIpv6OnlyWaitState(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyFailure(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->notifyFailure(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySuccess(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->notifySuccess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreDhcpTransitionTo(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->preDhcpTransitionTo(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreceiveOfferOrAckPacket(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->receiveOfferOrAckPacket(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordMetricEnabledFeatures(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->recordMetricEnabledFeatures()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleLeaseTimers(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->scheduleLeaseTimers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDeclinePacket(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->sendDeclinePacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendDiscoverPacket(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->sendDiscoverPacket()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendRequestPacket(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartInitReboot(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->startInitReboot()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartNewTransaction(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->startNewTransaction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMSG_DBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->MSG_DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPACKET_DBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->PACKET_DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSTATE_DBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->STATE_DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetVDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->VDBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsMessageNames()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "DhcpClient"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->VDBG:Z

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->STATE_DBG:Z

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->MSG_DBG:Z

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->PACKET_DBG:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/networkstack/android/net/dhcp/DhcpClient;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/networkstack/com/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->DEFAULT_REQUESTED_PARAMS:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x6t
        0xft
        0x1at
        0x1ct
        0x33t
        0x3at
        0x3bt
        0x2bt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/networkstack/com/android/internal/util/StateMachine;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;)V
    .locals 2

    const-string v0, "DhcpClient"

    invoke-virtual {p2}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$StoppedState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$StoppedState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpInitState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpInitState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPreconnectingState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPreconnectingState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpPreconnectingState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpSelectingState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpSelectingState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRequestingState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpHaveLeaseState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpHaveLeaseState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$ConfiguringInterfaceState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$ConfiguringInterfaceState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpBoundState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpBoundState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRenewingState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRenewingState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRebindingState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRebindingState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpInitRebootState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpInitRebootState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRebootingState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRebootingState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$ObtainingConfigurationState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$ObtainingConfigurationState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$WaitBeforeStartState;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/com/android/internal/util/State;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$WaitBeforeRenewalState;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$WaitBeforeRenewalState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/com/android/internal/util/State;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$WaitBeforeObtainingConfigurationState;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-direct {v0, p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$WaitBeforeObtainingConfigurationState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;Lcom/android/networkstack/com/android/internal/util/State;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$IpAddressConflictDetectingState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$IpAddressConflictDetectingState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpAddressConflictDetectingState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpDecliningState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpDecliningState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpDecliningState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Ipv6OnlyWaitState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Ipv6OnlyWaitState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpv6OnlyWaitState:Lcom/android/networkstack/com/android/internal/util/State;

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRefreshingAddressState;

    invoke-direct {v0, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpRefreshingAddressState;-><init>(Lcom/android/networkstack/android/net/dhcp/DhcpClient;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRefreshingAddressState:Lcom/android/networkstack/com/android/internal/util/State;

    iput-object p4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDependencies:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mController:Lcom/android/networkstack/com/android/internal/util/StateMachine;

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->getIpMemoryStore()Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;

    move-result-object p2

    iput-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpMemoryStore:Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;

    invoke-virtual {p4}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->getIpProvisioningMetrics()Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpPreconnectingState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpAddressConflictDetectingState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpv6OnlyWaitState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpDecliningState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRefreshingAddressState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->addState(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    iget-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->setInitialState(Lcom/android/networkstack/com/android/internal/util/State;)V

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    const-string p3, "KICK"

    const/16 v0, 0x44d

    invoke-direct {p0, p3, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    move-result-object p3

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    const-string p3, "TIMEOUT"

    const/16 v0, 0x44f

    invoke-direct {p0, p3, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    move-result-object p3

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    const-string p3, "RENEW"

    const/16 v0, 0x450

    invoke-direct {p0, p3, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    move-result-object p3

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    const-string p3, "REBIND"

    const/16 v0, 0x451

    invoke-direct {p0, p3, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    move-result-object p3

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    const-string p3, "EXPIRY"

    const/16 v0, 0x452

    invoke-direct {p0, p3, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    move-result-object p3

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    new-instance p3, Lcom/android/networkstack/android/net/util/HostnameTransliterator;

    invoke-direct {p3}, Lcom/android/networkstack/android/net/util/HostnameTransliterator;-><init>()V

    invoke-virtual {p4, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->getCustomHostname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/networkstack/android/net/util/HostnameTransliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHostname:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->getSendHostnameOverlaySetting(Landroid/content/Context;)Z

    move-result p0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p0, p1}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->setHostnameTransinfo(ZZ)V

    return-void
.end method

.method private acceptDhcpResults(Lcom/android/networkstack/android/net/DhcpResults;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    iget-object p1, p1, Lcom/android/networkstack/android/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v0, "DhcpClient"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/networkstack/R$array;->config_default_dns_servers:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    iget-object v4, v4, Lcom/android/networkstack/android/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid default DNS server: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mOffer:Lcom/android/networkstack/android/net/DhcpResults;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " lease: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/networkstack/android/net/dhcp/DhcpClient;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private clearDhcpState()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    iput-wide v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mT2:J

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mOffer:Lcom/android/networkstack/android/net/DhcpResults;

    return-void
.end method

.method private confirmDhcpLease(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/DhcpResults;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)V

    const-string p1, "Confirmed"

    invoke-direct {p0, p2, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->acceptDhcpResults(Lcom/android/networkstack/android/net/DhcpResults;Ljava/lang/String;)V

    return-void
.end method

.method private connectUdpSock(Ljava/net/Inet4Address;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/16 v0, 0x43

    invoke-static {p0, p1, v0}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "DhcpClient"

    const-string v0, "Error connecting UDP socket"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getMessagesToIpClient()[I
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3eb
        0x3ec
        0x3f0
        0x3ef
        0x3ed
        0x3f2
    .end array-data
.end method

.method private getOptionsToSkip()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->isWifiManagedProfile:Z

    if-nez p0, :cond_0

    const/16 p0, 0x77

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private getRequestedParams()[B
    .locals 4

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-boolean v1, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->isWifiManagedProfile:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    sget-object v2, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->DEFAULT_REQUESTED_PARAMS:[B

    array-length v3, v2

    add-int/2addr v3, v0

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v0, 0x0

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v0, 0x72

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v0, 0x6c

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-object v0, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/networkstack/android/net/networkstack/aidl/dhcp/DhcpOption;

    iget-object v3, v2, Lcom/android/networkstack/android/net/networkstack/aidl/dhcp/DhcpOption;->value:[B

    if-nez v3, :cond_1

    iget-byte v2, v2, Lcom/android/networkstack/android/net/networkstack/aidl/dhcp/DhcpOption;->type:B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->isWifiManagedProfile:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x77

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private getSecs()S
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private hasIpAddressConflict(Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;Ljava/net/Inet4Address;)Z
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->packetHasIpAddressConflict(Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;Ljava/net/Inet4Address;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->senderIp:Ljava/net/Inet4Address;

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->targetIp:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->senderHwAddress:Landroid/net/MacAddress;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IP address conflict detected:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p1, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->opCode:S

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const-string p1, "ARP Request"

    goto :goto_0

    :cond_1
    const-string p1, "ARP Reply"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ARP sender MAC: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " host MAC: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ARP sender IP: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ARP target IP: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " host target IP: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DhcpClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private initInterface()Z
    .locals 3

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIface:Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIface:Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

    :cond_0
    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIface:Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine InterfaceParams for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DhcpClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, v0, Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIface:Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

    iget v1, v1, Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;->index:I

    sget-object v2, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    invoke-static {v0, v1, v2}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II[B)Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Ljava/net/SocketAddress;

    const/4 p0, 0x1

    return p0
.end method

.method private initUdpSocket()Z
    .locals 6

    const/16 v0, -0x1ff

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v4, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/util/SocketUtils;->bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_REUSEADDR:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SO_BROADCAST:I

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SO_RCVBUF:I

    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget-object v2, Lcom/android/networkstack/com/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    const/16 v3, 0x44

    invoke-static {p0, v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return v5

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "DhcpClient"

    const-string v3, "Error creating UDP socket"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return v1

    :goto_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw p0
.end method

.method private isArpProbe(Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;)Z
    .locals 2

    iget-short p0, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->opCode:S

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->senderIp:Ljava/net/Inet4Address;

    sget-object v1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->targetIp:Ljava/net/Inet4Address;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private logState(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/net/metrics/DhcpClientEvent$Builder;

    invoke-direct {v0}, Landroid/net/metrics/DhcpClientEvent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/metrics/DhcpClientEvent$Builder;->setMsg(Ljava/lang/String;)Landroid/net/metrics/DhcpClientEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/metrics/DhcpClientEvent$Builder;->setDurationMs(I)Landroid/net/metrics/DhcpClientEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/metrics/DhcpClientEvent$Builder;->build()Landroid/net/metrics/DhcpClientEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/net/metrics/IpConnectivityLog$Event;)Z

    return-void
.end method

.method public static makeDhcpClient(Landroid/content/Context;Lcom/android/networkstack/com/android/internal/util/StateMachine;Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;)Lcom/android/networkstack/android/net/dhcp/DhcpClient;
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;

    iget-object v1, p2, Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;-><init>(Landroid/content/Context;Lcom/android/networkstack/com/android/internal/util/StateMachine;Ljava/lang/String;Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;)V

    iput-object p2, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIface:Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;

    invoke-virtual {v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->start()V

    return-object v0
.end method

.method private makeWakeupMessage(Ljava/lang/String;I)Lcom/android/networkstack/com/android/internal/util/WakeupMessage;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/networkstack/android/net/dhcp/DhcpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/networkstack/com/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    return-object v0
.end method

.method private maybeGetHostnameForSending()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDependencies:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->getSendHostnameOverlaySetting(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->hostnameSetting:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHostname:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeSaveLeaseToIpMemoryStore()V
    .locals 6

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-object v0, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->l2Key:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/networkstack/android/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;

    invoke-direct {v1}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    iget-object v2, v2, Lcom/android/networkstack/android/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    invoke-virtual {v1, v2}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;->setAssignedV4Address(Ljava/net/Inet4Address;)Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    iget v2, v2, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;->setAssignedV4AddressExpiry(Ljava/lang/Long;)Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    iget-object v2, v2, Lcom/android/networkstack/android/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;->setDnsAddresses(Ljava/util/List;)Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;

    iget-object v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    iget v2, v2, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;->setMtu(Ljava/lang/Integer;)Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;

    new-instance v2, Lcom/android/networkstack/android/net/dhcp/DhcpClient$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpMemoryStore:Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;

    invoke-virtual {v1}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;->build()Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->storeNetworkAttributes(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private maybeTransitionToIpv6OnlyWaitState(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getIpv6OnlyWaitTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getIpv6OnlyWaitTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpv6OnlyWaitTimeMs:J

    iget-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpv6OnlyWaitState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->transitionTo(Lcom/android/networkstack/com/android/internal/util/IState;)V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyFailure(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->setLeaseExpiredToIpMemoryStore()V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mController:Lcom/android/networkstack/com/android/internal/util/StateMachine;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3ec

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private notifySuccess()V
    .locals 4

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->maybeSaveLeaseToIpMemoryStore()V

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mController:Lcom/android/networkstack/com/android/internal/util/StateMachine;

    new-instance v1, Lcom/android/networkstack/android/net/DhcpResults;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLease:Lcom/android/networkstack/android/net/DhcpResults;

    invoke-direct {v1, p0}, Lcom/android/networkstack/android/net/DhcpResults;-><init>(Lcom/android/networkstack/android/net/DhcpResults;)V

    const/16 p0, 0x3ec

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private packetHasIpAddressConflict(Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;Ljava/net/Inet4Address;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->senderIp:Ljava/net/Inet4Address;

    sget-object v1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->senderIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->isArpProbe(Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->targetIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p1, p1, Lcom/android/networkstack/com/android/net/module/util/arp/ArpPacket;->senderHwAddress:Landroid/net/MacAddress;

    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private preDhcpTransitionTo(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->transitionTo(Lcom/android/networkstack/com/android/internal/util/IState;)V

    return-void
.end method

.method private receiveOfferOrAckPacket(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->isValidPacket(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpOfferPacket;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->maybeTransitionToIpv6OnlyWaitState(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->toDhcpResults()Lcom/android/networkstack/android/net/DhcpResults;

    move-result-object p1

    iput-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mOffer:Lcom/android/networkstack/android/net/DhcpResults;

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Got pending lease: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mOffer:Lcom/android/networkstack/android/net/DhcpResults;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DhcpClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->transitionTo(Lcom/android/networkstack/com/android/internal/util/IState;)V

    return-void

    :cond_2
    instance-of v0, p1, Lcom/android/networkstack/android/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    iget-boolean p2, p1, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->mRapidCommit:Z

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->toDhcpResults()Lcom/android/networkstack/android/net/DhcpResults;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->confirmDhcpLease(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;Lcom/android/networkstack/android/net/DhcpResults;)V

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->isDhcpIpConflictDetectEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpAddressConflictDetectingState:Lcom/android/networkstack/com/android/internal/util/State;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/networkstack/com/android/internal/util/State;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->transitionTo(Lcom/android/networkstack/com/android/internal/util/IState;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private recordMetricEnabledFeatures()V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    sget-object v1, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;->DF_INITREBOOT:Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;

    invoke-virtual {v0, v1}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->setDhcpEnabledFeature(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    sget-object v1, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;->DF_RAPIDCOMMIT:Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;

    invoke-virtual {v0, v1}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->setDhcpEnabledFeature(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->isDhcpIpConflictDetectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    sget-object v1, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;->DF_DAD:Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;

    invoke-virtual {v0, v1}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->setDhcpEnabledFeature(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V

    :cond_0
    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-boolean v0, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->isPreconnectionEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    sget-object v0, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;->DF_FILS:Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->setDhcpEnabledFeature(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V

    :cond_1
    return-void
.end method

.method private scheduleLeaseTimers()V
    .locals 14

    iget-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "DhcpClient"

    if-nez v0, :cond_0

    const-string p0, "Infinite lease, no timer scheduling needed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x2

    div-long v6, v4, v6

    const-wide/16 v8, 0x7

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    add-long v10, v2, v8

    iput-wide v10, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mT2:J

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    add-long v12, v2, v6

    invoke-virtual {v0, v12, v13}, Lcom/android/networkstack/com/android/internal/util/WakeupMessage;->schedule(J)V

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    invoke-virtual {v0, v10, v11}, Lcom/android/networkstack/com/android/internal/util/WakeupMessage;->schedule(J)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/networkstack/com/android/internal/util/WakeupMessage;

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/networkstack/com/android/internal/util/WakeupMessage;->schedule(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Scheduling renewal in "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    div-long/2addr v6, v2

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "Scheduling rebind in "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v8, v2

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "Scheduling expiry in "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendDeclinePacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 3

    iget v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionId:I

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->buildDeclinePacket(II[BLjava/net/Inet4Address;Ljava/net/Inet4Address;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string p2, "DHCPDECLINE"

    sget-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method private sendDiscoverPacket()Z
    .locals 12

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getSecs()S

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    iget v4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getSecs()S

    move-result v5

    iget-object v6, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getRequestedParams()[B

    move-result-object v8

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->maybeGetHostnameForSending()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-object v11, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->options:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v11}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[BZLjava/lang/String;Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    invoke-virtual {v1}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->incrementCountForDiscover()V

    const-string v1, "DHCPDISCOVER"

    sget-object v3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method private sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 12

    sget-object v0, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    iget v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getSecs()S

    move-result v3

    iget-object v6, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->getRequestedParams()[B

    move-result-object v9

    invoke-direct {p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->maybeGetHostnameForSending()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-object v11, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->options:Ljava/util/List;

    const/4 v5, 0x0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v11}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DHCPREQUEST ciaddr="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " serverid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mMetrics:Lcom/android/networkstack/metrics/IpProvisioningMetrics;

    invoke-virtual {p2}, Lcom/android/networkstack/metrics/IpProvisioningMetrics;->incrementCountForRequest()V

    move-object/from16 p2, p4

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    move-result p0

    return p0
.end method

.method private setLeaseExpiredToIpMemoryStore()V
    .locals 4

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mConfiguration:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;

    iget-object v0, v0, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Configuration;->l2Key:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;

    invoke-direct {v1}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;-><init>()V

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;->setAssignedV4AddressExpiry(Ljava/lang/Long;)Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;

    new-instance v2, Lcom/android/networkstack/android/net/dhcp/DhcpClient$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mIpMemoryStore:Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;

    invoke-virtual {v1}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes$Builder;->build()Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->storeNetworkAttributes(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method

.method private startInitReboot()V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mWaitBeforeObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

    iget-object v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mObtainingConfigurationState:Lcom/android/networkstack/com/android/internal/util/State;

    invoke-direct {p0, v0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->preDhcpTransitionTo(Lcom/android/networkstack/com/android/internal/util/State;Lcom/android/networkstack/com/android/internal/util/State;)V

    return-void
.end method

.method private startNewTransaction()V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    return-void
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "DhcpClient"

    const-string v2, "Broadcasting "

    if-nez p3, :cond_0

    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpPacketHandler:Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPacketHandler;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Ljava/net/SocketAddress;

    invoke-virtual {p2, p1, p0}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$DhcpPacketHandler;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    sget-object p3, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-virtual {p4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/16 p2, 0x43

    invoke-static {p0, p1, v0, p4, p2}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    goto :goto_0

    :cond_1
    const-string p3, "Unicasting %s to %s"

    iget-object p4, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {p4}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {p0, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :goto_1
    const-string p1, "Can\'t send packet: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public doQuit()V
    .locals 2

    const-string v0, "DhcpClient"

    const-string v1, "doQuit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->quit()V

    return-void
.end method

.method public isDhcpIpConflictDetectEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDependencies:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    const-string v1, "dhcp_ip_conflict_detect_version"

    invoke-virtual {v0, p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSlowRetransmissionEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDependencies:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    const-string v1, "dhcp_slow_retransmission_version"

    invoke-virtual {v0, p0, v1}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidPacket(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getTransactionId()I

    move-result v0

    iget v1, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionId:I

    const/4 v2, 0x0

    const-string v3, ", expected "

    const-string v4, "DhcpClient"

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected transaction ID "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "MAC addr mismatch: got "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/networkstack/com/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/networkstack/com/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected onQuitting()V
    .locals 2

    const-string v0, "DhcpClient"

    const-string v1, "onQuitting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mController:Lcom/android/networkstack/com/android/internal/util/StateMachine;

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/android/networkstack/com/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return-void
.end method

.method public setDhcpLeaseExpiry(Lcom/android/networkstack/android/net/dhcp/DhcpPacket;)V
    .locals 4

    iget-object v0, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDependencies:Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;

    const-string v1, "dhcp_minimum_lease"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lcom/android/networkstack/android/net/dhcp/DhcpClient$Dependencies;->getIntDeviceConfig(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/networkstack/android/net/dhcp/DhcpPacket;->getLeaseTimeMillis(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    :cond_0
    iput-wide v2, p0, Lcom/android/networkstack/android/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    return-void
.end method
