package com.android.server.telecom;
import java.lang.String;
import android.telecom.DisconnectCause;
import android.telecom.Logging.EventManager$EventRecord;

public static class Analytics$CallInfo extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public Analytics$CallInfo() { ... }
    public void addCallProperties(int) { ... }
    public void addCallTechnology(int) { ... }
    public void addInCallService(String, int, long, boolean) { ... }
    public void addVideoEvent(int, int) { ... }
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

} 