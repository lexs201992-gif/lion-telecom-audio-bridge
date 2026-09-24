package com.android.printspooler.util;
import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;

public final class BitmapSerializeUtils extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    private static native void nativeReadBitmapPixels(Bitmap, int) { ... }
    private static native void nativeWriteBitmapPixels(Bitmap, int) { ... }
    public static void readBitmapPixels(Bitmap, ParcelFileDescriptor) { ... }
    public static void writeBitmapPixels(Bitmap, ParcelFileDescriptor) { ... }

} 