package com.android.server.telecom.nano;
import java.lang.String;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import java.io.IOException;

public final class TelecomLogClass$InCallServiceInfo extends MessageNano
{
/*
 * Field Definitions.
 */
      private static volatile TelecomLogClass$InCallServiceInfo[] _emptyArray;
      private int bitField0_;
      private long boundDurationMillis_;
      private String inCallServiceName_;
      private int inCallServiceType_;
      private boolean isNullBinding_;
/*
 * Declared Constructors.
 */
    public TelecomLogClass$InCallServiceInfo() { ... }
    public TelecomLogClass$InCallServiceInfo clear() { ... }
    protected int computeSerializedSize() { ... }
    public static TelecomLogClass$InCallServiceInfo[] emptyArray() { ... }
    public long getBoundDurationMillis() { ... }
    public String getInCallServiceName() { ... }
    public int getInCallServiceType() { ... }
    public boolean getIsNullBinding() { ... }
    public TelecomLogClass$InCallServiceInfo setBoundDurationMillis(long) { ... }
    public TelecomLogClass$InCallServiceInfo setInCallServiceName(String) { ... }
    public TelecomLogClass$InCallServiceInfo setInCallServiceType(int) { ... }
    public TelecomLogClass$InCallServiceInfo setIsNullBinding(boolean) { ... }
    public void writeTo(CodedOutputByteBufferNano)  throws IOException{ ... }

} 