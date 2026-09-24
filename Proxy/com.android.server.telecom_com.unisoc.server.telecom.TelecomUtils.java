package com.unisoc.server.telecom;
import java.lang.String;
import android.content.Context;
import android.telecom.PhoneAccountHandle;

public class TelecomUtils extends Object
{
/*
 * Field Definitions.
 */
      private static final String TAG;
/*
 * Declared Constructors.
 */
    public TelecomUtils() { ... }
    public static int getSubIdForPhoneAccountHandle(Context, PhoneAccountHandle) { ... }
    public static int getValueByCarrierConfig(Context, int, String) { ... }
    public static boolean isSupportByCarrierConfig(Context, int, String) { ... }

} 