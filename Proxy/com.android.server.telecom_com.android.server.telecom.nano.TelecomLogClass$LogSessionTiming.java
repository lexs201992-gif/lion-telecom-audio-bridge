package com.android.server.telecom.nano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import java.io.IOException;

public final class TelecomLogClass$LogSessionTiming extends MessageNano
{
/*
 * Field Definitions.
 */
      private static volatile TelecomLogClass$LogSessionTiming[] _emptyArray;
      private int bitField0_;
      private int sessionEntryPoint_;
      private long timeMillis_;
/*
 * Declared Constructors.
 */
    public TelecomLogClass$LogSessionTiming() { ... }
    public TelecomLogClass$LogSessionTiming clear() { ... }
    protected int computeSerializedSize() { ... }
    public static TelecomLogClass$LogSessionTiming[] emptyArray() { ... }
    public TelecomLogClass$LogSessionTiming setSessionEntryPoint(int) { ... }
    public TelecomLogClass$LogSessionTiming setTimeMillis(long) { ... }
    public void writeTo(CodedOutputByteBufferNano)  throws IOException{ ... }

} 