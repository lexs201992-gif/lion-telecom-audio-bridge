package com.android.mms.service;
import com.android.mms.service.exception.ApnException;
import java.lang.String;
import android.content.Context;
import android.database.Cursor;

public class ApnSettings extends Object
{
/*
 * Field Definitions.
 */
      private static final String[] APN_PROJECTION;
      private final String mDebugText;
      private final String mProxyAddress;
      private final int mProxyPort;
      private final String mServiceCenter;
/*
 * Declared Constructors.
 */
    public ApnSettings(String, String, int, String) { ... }
    private static ApnSettings getApnSettingsFromCursor(Cursor, String)  throws ApnException{ ... }
    private static String getDebugText(Cursor) { ... }
    public String getMmscUrl() { ... }
    public String getProxyAddress() { ... }
    public int getProxyPort() { ... }
    public boolean isProxySet() { ... }
    private static boolean isValidApnType(String, String) { ... }
    public static ApnSettings load(Context, String, int, String)  throws ApnException{ ... }
    public String toString() { ... }
    private static String trimWithNullCheck(String) { ... }

} 