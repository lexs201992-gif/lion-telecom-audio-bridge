package com.motorola.odm.camera3.stats.profiler;
import java.lang.String;
import com.motorola.odm.camera3.stats.profiler.Profilers-IA;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.stats.profiler.GuardingProfiler;
import com.motorola.odm.camera3.stats.profiler.Profile;
import com.motorola.odm.camera3.stats.profiler.Writer;
import com.motorola.odm.camera3.stats.profiler.LoggingProfiler;

public class Profilers extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private final LoggingProfiler mDebugProfiler;
      private final LoggingProfiler mErrorProfiler;
      private final GuardingProfiler mGuardingProfiler;
      private final LoggingProfiler mInfoProfiler;
      private final LoggingProfiler mVerboseProfiler;
      private final LoggingProfiler mWarningProfiler;
      private static Writer sDebugWriter;
      private static Writer sErrorWriter;
      private static Writer sInfoWriter;
      private static Writer sVerboseWriter;
      private static Writer sWarningWriter;
/*
 * Declared Constructors.
 */
    private Profilers(LoggingProfiler, LoggingProfiler, LoggingProfiler, LoggingProfiler, LoggingProfiler, GuardingProfiler) { ... }
     Profilers(LoggingProfiler, LoggingProfiler, LoggingProfiler, LoggingProfiler, LoggingProfiler, GuardingProfiler, Profilers-IA) { ... }
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    static volatile Writer -$$Nest$sfgetsDebugWriter() { ... }
    static volatile Writer -$$Nest$sfgetsErrorWriter() { ... }
    static volatile Writer -$$Nest$sfgetsInfoWriter() { ... }
    static volatile Writer -$$Nest$sfgetsVerboseWriter() { ... }
    static volatile Writer -$$Nest$sfgetsWarningWriter() { ... }
    public GuardingProfiler guard() { ... }
    public Profile guard(String) { ... }
    public static Profilers instance() { ... }

} 