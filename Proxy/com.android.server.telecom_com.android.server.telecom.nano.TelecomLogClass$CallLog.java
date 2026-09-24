package com.android.server.telecom.nano;
import java.lang.String;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.android.server.telecom.nano.TelecomLogClass$VideoEvent;
import com.android.server.telecom.nano.TelecomLogClass$InCallServiceInfo;
import com.android.server.telecom.nano.TelecomLogClass$Event;
import com.android.server.telecom.nano.TelecomLogClass$EventTimingEntry;
import java.io.IOException;

public final class TelecomLogClass$CallLog extends MessageNano
{
/*
 * Field Definitions.
 */
      private static volatile TelecomLogClass$CallLog[] _emptyArray;
      private int bitField0_;
      private long callDurationMillis_;
      public TelecomLogClass$Event[] callEvents;
      private int callSource_;
      private int callTechnologies_;
      private int callTerminationCode_;
      public TelecomLogClass$EventTimingEntry[] callTimings;
      private int connectionProperties_;
      public String[] connectionService;
      public TelecomLogClass$InCallServiceInfo[] inCallServices;
      private boolean isAdditionalCall_;
      private boolean isCreatedFromExistingConnection_;
      private boolean isEmergencyCall_;
      private boolean isInterrupted_;
      private boolean isVideoCall_;
      private long startTime5Min_;
      private int type_;
      public TelecomLogClass$VideoEvent[] videoEvents;
/*
 * Declared Constructors.
 */
    public TelecomLogClass$CallLog() { ... }
    public TelecomLogClass$CallLog clear() { ... }
    protected int computeSerializedSize() { ... }
    public static TelecomLogClass$CallLog[] emptyArray() { ... }
    public long getCallDurationMillis() { ... }
    public int getCallSource() { ... }
    public int getCallTechnologies() { ... }
    public int getCallTerminationCode() { ... }
    public boolean getIsAdditionalCall() { ... }
    public boolean getIsCreatedFromExistingConnection() { ... }
    public boolean getIsEmergencyCall() { ... }
    public boolean getIsInterrupted() { ... }
    public boolean getIsVideoCall() { ... }
    public long getStartTime5Min() { ... }
    public int getType() { ... }
    public TelecomLogClass$CallLog setCallDurationMillis(long) { ... }
    public TelecomLogClass$CallLog setCallSource(int) { ... }
    public TelecomLogClass$CallLog setCallTechnologies(int) { ... }
    public TelecomLogClass$CallLog setCallTerminationCode(int) { ... }
    public TelecomLogClass$CallLog setConnectionProperties(int) { ... }
    public TelecomLogClass$CallLog setIsAdditionalCall(boolean) { ... }
    public TelecomLogClass$CallLog setIsCreatedFromExistingConnection(boolean) { ... }
    public TelecomLogClass$CallLog setIsEmergencyCall(boolean) { ... }
    public TelecomLogClass$CallLog setIsInterrupted(boolean) { ... }
    public TelecomLogClass$CallLog setIsVideoCall(boolean) { ... }
    public TelecomLogClass$CallLog setStartTime5Min(long) { ... }
    public TelecomLogClass$CallLog setType(int) { ... }
    public void writeTo(CodedOutputByteBufferNano)  throws IOException{ ... }

} 