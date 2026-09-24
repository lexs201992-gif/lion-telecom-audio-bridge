package com.android.server.telecom.nano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import java.io.IOException;

public final class TelecomLogClass$VideoEvent extends MessageNano
{
/*
 * Field Definitions.
 */
      private static volatile TelecomLogClass$VideoEvent[] _emptyArray;
      private int bitField0_;
      private int eventName_;
      private long timeSinceLastEventMillis_;
      private int videoState_;
/*
 * Declared Constructors.
 */
    public TelecomLogClass$VideoEvent() { ... }
    public TelecomLogClass$VideoEvent clear() { ... }
    protected int computeSerializedSize() { ... }
    public static TelecomLogClass$VideoEvent[] emptyArray() { ... }
    public int getEventName() { ... }
    public long getTimeSinceLastEventMillis() { ... }
    public int getVideoState() { ... }
    public TelecomLogClass$VideoEvent setEventName(int) { ... }
    public TelecomLogClass$VideoEvent setTimeSinceLastEventMillis(long) { ... }
    public TelecomLogClass$VideoEvent setVideoState(int) { ... }
    public void writeTo(CodedOutputByteBufferNano)  throws IOException{ ... }

} 