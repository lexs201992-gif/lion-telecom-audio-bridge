package com.android.server.telecom.voip;
import java.lang.String;
import com.android.server.telecom.voip.VoipCallTransactionResult;

public abstract static interface TransactionManager$TransactionCompleteListener
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void onTransactionCompleted(VoipCallTransactionResult, String) { ... }
    public abstract void onTransactionTimeout(String) { ... }

} 