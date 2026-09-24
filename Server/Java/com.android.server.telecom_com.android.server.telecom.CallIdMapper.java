package com.android.server.telecom;
import java.lang.Object;
import java.lang.String;
import com.android.server.telecom.CallIdMapper$BiMap;
import com.android.server.telecom.Call;
import java.util.Collection;
import com.android.server.telecom.CallIdMapper$ICallInfo;

public class CallIdMapper extends Object
{
/*
 * Field Definitions.
 */
      private CallIdMapper$ICallInfo mCallInfo;
      private final CallIdMapper$BiMap mCalls;
/*
 * Declared Constructors.
 */
    public CallIdMapper(CallIdMapper$ICallInfo) { ... }
     void addCall(Call) { ... }
     void addCall(Call, String) { ... }
     void clear() { ... }
     Call getCall(Object) { ... }
     String getCallId(Call) { ... }
     Collection getCalls() { ... }
     void removeCall(Call) { ... }
     void removeCall(String) { ... }

} 