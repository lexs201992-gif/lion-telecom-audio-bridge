package com.android.server.telecom;
import java.util.concurrent.BlockingQueue;
import com.android.server.telecom.ConnectionServiceFocusManager$ConnectionServiceFocusListener;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.telecom.ConnectionServiceFocusManager$FocusManagerHandler;
import com.android.server.telecom.ConnectionServiceFocusManager$CallsManagerRequester;
import android.os.Handler;
import java.util.Set;
import java.util.List;
import com.android.server.telecom.ConnectionServiceFocusManager$ConnectionServiceFocus;
import com.android.server.telecom.ConnectionServiceFocusManager$FocusRequest;
import com.android.server.telecom.CallsManagerListenerBase;
import com.android.server.telecom.ConnectionServiceFocusManager$RequestFocusCallback;
import android.util.LocalLog;
import com.android.server.telecom.ConnectionServiceFocusManager$CallFocus;

public class ConnectionServiceFocusManager extends Object
{
/*
 * Field Definitions.
 */
      public static final Set PRIORITY_FOCUS_CALL_STATE;
      public static final int RELEASE_FOCUS_TIMEOUT_MS;
      private final List mCalls;
      private final CallsManagerListenerBase mCallsManagerListener;
      private ConnectionServiceFocusManager$CallsManagerRequester mCallsManagerRequester;
      private final ConnectionServiceFocusManager$ConnectionServiceFocusListener mConnectionServiceFocusListener;
      private ConnectionServiceFocusManager$ConnectionServiceFocus mCurrentFocus;
      private ConnectionServiceFocusManager$CallFocus mCurrentFocusCall;
      private ConnectionServiceFocusManager$FocusRequest mCurrentFocusRequest;
      private ConnectionServiceFocusManager$FocusManagerHandler mEventHandler;
      private final LocalLog mLocalLog;
/*
 * Declared Constructors.
 */
    public ConnectionServiceFocusManager(ConnectionServiceFocusManager$CallsManagerRequester) { ... }
    public static boolean $r8$lambda$H_NWJN44YyeZAooRGKGuSokCcWc(ConnectionServiceFocusManager, ConnectionServiceFocusManager$CallFocus) { ... }
    public static void $r8$lambda$RnBf6ODfRm5u2URF4okYu25tbpM(ConnectionServiceFocusManager, BlockingQueue) { ... }
    static volatile ConnectionServiceFocusManager$FocusManagerHandler -$$Nest$fgetmEventHandler(ConnectionServiceFocusManager) { ... }
    static volatile void -$$Nest$mhandleAddedCall(ConnectionServiceFocusManager, ConnectionServiceFocusManager$CallFocus) { ... }
    static volatile void -$$Nest$mhandleCallStateChanged(ConnectionServiceFocusManager, ConnectionServiceFocusManager$CallFocus, int, int) { ... }
    static volatile void -$$Nest$mhandleConnectionServiceDeath(ConnectionServiceFocusManager, ConnectionServiceFocusManager$ConnectionServiceFocus) { ... }
    static volatile void -$$Nest$mhandleReleasedFocus(ConnectionServiceFocusManager, ConnectionServiceFocusManager$ConnectionServiceFocus) { ... }
    static volatile void -$$Nest$mhandleReleasedFocusTimeout(ConnectionServiceFocusManager, ConnectionServiceFocusManager$FocusRequest) { ... }
    static volatile void -$$Nest$mhandleRemovedCall(ConnectionServiceFocusManager, ConnectionServiceFocusManager$CallFocus) { ... }
    static volatile void -$$Nest$mhandleRequestFocus(ConnectionServiceFocusManager, ConnectionServiceFocusManager$FocusRequest) { ... }
    public void dump(IndentingPrintWriter) { ... }
    public List getAllCall() { ... }
    public ConnectionServiceFocusManager$CallFocus getCurrentFocusCall() { ... }
    public Handler getHandler() { ... }
    private void handleAddedCall(ConnectionServiceFocusManager$CallFocus) { ... }
    private void handleCallStateChanged(ConnectionServiceFocusManager$CallFocus, int, int) { ... }
    private void handleConnectionServiceDeath(ConnectionServiceFocusManager$ConnectionServiceFocus) { ... }
    private void handleReleasedFocus(ConnectionServiceFocusManager$ConnectionServiceFocus) { ... }
    private void handleReleasedFocusTimeout(ConnectionServiceFocusManager$FocusRequest) { ... }
    private void handleRemovedCall(ConnectionServiceFocusManager$CallFocus) { ... }
    private void handleRequestFocus(ConnectionServiceFocusManager$FocusRequest) { ... }
    private void lambda$getCurrentFocusCall$0(BlockingQueue) { ... }
    private boolean lambda$updateCurrentFocusCall$1(ConnectionServiceFocusManager$CallFocus) { ... }
    private void onRequestFocusDone(ConnectionServiceFocusManager$FocusRequest) { ... }
    public void requestFocus(ConnectionServiceFocusManager$CallFocus, ConnectionServiceFocusManager$RequestFocusCallback) { ... }
    private void updateConnectionServiceFocus(ConnectionServiceFocusManager$ConnectionServiceFocus) { ... }
    private void updateCurrentFocusCall() { ... }

} 