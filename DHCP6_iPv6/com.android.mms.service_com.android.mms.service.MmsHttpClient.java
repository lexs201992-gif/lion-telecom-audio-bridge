package com.android.mms.service;
import java.lang.StringBuilder;
import java.util.regex.Pattern;
import android.telephony.TelephonyManager;
import android.net.ConnectivityManager;
import android.content.Context;
import java.net.HttpURLConnection;
import android.os.Bundle;
import java.util.Map;
import com.android.mms.service.exception.MmsHttpException;
import java.util.Locale;
import java.net.URL;
import android.net.Network;
import java.lang.String;
import com.unisoc.mms.service.UniAbsVowifiUtils;

public class MmsHttpClient extends Object
{
/*
 * Field Definitions.
 */
      private static final Pattern MACRO_P;
      private final ConnectivityManager mConnectivityManager;
      private final Context mContext;
      private final Network mNetwork;
      private UniAbsVowifiUtils mUniAbsVowifiUtils;
/*
 * Declared Constructors.
 */
    public MmsHttpClient(Context, Network, ConnectivityManager) { ... }
    public MmsHttpClient(Context, UniAbsVowifiUtils, ConnectivityManager) { ... }
    private void addExtraHeaders(HttpURLConnection, Bundle, int) { ... }
    private static void addLocaleToHttpAcceptLanguage(StringBuilder, Locale) { ... }
    private static void checkMethod(String)  throws MmsHttpException{ ... }
    private static String convertObsoleteLanguageCodeToNew(String) { ... }
    public byte[] execute(String, byte[], String, boolean, String, int, Bundle, int, String)  throws MmsHttpException{ ... }
    public static String getCurrentAcceptLanguage(Locale) { ... }
    public static String getMacroValue(Context, String, Bundle, int) { ... }
    private static String getNai(TelephonyManager, Bundle) { ... }
    private static String getPhoneNumberForMacroLine1(TelephonyManager, Context, int) { ... }
    private static void logHttpHeaders(Map, String) { ... }
    private void maybeWaitForIpv4(String, URL) { ... }
    public static String redactUrlForNonVerbose(String) { ... }
    private static String resolveMacro(Context, String, Bundle, int) { ... }

} 