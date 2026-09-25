package com.android.networkstack.android.net.dhcp;
import java.io.FileDescriptor;
import com.android.networkstack.android.net.ipmemorystore.Status;
import com.android.networkstack.com.android.internal.util.StateMachine;
import java.lang.Class;
import java.net.Inet4Address;
import android.util.SparseArray;
import android.net.metrics.IpConnectivityLog;
import com.android.networkstack.android.net.dhcp.DhcpClient$Configuration;
import com.android.networkstack.android.net.dhcp.DhcpClient$DhcpPacketHandler;
import com.android.networkstack.android.net.dhcp.DhcpPacket;
import com.android.networkstack.android.net.DhcpResults;
import com.android.networkstack.com.android.net.module.util.InterfaceParams;
import com.android.networkstack.com.android.internal.util.WakeupMessage;
import java.nio.ByteBuffer;
import java.util.Random;
import com.android.networkstack.metrics.IpProvisioningMetrics;
import com.android.networkstack.android.net.dhcp.DhcpClient$Dependencies;
import com.android.networkstack.android.net.NetworkStackIpMemoryStore;
import com.android.networkstack.com.android.internal.util.State;
import com.android.networkstack.com.android.net.module.util.arp.ArpPacket;
import java.lang.String;
import java.net.SocketAddress;
import android.content.Context;

public class DhcpClient extends StateMachine
{
/*
 * Field Definitions.
 */
      public static final String ARP_ANNOUNCE_INTERVAL_MS;
      public static final String ARP_FIRST_ANNOUNCE_DELAY_MS;
      public static final String ARP_FIRST_PROBE_DELAY_MS;
      public static final String ARP_PROBE_MAX_MS;
      public static final String ARP_PROBE_MIN_MS;
      public static final int CMD_ABORT_PRECONNECTION;
      private static final int CMD_ARP_ANNOUNCEMENT;
      private static final int CMD_ARP_PROBE;
      public static final int CMD_CLEAR_LINKADDRESS;
      public static final int CMD_CONFIGURE_LINKADDRESS;
      private static final int CMD_EXPIRE_DHCP;
      private static final int CMD_KICK;
      public static final int CMD_ON_QUIT;
      public static final int CMD_POST_DHCP_ACTION;
      public static final int CMD_PRE_DHCP_ACTION;
      public static final int CMD_PRE_DHCP_ACTION_COMPLETE;
      private static final int CMD_REBIND_DHCP;
      private static final int CMD_RECEIVED_PACKET;
      public static final int CMD_REFRESH_LINKADDRESS;
      private static final int CMD_RENEW_DHCP;
      public static final int CMD_START_DHCP;
      public static final int CMD_START_PRECONNECTION;
      public static final int CMD_STOP_DHCP;
      public static final int CMD_TIMEOUT;
      static final byte[] DEFAULT_REQUESTED_PARAMS;
      public static final String DHCP_RESTART_CONFIG_DELAY;
      private static final int EVENT_CONFIGURATION_INVALID;
      private static final int EVENT_CONFIGURATION_OBTAINED;
      private static final int EVENT_CONFIGURATION_TIMEOUT;
      private static final int EVENT_IP_CONFLICT;
      public static final int EVENT_LINKADDRESS_CONFIGURED;
      public static final long EXPIRED_LEASE;
      private static final boolean MSG_DBG;
      private static final boolean PACKET_DBG;
      private static final boolean STATE_DBG;
      private static final boolean VDBG;
      private DhcpClient$Configuration mConfiguration;
      private State mConfiguringInterfaceState;
      private int mConflictCount;
      private final Context mContext;
      private final StateMachine mController;
      private DhcpClient$Dependencies mDependencies;
      private State mDhcpBoundState;
      private State mDhcpDecliningState;
      private State mDhcpHaveLeaseState;
      private State mDhcpInitRebootState;
      private State mDhcpInitState;
      private DhcpResults mDhcpLease;
      private long mDhcpLeaseExpiry;
      private DhcpClient$DhcpPacketHandler mDhcpPacketHandler;
      private State mDhcpPreconnectingState;
      private State mDhcpRebindingState;
      private State mDhcpRebootingState;
      private State mDhcpRefreshingAddressState;
      private State mDhcpRenewingState;
      private State mDhcpRequestingState;
      private State mDhcpSelectingState;
      private State mDhcpState;
      private final WakeupMessage mExpiryAlarm;
      private final String mHostname;
      private byte[] mHwAddr;
      private InterfaceParams mIface;
      private final String mIfaceName;
      private SocketAddress mInterfaceBroadcastAddr;
      private State mIpAddressConflictDetectingState;
      private final NetworkStackIpMemoryStore mIpMemoryStore;
      private State mIpv6OnlyWaitState;
      private long mIpv6OnlyWaitTimeMs;
      private final WakeupMessage mKickAlarm;
      private Inet4Address mLastAssignedIpv4Address;
      private long mLastAssignedIpv4AddressExpiry;
      private long mLastBoundExitTime;
      private long mLastInitEnterTime;
      private final IpProvisioningMetrics mMetrics;
      private final IpConnectivityLog mMetricsLog;
      private State mObtainingConfigurationState;
      private DhcpResults mOffer;
      private final Random mRandom;
      private final WakeupMessage mRebindAlarm;
      private boolean mRegisteredForPreDhcpNotification;
      private final WakeupMessage mRenewAlarm;
      private State mStoppedState;
      private long mT2;
      private final WakeupMessage mTimeoutAlarm;
      private int mTransactionId;
      private long mTransactionStartMillis;
      private FileDescriptor mUdpSock;
      private State mWaitBeforeObtainingConfigurationState;
      private State mWaitBeforeRenewalState;
      private State mWaitBeforeStartState;
      private static final Class[] sMessageClasses;
      private static final SparseArray sMessageNames;
/*
 * Declared Constructors.
 */
    private DhcpClient(Context, StateMachine, String, DhcpClient$Dependencies) { ... }
    public static void $r8$lambda$IRQ4vlSxciswPfBY3MFHG94YRQI(Status) { ... }
    public static void $r8$lambda$tyeRl6UjH5I0z3hw8NsgjjrEn9I(Status) { ... }
    static volatile DhcpClient$Configuration -$$Nest$fgetmConfiguration(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmConfiguringInterfaceState(DhcpClient) { ... }
    static volatile int -$$Nest$fgetmConflictCount(DhcpClient) { ... }
    static volatile Context -$$Nest$fgetmContext(DhcpClient) { ... }
    static volatile StateMachine -$$Nest$fgetmController(DhcpClient) { ... }
    static volatile DhcpClient$Dependencies -$$Nest$fgetmDependencies(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpBoundState(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpDecliningState(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpInitRebootState(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpInitState(DhcpClient) { ... }
    static volatile DhcpResults -$$Nest$fgetmDhcpLease(DhcpClient) { ... }
    static volatile long -$$Nest$fgetmDhcpLeaseExpiry(DhcpClient) { ... }
    static volatile DhcpClient$DhcpPacketHandler -$$Nest$fgetmDhcpPacketHandler(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpPreconnectingState(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpRebindingState(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpRefreshingAddressState(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmDhcpRenewingState(DhcpClient) { ... }
    static volatile WakeupMessage -$$Nest$fgetmExpiryAlarm(DhcpClient) { ... }
    static volatile byte[] -$$Nest$fgetmHwAddr(DhcpClient) { ... }
    static volatile InterfaceParams -$$Nest$fgetmIface(DhcpClient) { ... }
    static volatile String -$$Nest$fgetmIfaceName(DhcpClient) { ... }
    static volatile SocketAddress -$$Nest$fgetmInterfaceBroadcastAddr(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmIpAddressConflictDetectingState(DhcpClient) { ... }
    static volatile NetworkStackIpMemoryStore -$$Nest$fgetmIpMemoryStore(DhcpClient) { ... }
    static volatile long -$$Nest$fgetmIpv6OnlyWaitTimeMs(DhcpClient) { ... }
    static volatile WakeupMessage -$$Nest$fgetmKickAlarm(DhcpClient) { ... }
    static volatile Inet4Address -$$Nest$fgetmLastAssignedIpv4Address(DhcpClient) { ... }
    static volatile long -$$Nest$fgetmLastBoundExitTime(DhcpClient) { ... }
    static volatile long -$$Nest$fgetmLastInitEnterTime(DhcpClient) { ... }
    static volatile IpProvisioningMetrics -$$Nest$fgetmMetrics(DhcpClient) { ... }
    static volatile IpConnectivityLog -$$Nest$fgetmMetricsLog(DhcpClient) { ... }
    static volatile DhcpResults -$$Nest$fgetmOffer(DhcpClient) { ... }
    static volatile Random -$$Nest$fgetmRandom(DhcpClient) { ... }
    static volatile WakeupMessage -$$Nest$fgetmRebindAlarm(DhcpClient) { ... }
    static volatile boolean -$$Nest$fgetmRegisteredForPreDhcpNotification(DhcpClient) { ... }
    static volatile WakeupMessage -$$Nest$fgetmRenewAlarm(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmStoppedState(DhcpClient) { ... }
    static volatile long -$$Nest$fgetmT2(DhcpClient) { ... }
    static volatile WakeupMessage -$$Nest$fgetmTimeoutAlarm(DhcpClient) { ... }
    static volatile int -$$Nest$fgetmTransactionId(DhcpClient) { ... }
    static volatile FileDescriptor -$$Nest$fgetmUdpSock(DhcpClient) { ... }
    static volatile State -$$Nest$fgetmWaitBeforeRenewalState(DhcpClient) { ... }
    static volatile void -$$Nest$fputmConfiguration(DhcpClient, DhcpClient$Configuration) { ... }
    static volatile void -$$Nest$fputmConflictCount(DhcpClient, int) { ... }
    static volatile void -$$Nest$fputmDhcpPacketHandler(DhcpClient, DhcpClient$DhcpPacketHandler) { ... }
    static volatile void -$$Nest$fputmIpv6OnlyWaitTimeMs(DhcpClient, long) { ... }
    static volatile void -$$Nest$fputmLastAssignedIpv4Address(DhcpClient, Inet4Address) { ... }
    static volatile void -$$Nest$fputmLastAssignedIpv4AddressExpiry(DhcpClient, long) { ... }
    static volatile void -$$Nest$fputmLastBoundExitTime(DhcpClient, long) { ... }
    static volatile void -$$Nest$fputmLastInitEnterTime(DhcpClient, long) { ... }
    static volatile void -$$Nest$fputmOffer(DhcpClient, DhcpResults) { ... }
    static volatile void -$$Nest$macceptDhcpResults(DhcpClient, DhcpResults, String) { ... }
    static volatile void -$$Nest$mclearDhcpState(DhcpClient) { ... }
    static volatile void -$$Nest$mconfirmDhcpLease(DhcpClient, DhcpPacket, DhcpResults) { ... }
    static volatile boolean -$$Nest$mconnectUdpSock(DhcpClient, Inet4Address) { ... }
    static volatile byte[] -$$Nest$mgetOptionsToSkip(DhcpClient) { ... }
    static volatile byte[] -$$Nest$mgetRequestedParams(DhcpClient) { ... }
    static volatile short -$$Nest$mgetSecs(DhcpClient) { ... }
    static volatile boolean -$$Nest$mhasIpAddressConflict(DhcpClient, ArpPacket, Inet4Address) { ... }
    static volatile boolean -$$Nest$minitInterface(DhcpClient) { ... }
    static volatile boolean -$$Nest$minitUdpSocket(DhcpClient) { ... }
    static volatile void -$$Nest$mlogState(DhcpClient, String, int) { ... }
    static volatile String -$$Nest$mmaybeGetHostnameForSending(DhcpClient) { ... }
    static volatile boolean -$$Nest$mmaybeTransitionToIpv6OnlyWaitState(DhcpClient, DhcpPacket) { ... }
    static volatile void -$$Nest$mnotifyFailure(DhcpClient, int) { ... }
    static volatile void -$$Nest$mnotifySuccess(DhcpClient) { ... }
    static volatile void -$$Nest$mpreDhcpTransitionTo(DhcpClient, State, State) { ... }
    static volatile void -$$Nest$mreceiveOfferOrAckPacket(DhcpClient, DhcpPacket, boolean) { ... }
    static volatile void -$$Nest$mrecordMetricEnabledFeatures(DhcpClient) { ... }
    static volatile void -$$Nest$mscheduleLeaseTimers(DhcpClient) { ... }
    static volatile boolean -$$Nest$msendDeclinePacket(DhcpClient, Inet4Address, Inet4Address) { ... }
    static volatile boolean -$$Nest$msendDiscoverPacket(DhcpClient) { ... }
    static volatile boolean -$$Nest$msendRequestPacket(DhcpClient, Inet4Address, Inet4Address, Inet4Address, Inet4Address) { ... }
    static volatile void -$$Nest$mstartInitReboot(DhcpClient) { ... }
    static volatile void -$$Nest$mstartNewTransaction(DhcpClient) { ... }
    static volatile boolean -$$Nest$sfgetMSG_DBG() { ... }
    static volatile boolean -$$Nest$sfgetPACKET_DBG() { ... }
    static volatile boolean -$$Nest$sfgetSTATE_DBG() { ... }
    static volatile boolean -$$Nest$sfgetVDBG() { ... }
    static volatile SparseArray -$$Nest$sfgetsMessageNames() { ... }
    private void acceptDhcpResults(DhcpResults, String) { ... }
    static void access$000(DhcpClient, int) { ... }
    static void access$100(DhcpClient, int) { ... }
    static void access$200(DhcpClient, int) { ... }
    static void access$300(DhcpClient, int) { ... }
    static void access$400(DhcpClient, int) { ... }
    static void access$500(DhcpClient, int) { ... }
    private void clearDhcpState() { ... }
    private void confirmDhcpLease(DhcpPacket, DhcpResults) { ... }
    private boolean connectUdpSock(Inet4Address) { ... }
    public void doQuit() { ... }
    public static int[] getMessagesToIpClient() { ... }
    private byte[] getOptionsToSkip() { ... }
    private byte[] getRequestedParams() { ... }
    private short getSecs() { ... }
    private boolean hasIpAddressConflict(ArpPacket, Inet4Address) { ... }
    private boolean initInterface() { ... }
    private boolean initUdpSocket() { ... }
    private boolean isArpProbe(ArpPacket) { ... }
    public boolean isDhcpIpConflictDetectEnabled() { ... }
    public boolean isSlowRetransmissionEnabled() { ... }
    public boolean isValidPacket(DhcpPacket) { ... }
    private void logState(String, int) { ... }
    public static DhcpClient makeDhcpClient(Context, StateMachine, InterfaceParams, DhcpClient$Dependencies) { ... }
    private WakeupMessage makeWakeupMessage(String, int) { ... }
    private String maybeGetHostnameForSending() { ... }
    private void maybeSaveLeaseToIpMemoryStore() { ... }
    private boolean maybeTransitionToIpv6OnlyWaitState(DhcpPacket) { ... }
    private void notifyFailure(int) { ... }
    private void notifySuccess() { ... }
    protected void onQuitting() { ... }
    private boolean packetHasIpAddressConflict(ArpPacket, Inet4Address) { ... }
    private void preDhcpTransitionTo(State, State) { ... }
    private void receiveOfferOrAckPacket(DhcpPacket, boolean) { ... }
    private void recordMetricEnabledFeatures() { ... }
    public void registerForPreDhcpNotification() { ... }
    private void scheduleLeaseTimers() { ... }
    private boolean sendDeclinePacket(Inet4Address, Inet4Address) { ... }
    private boolean sendDiscoverPacket() { ... }
    private boolean sendRequestPacket(Inet4Address, Inet4Address, Inet4Address, Inet4Address) { ... }
    public void setDhcpLeaseExpiry(DhcpPacket) { ... }
    private void setLeaseExpiredToIpMemoryStore() { ... }
    private void startInitReboot() { ... }
    private void startNewTransaction() { ... }
    private boolean transmitPacket(ByteBuffer, String, int, Inet4Address) { ... }

} 