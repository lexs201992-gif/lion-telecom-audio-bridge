package com.motorola.odm.camera3.data;
import com.motorola.odm.camera3.data.VideoDataFactory;
import android.net.Uri;
import android.content.Context;
import com.motorola.odm.camera3.debug.Log$Tag;
import android.database.Cursor;
import com.motorola.odm.camera3.data.VideoItem;
import com.motorola.odm.camera3.data.FilmstripItem;
import android.content.ContentResolver;

public class VideoItemFactory extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private final ContentResolver mContentResolver;
      private final Context mContext;
      private final VideoDataFactory mVideoDataFactory;
/*
 * Declared Constructors.
 */
    public VideoItemFactory(Context, ContentResolver, VideoDataFactory) { ... }
    public volatile FilmstripItem get(Cursor) { ... }
    public VideoItem get(Cursor) { ... }
    public VideoItem get(Uri) { ... }

} 