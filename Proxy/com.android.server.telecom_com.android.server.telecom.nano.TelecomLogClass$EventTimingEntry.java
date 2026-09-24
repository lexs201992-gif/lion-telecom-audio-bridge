package com.android.server.telecom.nano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import java.io.IOException;

public final class TelecomLogClass$EventTimingEntry extends MessageNano
{
/*
 * Field Definitions.
 */
      private static volatile TelecomLogClass$EventTimingEntry[] _emptyArray;
      private int bitField0_;
      private long timeMillis_;
      private int timingName_;
/*
 * Declared Constructors.
 */
    public TelecomLogClass$EventTimingEntry() { ... }
    public TelecomLogClass$EventTimingEntry clear() { ... }
    protected int computeSerializedSize() { ... }
    public static TelecomLogClass$EventTimingEntry[] emptyArray() { ... }
    public long getTimeMillis() { ... }
    public int getTimingName() { ... }
    public TelecomLogClass$EventTimingEntry setTimeMillis(long) { ... }
    public TelecomLogClass$EventTimingEntry setTimingName(int) { ... }
    public void writeTo(CodedOutputByteBufferNano)  throws IOException{ ... }

} 