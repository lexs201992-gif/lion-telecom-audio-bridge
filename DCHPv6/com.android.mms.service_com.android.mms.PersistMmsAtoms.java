package com.android.mms;
import com.google.protobuf.Parser;
import com.google.protobuf.Internal$ProtobufList;
import com.android.mms.IncomingMms;
import java.util.List;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.android.mms.OutgoingMms;
import com.android.mms.PersistMmsAtoms$Builder;
import java.lang.Object;
import java.lang.Iterable;
import java.lang.String;

public final class PersistMmsAtoms extends GeneratedMessageLite
{
/*
 * Field Definitions.
 */
      public static final int BUILD_FINGERPRINT_FIELD_NUMBER;
      private static final PersistMmsAtoms DEFAULT_INSTANCE;
      public static final int INCOMING_MMS_FIELD_NUMBER;
      public static final int INCOMING_MMS_PULL_TIMESTAMP_MILLIS_FIELD_NUMBER;
      public static final int OUTGOING_MMS_FIELD_NUMBER;
      public static final int OUTGOING_MMS_PULL_TIMESTAMP_MILLIS_FIELD_NUMBER;
      private static volatile Parser PARSER;
      private int bitField0_;
      private String buildFingerprint_;
      private long incomingMmsPullTimestampMillis_;
      private Internal$ProtobufList incomingMms_;
      private long outgoingMmsPullTimestampMillis_;
      private Internal$ProtobufList outgoingMms_;
/*
 * Declared Constructors.
 */
    private PersistMmsAtoms() { ... }
    static volatile void -$$Nest$maddAllIncomingMms(PersistMmsAtoms, Iterable) { ... }
    static volatile void -$$Nest$maddAllOutgoingMms(PersistMmsAtoms, Iterable) { ... }
    static volatile void -$$Nest$mclearIncomingMms(PersistMmsAtoms) { ... }
    static volatile void -$$Nest$mclearOutgoingMms(PersistMmsAtoms) { ... }
    static volatile void -$$Nest$msetBuildFingerprint(PersistMmsAtoms, String) { ... }
    static volatile void -$$Nest$msetIncomingMms(PersistMmsAtoms, int, IncomingMms) { ... }
    static volatile void -$$Nest$msetIncomingMmsPullTimestampMillis(PersistMmsAtoms, long) { ... }
    static volatile void -$$Nest$msetOutgoingMms(PersistMmsAtoms, int, OutgoingMms) { ... }
    static volatile void -$$Nest$msetOutgoingMmsPullTimestampMillis(PersistMmsAtoms, long) { ... }
    static volatile PersistMmsAtoms -$$Nest$sfgetDEFAULT_INSTANCE() { ... }
    private void addAllIncomingMms(Iterable) { ... }
    private void addAllOutgoingMms(Iterable) { ... }
    private void clearIncomingMms() { ... }
    private void clearOutgoingMms() { ... }
    protected final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke, Object, Object) { ... }
    private void ensureIncomingMmsIsMutable() { ... }
    private void ensureOutgoingMmsIsMutable() { ... }
    public String getBuildFingerprint() { ... }
    public IncomingMms getIncomingMms(int) { ... }
    public int getIncomingMmsCount() { ... }
    public List getIncomingMmsList() { ... }
    public long getIncomingMmsPullTimestampMillis() { ... }
    public OutgoingMms getOutgoingMms(int) { ... }
    public int getOutgoingMmsCount() { ... }
    public List getOutgoingMmsList() { ... }
    public long getOutgoingMmsPullTimestampMillis() { ... }
    public static PersistMmsAtoms$Builder newBuilder() { ... }
    public static PersistMmsAtoms parseFrom(byte[])  throws InvalidProtocolBufferException{ ... }
    private void setBuildFingerprint(String) { ... }
    private void setIncomingMms(int, IncomingMms) { ... }
    private void setIncomingMmsPullTimestampMillis(long) { ... }
    private void setOutgoingMms(int, OutgoingMms) { ... }
    private void setOutgoingMmsPullTimestampMillis(long) { ... }

} 