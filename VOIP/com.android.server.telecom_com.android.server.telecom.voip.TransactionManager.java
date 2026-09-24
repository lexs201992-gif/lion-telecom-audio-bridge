package com.android.server.telecom.voip;
import java.lang.Object;
import com.android.server.telecom.voip.VoipCallTransaction;
import java.util.Queue;
import android.os.OutcomeReceiver;

public class TransactionManager extends Object
{
/*
 * Field Definitions.
 */
      private static TransactionManager INSTANCE;
      private VoipCallTransaction mCurrentTransaction;
      private Queue mTransactions;
      private static final Object sLock;
/*
 * Declared Constructors.
 */
    private TransactionManager() { ... }
    static volatile void -$$Nest$mfinishTransaction(TransactionManager) { ... }
    public void addTransaction(VoipCallTransaction, OutcomeReceiver) { ... }
    public void clear() { ... }
    private void finishTransaction() { ... }
    public static TransactionManager getInstance() { ... }
    public static TransactionManager getTestInstance() { ... }
    private void startTransactions() { ... }

} 