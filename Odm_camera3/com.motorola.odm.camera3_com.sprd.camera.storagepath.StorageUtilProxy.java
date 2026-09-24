package com.sprd.camera.storagepath;
import java.lang.String;
import android.content.Context;
import java.lang.Class;
import java.io.File;
import android.os.storage.StorageManager;
import java.lang.reflect.Field;
import com.motorola.odm.camera3.CameraActivity;

public class StorageUtilProxy extends Object
{
/*
 * Field Definitions.
 */
      private static boolean NEW_SDK_VERSION;
      private static boolean OLD_SDK_VERSION;
      private static Context content;
      private static Class environmentClazz;
      private static Class environmentExClazz;
      private static String mExternalState;
      private static String mInternalState;
      private static long mLastExternalStateGetTime;
      private static long mLastInternalStateGetTime;
      private static StorageManager storageManager;
/*
 * Declared Constructors.
 */
    public static void addContext(Context) { ... }
    public static File getExternalStoragePath() { ... }
    public static synchronized String getExternalStoragePathState() { ... }
    private static Field getField(Class, String) { ... }
    public static File getFile(boolean) { ... }
    public static File getInternalStoragePath() { ... }
    public static synchronized String getInternalStoragePathState() { ... }
    public static File getSecondaryStorageDirectory() { ... }
    public static String getState(boolean) { ... }
    public static String getUsbdiskVolumeState(File) { ... }
    public static boolean isVFat(CameraActivity) { ... }

} 