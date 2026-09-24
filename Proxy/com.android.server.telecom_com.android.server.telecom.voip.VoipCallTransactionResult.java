package com.android.server.telecom.voip;
import java.lang.Object;
import java.lang.String;
import com.android.server.telecom.Call;

public class VoipCallTransactionResult extends Object
{
/*
 * Field Definitions.
 */
      private Call mCall;
      private String mMessage;
      private int mResult;
/*
 * Declared Constructors.
 */
    public VoipCallTransactionResult(int, Call, String) { ... }
    public VoipCallTransactionResult(int, String) { ... }
    public boolean equals(Object) { ... }
    public Call getCall() { ... }
    public String getMessage() { ... }
    public int getResult() { ... }
    public int hashCode() { ... }
    public String toString() { ... }

} 