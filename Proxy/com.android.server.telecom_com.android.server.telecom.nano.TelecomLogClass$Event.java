package com.android.server.telecom.nano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import java.io.IOException;

public final class TelecomLogClass$Event extends MessageNano
{
/*
 * Field Definitions.
 */
      private static volatile TelecomLogClass$Event[] _emptyArray;
      private int bitField0_;
      private int eventName_;
      private long timeSinceLastEventMillis_;
/*
 * Declared Constructors.
 */
    public TelecomLogClass$Event() { ... }
    public TelecomLogClass$Event clear() { ... }
    protected int computeSerializedSize() { ... }
    public static TelecomLogClass$Event[] emptyArray() { ... }
    public int getEventName() { ... }
    public long getTimeSinceLastEventMillis() { ... }
    public TelecomLogClass$Event setEventName(int) { ... }
    public TelecomLogClass$Event setTimeSinceLastEventMillis(long) { ... }
    public void writeTo(CodedOutputByteBufferNano)  throws IOException{ ... }

} 