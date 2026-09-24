package com.android.server.telecom;
import android.telecom.Logging.EventManager$EventRecord$EventTiming;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.LinkedList;
import android.telephony.SubscriptionInfo;
import java.util.List;
import com.android.server.telecom.nano.TelecomLogClass$CallLog;
import com.android.server.telecom.nano.TelecomLogClass$EventTimingEntry;
import java.util.Map;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.telecom.nano.TelecomLogClass$Event;
import android.telecom.TelecomAnalytics;
import android.telecom.TelecomAnalytics$SessionTiming;
import com.android.server.telecom.nano.TelecomLogClass$LogSessionTiming;
import com.android.server.telecom.Analytics$CallInfo;
import java.io.PrintWriter;
import java.lang.Object;
import java.lang.String;
import java.util.Map$Entry;
import android.content.Context;

public class Analytics extends Object
{
/*
 * Field Definitions.
 */
      private static final LinkedList sActiveCallIds;
      private static final Map sCallIdToInfo;
      private static final LinkedBlockingDeque sDumpTimes;
      private static final Object sLock;
      public static final Map sLogEventTimingToAnalyticsEventTiming;
      public static final Map sLogEventToAnalyticsEvent;
      public static final Map sLogSessionToSessionId;
      public static final Map sSessionIdToLogSession;
      private static final List sSessionTimings;
/*
 * Declared Constructors.
 */
    public static void $r8$lambda$2-iGCKP5ZxEy5kn651Pxj7GR8Vo(IndentingPrintWriter, Map$Entry) { ... }
    public static TelecomLogClass$LogSessionTiming[] $r8$lambda$Dcf7SYBJJASH1aRihK2rGSZGP0s(int) { ... }
    public static TelecomLogClass$LogSessionTiming $r8$lambda$ScwdRAkhLTwXmic5cJfbF5VnZRA(TelecomAnalytics$SessionTiming) { ... }
    public static TelecomLogClass$CallLog[] $r8$lambda$Ta00FJnEZu6OIIKGxsoz4I57KdA(int) { ... }
    public static boolean $r8$lambda$V42PQWQELQguZQcVn-BFRoSouoM(Map$Entry) { ... }
    public static int $r8$lambda$YqEIUnJTlubjNrUqeLzi-0aFtfY(SubscriptionInfo) { ... }
    public static int $r8$lambda$nnzCkwyrVBa9xy5fr_q6B7A5atA(int, String, String) { ... }
    static volatile TelecomLogClass$Event[] -$$Nest$smconvertLogEventsToProtoEvents(List) { ... }
    static volatile TelecomLogClass$EventTimingEntry -$$Nest$smlogEventTimingToProtoEventTiming(EventManager$EventRecord$EventTiming) { ... }
    public static void addSessionTiming(String, long) { ... }
    public static Map cloneData() { ... }
    private static TelecomLogClass$Event[] convertLogEventsToProtoEvents(List) { ... }
    public static void dump(IndentingPrintWriter) { ... }
    public static void dumpToEncodedProto(Context, PrintWriter, String[]) { ... }
    public static TelecomAnalytics dumpToParcelableAnalytics() { ... }
    private static int getCarrierId(Context) { ... }
    public static Analytics$CallInfo initiateCallAnalytics(String, int) { ... }
    private static int lambda$dump$3(int, String, String) { ... }
    private static boolean lambda$dump$4(Map$Entry) { ... }
    private static void lambda$dump$5(IndentingPrintWriter, Map$Entry) { ... }
    private static TelecomLogClass$CallLog[] lambda$dumpToEncodedProto$0(int) { ... }
    private static TelecomLogClass$LogSessionTiming lambda$dumpToEncodedProto$1(TelecomAnalytics$SessionTiming) { ... }
    private static TelecomLogClass$LogSessionTiming[] lambda$dumpToEncodedProto$2(int) { ... }
    private static TelecomLogClass$EventTimingEntry logEventTimingToProtoEventTiming(EventManager$EventRecord$EventTiming) { ... }
    public static void noteDumpTime() { ... }
    public static long roundToOneSigFig(long) { ... }
    private static int scoreSubscriptionInfo(SubscriptionInfo) { ... }

} 