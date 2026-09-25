package com.android.mms;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import java.lang.Object;
import com.google.protobuf.Parser;
import com.android.mms.OutgoingMms$Builder;

public final class OutgoingMms extends GeneratedMessageLite
{
/*
 * Field Definitions.
 */
      public static final int AVG_INTERVAL_MILLIS_FIELD_NUMBER;
      public static final int CARRIER_ID_FIELD_NUMBER;
      private static final OutgoingMms DEFAULT_INSTANCE;
      public static final int HANDLED_BY_CARRIER_APP_FIELD_NUMBER;
      public static final int IS_ESIM_FIELD_NUMBER;
      public static final int IS_FROM_DEFAULT_APP_FIELD_NUMBER;
      public static final int IS_MANAGED_PROFILE_FIELD_NUMBER;
      public static final int IS_MULTI_SIM_FIELD_NUMBER;
      public static final int MMS_COUNT_FIELD_NUMBER;
      private static volatile Parser PARSER;
      public static final int RAT_FIELD_NUMBER;
      public static final int RESULT_FIELD_NUMBER;
      public static final int RETRY_ID_FIELD_NUMBER;
      public static final int ROAMING_FIELD_NUMBER;
      public static final int SIM_SLOT_INDEX_FIELD_NUMBER;
      private long avgIntervalMillis_;
      private int bitField0_;
      private int carrierId_;
      private boolean handledByCarrierApp_;
      private boolean isEsim_;
      private boolean isFromDefaultApp_;
      private boolean isManagedProfile_;
      private boolean isMultiSim_;
      private long mmsCount_;
      private int rat_;
      private int result_;
      private int retryId_;
      private int roaming_;
      private int simSlotIndex_;
/*
 * Declared Constructors.
 */
    private OutgoingMms() { ... }
    static volatile void -$$Nest$msetAvgIntervalMillis(OutgoingMms, long) { ... }
    static volatile void -$$Nest$msetCarrierId(OutgoingMms, int) { ... }
    static volatile void -$$Nest$msetHandledByCarrierApp(OutgoingMms, boolean) { ... }
    static volatile void -$$Nest$msetIsEsim(OutgoingMms, boolean) { ... }
    static volatile void -$$Nest$msetIsFromDefaultApp(OutgoingMms, boolean) { ... }
    static volatile void -$$Nest$msetIsManagedProfile(OutgoingMms, boolean) { ... }
    static volatile void -$$Nest$msetIsMultiSim(OutgoingMms, boolean) { ... }
    static volatile void -$$Nest$msetMmsCount(OutgoingMms, long) { ... }
    static volatile void -$$Nest$msetRat(OutgoingMms, int) { ... }
    static volatile void -$$Nest$msetResult(OutgoingMms, int) { ... }
    static volatile void -$$Nest$msetRetryId(OutgoingMms, int) { ... }
    static volatile void -$$Nest$msetRoaming(OutgoingMms, int) { ... }
    static volatile void -$$Nest$msetSimSlotIndex(OutgoingMms, int) { ... }
    static volatile OutgoingMms -$$Nest$sfgetDEFAULT_INSTANCE() { ... }
    protected final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke, Object, Object) { ... }
    public long getAvgIntervalMillis() { ... }
    public int getCarrierId() { ... }
    public boolean getHandledByCarrierApp() { ... }
    public boolean getIsEsim() { ... }
    public boolean getIsFromDefaultApp() { ... }
    public boolean getIsManagedProfile() { ... }
    public boolean getIsMultiSim() { ... }
    public long getMmsCount() { ... }
    public int getRat() { ... }
    public int getResult() { ... }
    public int getRetryId() { ... }
    public int getRoaming() { ... }
    public int getSimSlotIndex() { ... }
    public static OutgoingMms$Builder newBuilder() { ... }
    private void setAvgIntervalMillis(long) { ... }
    private void setCarrierId(int) { ... }
    private void setHandledByCarrierApp(boolean) { ... }
    private void setIsEsim(boolean) { ... }
    private void setIsFromDefaultApp(boolean) { ... }
    private void setIsManagedProfile(boolean) { ... }
    private void setIsMultiSim(boolean) { ... }
    private void setMmsCount(long) { ... }
    private void setRat(int) { ... }
    private void setResult(int) { ... }
    private void setRetryId(int) { ... }
    private void setRoaming(int) { ... }
    private void setSimSlotIndex(int) { ... }

} 