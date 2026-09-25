package com.android.server.am;
import java.lang.String;
import android.content.ComponentName;

public final class HostingRecord extends Object
{
/*
 * Field Definitions.
 */
      private final String mAction;
      private final String mDefiningPackageName;
      private final String mDefiningProcessName;
      private final int mDefiningUid;
      private final String mHostingName;
      private final String mHostingType;
      private final int mHostingZygote;
      private final boolean mIsTopApp;
      private final String mTriggerType;
/*
 * Declared Constructors.
 */
    public HostingRecord(String) { ... }
    public HostingRecord(String, ComponentName) { ... }
    private HostingRecord(String, ComponentName, int) { ... }
    public HostingRecord(String, ComponentName, String, int, String, String) { ... }
    public HostingRecord(String, ComponentName, boolean) { ... }
    public HostingRecord(String, String) { ... }
    private HostingRecord(String, String, int) { ... }
    private HostingRecord(String, String, int, String, int, boolean, String, String, String) { ... }
    public static HostingRecord byAppZygote(ComponentName, String, int, String) { ... }
    public static HostingRecord byWebviewZygote(ComponentName, String, int, String) { ... }
    public String getAction() { ... }
    public String getDefiningPackageName() { ... }
    public String getDefiningProcessName() { ... }
    public int getDefiningUid() { ... }
    public static int getHostingTypeIdStatsd(String) { ... }
    public String getName() { ... }
    public String getTriggerType() { ... }
    public static int getTriggerTypeForStatsd(String) { ... }
    public String getType() { ... }
    public boolean isTopApp() { ... }
    public boolean usesAppZygote() { ... }
    public boolean usesWebviewZygote() { ... }

} 