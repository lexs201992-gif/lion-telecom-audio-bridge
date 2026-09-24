package com.android.server.telecom;
import com.android.server.telecom.TransactionalServiceWrapper;
import android.os.RemoteException;
import android.os.IBinder;
import android.content.Context;
import com.android.server.telecom.Call;
import com.android.server.telecom.CallStreamingController$UnbindStreamingServiceTransaction;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.voip.VoipCallTransaction;
import com.android.server.telecom.CallStreamingController$StreamingServiceTransaction;
import java.lang.Object;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.internal.telecom.ICallStreamingService;
import com.android.server.telecom.CallStreamingController$CallStreamingServiceConnection;

public class CallStreamingController extends CallsManagerListenerBase
{
/*
 * Field Definitions.
 */
      private CallStreamingController$CallStreamingServiceConnection mConnection;
      private final Context mContext;
      private boolean mIsStreaming;
      private final Object mLock;
      private ICallStreamingService mService;
      private Call mStreamingCall;
      private TelecomSystem$SyncRoot mTelecomLock;
      private TransactionalServiceWrapper mTransactionalServiceWrapper;
/*
 * Declared Constructors.
 */
    public CallStreamingController(Context, TelecomSystem$SyncRoot) { ... }
    static volatile CallStreamingController$CallStreamingServiceConnection -$$Nest$fgetmConnection(CallStreamingController) { ... }
    static volatile ICallStreamingService -$$Nest$fgetmService(CallStreamingController) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmTelecomLock(CallStreamingController) { ... }
    static volatile TransactionalServiceWrapper -$$Nest$fgetmTransactionalServiceWrapper(CallStreamingController) { ... }
    static volatile void -$$Nest$fputmConnection(CallStreamingController, CallStreamingController$CallStreamingServiceConnection) { ... }
    static volatile void -$$Nest$monConnectedInternal(CallStreamingController, Call, TransactionalServiceWrapper, IBinder) { ... }
    static volatile void -$$Nest$mresetController(CallStreamingController) { ... }
    public CallStreamingController$StreamingServiceTransaction getCallStreamingServiceTransaction(Context, TransactionalServiceWrapper, Call) { ... }
    public VoipCallTransaction getStartStreamingTransaction(CallsManager, TransactionalServiceWrapper, Call, TelecomSystem$SyncRoot) { ... }
    public VoipCallTransaction getStopStreamingTransaction(Call, TelecomSystem$SyncRoot) { ... }
    public CallStreamingController$UnbindStreamingServiceTransaction getUnbindStreamingServiceTransaction() { ... }
    public boolean isStreaming() { ... }
    public void onCallRemoved(Call) { ... }
    public void onCallStateChanged(Call, int, int) { ... }
    private void onConnectedInternal(Call, TransactionalServiceWrapper, IBinder)  throws RemoteException{ ... }
    private void resetController() { ... }

} 