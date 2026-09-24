package com.android.server.telecom;
import java.lang.String;
import android.util.LocalLog;
import com.android.server.telecom.CarModeTracker$CarModeApp;
import java.util.List;
import com.android.internal.util.IndentingPrintWriter;
import java.util.PriorityQueue;

public class CarModeTracker extends Object
{
/*
 * Field Definitions.
 */
      private PriorityQueue mCarModeApps;
      private final LocalLog mCarModeChangeLog;
/*
 * Declared Constructors.
 */
    public CarModeTracker() { ... }
    public static boolean $r8$lambda$50WO1BrydxOJUc7b9YYMfmSqlZE(String, CarModeTracker$CarModeApp) { ... }
    public static boolean $r8$lambda$MKEldZRU-4CqrSsjcCMnyutJVqA(int, CarModeTracker$CarModeApp) { ... }
    public static boolean $r8$lambda$N9EKh6VeZwl3mJ4ldiDSVpuFWtw(int, CarModeTracker$CarModeApp) { ... }
    public static boolean $r8$lambda$PjcWBHGPUl7q4sZGxiGUqa2A-WM(String, int, CarModeTracker$CarModeApp) { ... }
    public static boolean $r8$lambda$UZxBgVMG5gNRt21JMFllJ_MGWFU(String, CarModeTracker$CarModeApp) { ... }
    public static boolean $r8$lambda$rYm7EeoFiYW8J2B5B3tUlOhMRng(int, CarModeTracker$CarModeApp) { ... }
    public static boolean $r8$lambda$xgSnjvnYb3-q7QmhcQXIWZUCS74(String, CarModeTracker$CarModeApp) { ... }
    public void dump(IndentingPrintWriter) { ... }
    public void forceRemove(String) { ... }
    public List getCarModeApps() { ... }
    private String getCarModePriorityString() { ... }
    public String getCurrentCarModePackage() { ... }
    public void handleEnterCarMode(int, String) { ... }
    public void handleExitCarMode(int, String) { ... }
    public void handleReleaseAutomotiveProjection() { ... }
    public void handleSetAutomotiveProjection(String) { ... }
    public boolean isInCarMode() { ... }
    private static boolean lambda$forceRemove$5(String, CarModeTracker$CarModeApp) { ... }
    private static boolean lambda$forceRemove$6(String, CarModeTracker$CarModeApp) { ... }
    private static boolean lambda$handleEnterCarMode$0(int, CarModeTracker$CarModeApp) { ... }
    private static boolean lambda$handleEnterCarMode$1(String, CarModeTracker$CarModeApp) { ... }
    private static boolean lambda$handleExitCarMode$2(int, CarModeTracker$CarModeApp) { ... }
    private static boolean lambda$handleExitCarMode$3(String, int, CarModeTracker$CarModeApp) { ... }
    private static boolean lambda$handleExitCarMode$4(int, CarModeTracker$CarModeApp) { ... }

} 