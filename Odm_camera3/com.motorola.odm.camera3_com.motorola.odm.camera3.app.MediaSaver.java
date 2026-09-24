package com.motorola.odm.camera3.app;
import com.motorola.odm.camera3.app.MediaSaver$Listener;
import com.motorola.odm.camera3.util.XmpBuilder;
import android.content.ContentValues;
import android.location.Location;
import com.motorola.odm.camera3.exif.ExifInterface;
import com.motorola.odm.camera3.app.MediaSaver$OnMediaSavedListener;
import android.net.Uri;
import com.motorola.odm.camera3.app.MediaSaver$QueueListener;
import java.lang.String;

public abstract interface MediaSaver
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener) { ... }
    public abstract void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String) { ... }
    public abstract void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String, String) { ... }
    public abstract void addImage(byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String, String, XmpBuilder) { ... }
    public abstract void addImage(byte[], String, long, Location, int, ExifInterface, MediaSaver$OnMediaSavedListener) { ... }
    public abstract void addMemoryUse(long) { ... }
    public abstract void addVideo(String, ContentValues, MediaSaver$OnMediaSavedListener) { ... }
    public abstract void clearMemoryUse() { ... }
    public abstract boolean isEmptyQueue() { ... }
    public abstract boolean isQueueFull() { ... }
    public abstract void reduceMemoryUse(long) { ... }
    public abstract void setListener(MediaSaver$Listener) { ... }
    public abstract void setQueueListener(MediaSaver$QueueListener) { ... }
    public abstract void updateImage(Uri, byte[], String, long, Location, int, int, int, ExifInterface, MediaSaver$OnMediaSavedListener, String, String) { ... }

} 