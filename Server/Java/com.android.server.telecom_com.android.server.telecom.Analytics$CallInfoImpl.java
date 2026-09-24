package com.android.server.telecom;
import com.android.server.telecom.nano.TelecomLogClass$CallLog;
import com.android.server.telecom.nano.TelecomLogClass$VideoEvent;
import android.telecom.ParcelableCallAnalytics$AnalyticsEvent;
import java.util.List;
import android.telecom.ParcelableCallAnalytics;
import android.telecom.ParcelableCallAnalytics$EventTiming;
import com.android.server.telecom.nano.TelecomLogClass$Event;
import android.telecom.Logging.EventManager$EventRecord$EventTiming;
import android.telecom.ParcelableCallAnalytics$VideoEvent;
import android.telecom.Logging.EventManager$EventRecord;
import android.telecom.DisconnectCause;
import java.lang.String;
import com.android.server.telecom.nano.TelecomLogClass$EventTimingEntry;

public static class Analytics$CallInfoImpl extends Analytics$CallInfo
{
/*
 * Field Definitions.
 */
      public int callDirection;
      public EventManager$EventRecord callEvents;
      public String callId;
      public int callProperties;
      public int callSource;
      public int callTechnologies;
      public DisconnectCause callTerminationReason;
      public String connectionService;
      public boolean createdFromExistingConnection;
      public long endTime;
      public List inCallServiceInfos;
      public boolean isAdditionalCall;
      public boolean isEmergency;
      public boolean isInterrupted;
      public boolean isVideo;
      private long mTimeOfLastVideoEvent;
      public long missedReason;
      public long startTime;
      public List videoEvents;
/*
 * Declared Constructors.
 */
     Analytics$CallInfoImpl(Analytics$CallInfoImpl) { ... }
     Analytics$CallInfoImpl(String, int) { ... }
    public static ParcelableCallAnalytics$AnalyticsEvent $r8$lambda$1DEpRVXY4kmBrWyE5W7rJT-cC1A(TelecomLogClass$Event) { ... }
    public static TelecomLogClass$EventTimingEntry $r8$lambda$JHEDoGNcxG6IJTZC83LzFPsUoC4(EventManager$EventRecord$EventTiming) { ... }
    public static ParcelableCallAnalytics$EventTiming $r8$lambda$ZM3WKuLA9QYOF8nIqrqrZu9EDcY(TelecomLogClass$EventTimingEntry) { ... }
    public static TelecomLogClass$EventTimingEntry[] $r8$lambda$c1tY-AGtZrAP_ERBrVIpQPXs5qY(int) { ... }
    public static ParcelableCallAnalytics$VideoEvent $r8$lambda$zeth___SbnIBxGWxIh3Mcqm969E(TelecomLogClass$VideoEvent) { ... }
    public void addCallProperties(int) { ... }
    public void addCallTechnology(int) { ... }
    public void addInCallService(String, int, long, boolean) { ... }
    public void addVideoEvent(int, int) { ... }
    private String getCallDirectionString() { ... }
    private String getCallDisconnectReasonString() { ... }
    private String getCallSourceString() { ... }
    private String getCallTechnologiesAsString() { ... }
    private String getInCallServicesString() { ... }
    private String getMissedReasonString() { ... }
    private static ParcelableCallAnalytics$AnalyticsEvent lambda$toParcelableAnalytics$0(TelecomLogClass$Event) { ... }
    private static ParcelableCallAnalytics$EventTiming lambda$toParcelableAnalytics$1(TelecomLogClass$EventTimingEntry) { ... }
    private static ParcelableCallAnalytics$VideoEvent lambda$toParcelableAnalytics$2(TelecomLogClass$VideoEvent) { ... }
    private static TelecomLogClass$EventTimingEntry[] lambda$toProto$3(int) { ... }
    public void setCallConnectionService(String) { ... }
    public void setCallDisconnectCause(DisconnectCause) { ... }
    public void setCallEndTime(long) { ... }
    public void setCallEvents(EventManager$EventRecord) { ... }
    public void setCallIsAdditional(boolean) { ... }
    public void setCallIsEmergency(boolean) { ... }
    public void setCallIsInterrupted(boolean) { ... }
    public void setCallIsVideo(boolean) { ... }
    public void setCallSource(int) { ... }
    public void setCallStartTime(long) { ... }
    public void setCreatedFromExistingConnection(boolean) { ... }
    public void setMissedReason(long) { ... }
    public ParcelableCallAnalytics toParcelableAnalytics() { ... }
    public TelecomLogClass$CallLog toProto() { ... }
    public String toString() { ... }

} 