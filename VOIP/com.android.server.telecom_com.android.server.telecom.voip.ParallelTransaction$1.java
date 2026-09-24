package com.android.server.telecom.voip;
import java.lang.String;
import java.lang.Object;
import com.android.server.telecom.voip.ParallelTransaction;
import com.android.server.telecom.voip.VoipCallTransactionResult;
import java.util.concurrent.atomic.AtomicInteger;

 class ParallelTransaction$1 extends Object
{
/*
 * Field Definitions.
 */
      private final AtomicInteger mCount;
      final ParallelTransaction this$0;
/*
 * Declared Constructors.
 */
     ParallelTransaction$1(ParallelTransaction) { ... }
    public static Object $r8$lambda$5aVIZz_hN6BWz7s8ddeoqu5lSDc(ParallelTransaction$1, String, Object) { ... }
    public static Object $r8$lambda$C1wcJ6jcKqCiSVnHuWOdPbjMa10(ParallelTransaction$1, String, Object) { ... }
    private Object lambda$onTransactionCompleted$0(String, Object) { ... }
    private Object lambda$onTransactionTimeout$1(String, Object) { ... }
    public void onTransactionCompleted(VoipCallTransactionResult, String) { ... }
    public void onTransactionTimeout(String) { ... }

} 