package com.android.networkstack.android.net.dhcp6;
import java.util.Random;
import com.android.networkstack.com.android.net.module.util.dhcp6.Dhcp6Packet$PrefixDelegation;
import com.android.networkstack.com.android.internal.util.StateMachine;
import java.nio.ByteBuffer;
import java.util.List;
import android.content.Context;
import java.net.Inet6Address;
import com.android.networkstack.com.android.internal.util.WakeupMessage;
import com.android.networkstack.android.net.dhcp6.Dhcp6Client$Dependencies;
import com.android.networkstack.android.net.dhcp6.Dhcp6PacketDispatcher;
import com.android.networkstack.com.android.internal.util.State;
import com.android.networkstack.com.android.net.module.util.dhcp6.Dhcp6Packet;
import com.android.networkstack.com.android.net.module.util.InterfaceParams;
import com.android.networkstack.android.net.dhcp6.Dhcp6PacketDispatcher$MessageHandler;
import java.lang.String;

public class Dhcp6Client extends StateMachine
{
/*
 * Field Definitions.
 */
      private static final String TAG;
      private Dhcp6Packet$PrefixDelegation mAdvertise;
      private State mBoundState;
      private final byte[] mClientDuid;
      private final Context mContext;
      private final StateMachine mController;
      private final Dhcp6Client$Dependencies mDependencies;
      private final Dhcp6PacketDispatcher$MessageHandler mDhcp6MessageHandler;
      private final Dhcp6PacketDispatcher mDhcp6PacketDispatcher;
      private final WakeupMessage mExpiryAlarm;
      private State mHaveLeaseState;
      private final InterfaceParams mIface;
      private final WakeupMessage mKickAlarm;
      private final Random mRandom;
      private final WakeupMessage mRebindAlarm;
      private State mRebindState;
      private final WakeupMessage mRenewAlarm;
      private State mRenewState;
      private Dhcp6Packet$PrefixDelegation mReply;
      private State mRequestState;
      private byte[] mServerDuid;
      private int mSolMaxRtMs;
      private State mSolicitState;
      private State mStartedState;
      private State mStoppedState;
/*
 * Declared Constructors.
 */
    private Dhcp6Client(Context, StateMachine, InterfaceParams, Dhcp6PacketDispatcher, Dhcp6Client$Dependencies) { ... }
    public static void $r8$lambda$sdGT8h9M78GL3Q93BmncA1wuGz8(Dhcp6Client, Dhcp6Packet, Inet6Address) { ... }
    static volatile Dhcp6Packet$PrefixDelegation -$$Nest$fgetmAdvertise(Dhcp6Client) { ... }
    static volatile State -$$Nest$fgetmBoundState(Dhcp6Client) { ... }
    static volatile byte[] -$$Nest$fgetmClientDuid(Dhcp6Client) { ... }
    static volatile Dhcp6PacketDispatcher$MessageHandler -$$Nest$fgetmDhcp6MessageHandler(Dhcp6Client) { ... }
    static volatile Dhcp6PacketDispatcher -$$Nest$fgetmDhcp6PacketDispatcher(Dhcp6Client) { ... }
    static volatile WakeupMessage -$$Nest$fgetmExpiryAlarm(Dhcp6Client) { ... }
    static volatile WakeupMessage -$$Nest$fgetmKickAlarm(Dhcp6Client) { ... }
    static volatile Random -$$Nest$fgetmRandom(Dhcp6Client) { ... }
    static volatile WakeupMessage -$$Nest$fgetmRebindAlarm(Dhcp6Client) { ... }
    static volatile State -$$Nest$fgetmRebindState(Dhcp6Client) { ... }
    static volatile WakeupMessage -$$Nest$fgetmRenewAlarm(Dhcp6Client) { ... }
    static volatile State -$$Nest$fgetmRenewState(Dhcp6Client) { ... }
    static volatile Dhcp6Packet$PrefixDelegation -$$Nest$fgetmReply(Dhcp6Client) { ... }
    static volatile State -$$Nest$fgetmRequestState(Dhcp6Client) { ... }
    static volatile int -$$Nest$fgetmSolMaxRtMs(Dhcp6Client) { ... }
    static volatile State -$$Nest$fgetmSolicitState(Dhcp6Client) { ... }
    static volatile State -$$Nest$fgetmStoppedState(Dhcp6Client) { ... }
    static volatile void -$$Nest$fputmAdvertise(Dhcp6Client, Dhcp6Packet$PrefixDelegation) { ... }
    static volatile void -$$Nest$fputmReply(Dhcp6Client, Dhcp6Packet$PrefixDelegation) { ... }
    static volatile void -$$Nest$fputmServerDuid(Dhcp6Client, byte[]) { ... }
    static volatile void -$$Nest$fputmSolMaxRtMs(Dhcp6Client, int) { ... }
    static volatile void -$$Nest$mclearDhcp6State(Dhcp6Client) { ... }
    static volatile void -$$Nest$mnotifyPrefixDelegation(Dhcp6Client, int, List) { ... }
    static volatile void -$$Nest$mscheduleLeaseTimers(Dhcp6Client) { ... }
    static volatile boolean -$$Nest$msendRebindPacket(Dhcp6Client, int, long, ByteBuffer) { ... }
    static volatile boolean -$$Nest$msendRenewPacket(Dhcp6Client, int, long, ByteBuffer) { ... }
    static volatile boolean -$$Nest$msendRequestPacket(Dhcp6Client, int, long, ByteBuffer) { ... }
    static volatile boolean -$$Nest$msendSolicitPacket(Dhcp6Client, int, long, ByteBuffer) { ... }
    static volatile String -$$Nest$sfgetTAG() { ... }
    private void clearDhcp6State() { ... }
    public void doQuit() { ... }
    public static int[] getMessagesToIpClient() { ... }
    private void lambda$new$0(Dhcp6Packet, Inet6Address) { ... }
    public static Dhcp6Client makeDhcp6Client(Context, StateMachine, InterfaceParams, Dhcp6PacketDispatcher, Dhcp6Client$Dependencies) { ... }
    private WakeupMessage makeWakeupMessage(String, int) { ... }
    private void notifyPrefixDelegation(int, List) { ... }
    protected void onQuitting() { ... }
    private void scheduleLeaseTimers() { ... }
    private boolean sendRebindPacket(int, long, ByteBuffer) { ... }
    private boolean sendRenewPacket(int, long, ByteBuffer) { ... }
    private boolean sendRequestPacket(int, long, ByteBuffer) { ... }
    private boolean sendSolicitPacket(int, long, ByteBuffer) { ... }
    private boolean transmitPacket(ByteBuffer, String) { ... }

} 