package com.motorola.odm.camera3.debug;
import java.lang.Object;
import java.lang.Throwable;
import java.lang.String;
import com.motorola.odm.camera3.debug.Log$Tag;

public class Log extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private static boolean isDebuggable;
      private static boolean sSuppressForTesting;
/*
 * Declared Constructors.
 */
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    public static void d(Log$Tag, String) { ... }
    public static void d(Log$Tag, String, Throwable) { ... }
    public static void e(Log$Tag, Object, String) { ... }
    public static void e(Log$Tag, String) { ... }
    public static void e(Log$Tag, String, Throwable) { ... }
    public static void i(Log$Tag, Object, String) { ... }
    public static void i(Log$Tag, String) { ... }
    public static void i(Log$Tag, String, Throwable) { ... }
    private static boolean isDebugOsBuild() { ... }
    private static boolean isLoggable(Log$Tag, int) { ... }
    private static boolean shouldLog(Log$Tag, int) { ... }
    public static void v(Log$Tag, String) { ... }
    public static void w(Log$Tag, String) { ... }
    public static void w(Log$Tag, String, Throwable) { ... }

} 