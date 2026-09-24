package com.motorola.odm.camera3;
import com.motorola.odm.camera3.MediaSaverImpl;
import android.location.Location;
import com.motorola.odm.camera3.exif.ExifInterface;
import java.lang.Object;
import java.lang.Void;
import com.motorola.odm.camera3.app.MediaSaver$OnMediaSavedListener;
import android.net.Uri;
import java.lang.String;
import android.content.ContentResolver;

private class MediaSaverImpl$ImageUpdateTask extends AsyncTask
{
/*
 * Field Definitions.
 */
      private final byte[] data;
      private final long date;
      private final ExifInterface exif;
      private int height;
      private final MediaSaver$OnMediaSavedListener listener;
      private final Location loc;
      private final String mimeType;
      private final int orientation;
      private final String photoVoicePath;
      private final ContentResolver resolver;
      final MediaSaverImpl this$0;
      private final String title;
      private final Uri uri;
      private int width;
/*
 * Declared Constructors.
 */
    public MediaSaverImpl$ImageUpdateTask(MediaSaverImpl, byte[], String, long, Location, int, int, int, String, ExifInterface, ContentResolver, MediaSaver$OnMediaSavedListener, String, Uri) { ... }
    protected volatile Object doInBackground(Object[]) { ... }
    protected transient Void doInBackground(Void[]) { ... }
    protected volatile void onPostExecute(Object) { ... }
    protected void onPostExecute(Void) { ... }
    protected void onPreExecute() { ... }

} 