package com.android.server.telecom.voip;
import java.lang.Void;
import java.lang.Object;
import com.android.server.telecom.voip.VoipCallTransaction;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import com.android.server.telecom.TelecomSystem$SyncRoot;

public class SerialTransaction extends VoipCallTransaction
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public SerialTransaction(List, TelecomSystem$SyncRoot) { ... }
    public static Object $r8$lambda$XOUVYTiqfp4JQNKzpo15vXGd4Sc(SerialTransaction, Void) { ... }
    public static void $r8$lambda$fowrpPxSnIzBDWcrIEARnlULGsM(CompletableFuture) { ... }
    public void appendTransaction(VoipCallTransaction) { ... }
    public void handleTransactionFailure() { ... }
    private static void lambda$start$0(CompletableFuture) { ... }
    private Object lambda$start$1(Void) { ... }
    public void start() { ... }

} 