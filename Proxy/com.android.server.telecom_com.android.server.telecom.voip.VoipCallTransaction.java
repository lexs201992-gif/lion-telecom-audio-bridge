package com.android.server.telecom.voip;
import android.os.Handler;
import java.util.concurrent.CompletableFuture;
import java.util.List;
import com.android.server.telecom.voip.VoipCallTransactionResult;
import java.util.concurrent.atomic.AtomicBoolean;
import com.android.server.telecom.voip.TransactionManager$TransactionCompleteListener;
import java.util.concurrent.CompletionStage;
import android.os.HandlerThread;
import java.lang.Throwable;
import java.lang.Object;
import java.lang.Void;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import java.lang.String;

public class VoipCallTransaction extends Object
{
/*
 * Field Definitions.
 */
      protected TransactionManager$TransactionCompleteListener mCompleteListener;
      protected final AtomicBoolean mCompleted;
      protected Handler mHandler;
      private HandlerThread mHandlerThread;
      protected TelecomSystem$SyncRoot mLock;
      protected List mSubTransactions;
      protected String mTransactionName;
/*
 * Declared Constructors.
 */
    public VoipCallTransaction(TelecomSystem$SyncRoot) { ... }
    public VoipCallTransaction(List, TelecomSystem$SyncRoot) { ... }
    public static void $r8$lambda$Kg7Ano-A5h7lP8Ej4E_QxLyopv8(CompletableFuture) { ... }
    public static Object $r8$lambda$VKyYoH_z0DnbLEL3JNWTY-bzI04(VoipCallTransaction, Void) { ... }
    public static Void $r8$lambda$b2kq0LO2WsGxsV737iEXU6509Z4(VoipCallTransaction, Throwable) { ... }
    public static Void $r8$lambda$d1azhRZNC14DA7JcRLf4oGxVGaY(VoipCallTransaction, VoipCallTransactionResult) { ... }
    public void finish() { ... }
    private Void lambda$scheduleTransaction$2(VoipCallTransactionResult) { ... }
    private Void lambda$scheduleTransaction$3(Throwable) { ... }
    private static void lambda$start$0(CompletableFuture) { ... }
    private Object lambda$start$1(Void) { ... }
    public CompletionStage processTransaction(Void) { ... }
    protected void scheduleTransaction() { ... }
    public void setCompleteListener(TransactionManager$TransactionCompleteListener) { ... }
    public void start() { ... }

} 