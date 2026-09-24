package com.android.wm.shell.nano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.android.wm.shell.nano.Transition;
import com.android.wm.shell.nano.HandlerMapping;

public final class WmShellTransitionTraceProto extends MessageNano
{
/*
 * Field Definitions.
 */
      public HandlerMapping[] handlerMappings;
      public long magicNumber;
      public long realToElapsedTimeOffsetNanos;
      public Transition[] transitions;
/*
 * Declared Constructors.
 */
    public WmShellTransitionTraceProto() { ... }
    public WmShellTransitionTraceProto clear() { ... }
    public int computeSerializedSize() { ... }
    public void writeTo(CodedOutputByteBufferNano) { ... }

} 