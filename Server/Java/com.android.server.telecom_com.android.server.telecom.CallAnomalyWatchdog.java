package com.android.server.telecom;
import java.lang.Runnable;
import com.android.internal.util.IndentingPrintWriter;
import java.util.UUID;
import java.util.Set;
import com.android.server.telecom.Call;
import com.android.server.telecom.Timeouts$Adapter;
import java.util.Map;
import com.android.server.telecom.ClockProxy;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.CallAnomalyWatchdog$WatchdogCallState;
import com.android.server.telecom.EmergencyCallDiagnosticLogger;
import android.telecom.DisconnectCause;
import java.lang.String;
import com.android.server.telecom.AnomalyReporterAdapter;
import android.util.LocalLog;
import java.util.concurrent.ScheduledExecutorService;

public class CallAnomalyWatchdog extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      public static final UUID WATCHDOG_DISCONNECTED_STUCK_CALL_UUID;
      public static final UUID WATCHDOG_DISCONNECTED_STUCK_EMERGENCY_CALL_UUID;
      private AnomalyReporterAdapter mAnomalyReporter;
      private final Set mCallsPendingDestruction;
      private final ClockProxy mClockProxy;
      private final EmergencyCallDiagnosticLogger mEmergencyCallDiagnosticLogger;
      private final LocalLog mLocalLog;
      private final TelecomSystem$SyncRoot mLock;
      private final ScheduledExecutorService mScheduledExecutorService;
      private final Map mScheduledFutureMap;
      private final Timeouts$Adapter mTimeoutAdapter;
      private final Map mWatchdogCallStateMap;
/*
 * Declared Constructors.
 */
    public CallAnomalyWatchdog(ScheduledExecutorService, TelecomSystem$SyncRoot, Timeouts$Adapter, ClockProxy, EmergencyCallDiagnosticLogger) { ... }
    public static String $r8$lambda$4-1qEdGRxn6XlW-_9GUX7wZ6Gio(Call) { ... }
    public static String $r8$lambda$Uj-_HMas38wWY4QTWT9F2-afKII(Call) { ... }
    static volatile AnomalyReporterAdapter -$$Nest$fgetmAnomalyReporter(CallAnomalyWatchdog) { ... }
    static volatile Set -$$Nest$fgetmCallsPendingDestruction(CallAnomalyWatchdog) { ... }
    static volatile ClockProxy -$$Nest$fgetmClockProxy(CallAnomalyWatchdog) { ... }
    static volatile EmergencyCallDiagnosticLogger -$$Nest$fgetmEmergencyCallDiagnosticLogger(CallAnomalyWatchdog) { ... }
    static volatile LocalLog -$$Nest$fgetmLocalLog(CallAnomalyWatchdog) { ... }
    static volatile Map -$$Nest$fgetmScheduledFutureMap(CallAnomalyWatchdog) { ... }
    static volatile Map -$$Nest$fgetmWatchdogCallStateMap(CallAnomalyWatchdog) { ... }
    static volatile long -$$Nest$mgetDurationInCurrentStateMillis(CallAnomalyWatchdog, CallAnomalyWatchdog$WatchdogCallState) { ... }
    static volatile void -$$Nest$mwriteCallStateChangedAtom(CallAnomalyWatchdog, Call) { ... }
    public void dump(IndentingPrintWriter) { ... }
    private Runnable getCleanupRunnable(Call, CallAnomalyWatchdog$WatchdogCallState, long, boolean) { ... }
    private long getDurationInCurrentStateMillis(CallAnomalyWatchdog$WatchdogCallState) { ... }
    public int getNumberOfScheduledTimeouts() { ... }
    public long getTimeoutMillis(Call, CallAnomalyWatchdog$WatchdogCallState) { ... }
    private boolean isEnabledDisconnectForStuckCall() { ... }
    private static String lambda$dump$0(Call) { ... }
    private static String lambda$dump$1(Call) { ... }
    private void maybeTrackCall(Call) { ... }
    public void onCallAdded(Call) { ... }
    public void onCallRemoved(Call) { ... }
    public void onCallStateChanged(Call, int, int) { ... }
    public void onCreateConnectionFailed(Call) { ... }
    public void onFailedIncomingCall(Call) { ... }
    public void onFailedOutgoingCall(Call, DisconnectCause) { ... }
    public void onStartCreateConnection(Call) { ... }
    public void onSuccessfulIncomingCall(Call) { ... }
    public void onSuccessfulOutgoingCall(Call, int) { ... }
    public void setAnomalyReporterAdapter(AnomalyReporterAdapter) { ... }
    private void stopTrackingCall(Call) { ... }
    private void writeCallStateChangedAtom(Call) { ... }

} 