package com.android.server.telecom;
import com.android.server.telecom.CallerInfoLookupHelper$OnQueryCompleteListener;
import android.os.Handler;
import com.android.server.telecom.CallerInfoAsyncQueryFactory;
import java.util.concurrent.CompletableFuture;
import android.content.Context;
import android.telecom.CallerInfoAsyncQuery$OnQueryCompleteListener;
import com.android.server.telecom.ContactsAsyncHelper$OnImageLoadCompleteListener;
import android.graphics.drawable.Drawable;
import com.android.server.telecom.ContactsAsyncHelper;
import java.util.Map;
import java.lang.Object;
import android.telecom.CallerInfo;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import android.net.Uri;
import android.graphics.Bitmap;

public class CallerInfoLookupHelper extends Object
{
/*
 * Field Definitions.
 */
      private final CallerInfoAsyncQueryFactory mCallerInfoAsyncQueryFactory;
      private final ContactsAsyncHelper mContactsAsyncHelper;
      private final Context mContext;
      private final Handler mHandler;
      private final TelecomSystem$SyncRoot mLock;
      private final Map mQueryEntries;
/*
 * Declared Constructors.
 */
    public CallerInfoLookupHelper(Context, CallerInfoAsyncQueryFactory, ContactsAsyncHelper, TelecomSystem$SyncRoot) { ... }
    public static void $r8$lambda$jzA9_8jQ001LUh6zDrrC9bEDq40(CallerInfoLookupHelper, Uri, int, Object, CallerInfo) { ... }
    public static void $r8$lambda$zznqvA7BFVBoq2NeEdy7vhH1vQc(CallerInfoLookupHelper, Uri, int, Drawable, Bitmap, Object) { ... }
    static volatile CallerInfoAsyncQueryFactory -$$Nest$fgetmCallerInfoAsyncQueryFactory(CallerInfoLookupHelper) { ... }
    static volatile ContactsAsyncHelper -$$Nest$fgetmContactsAsyncHelper(CallerInfoLookupHelper) { ... }
    static volatile Context -$$Nest$fgetmContext(CallerInfoLookupHelper) { ... }
    static volatile CallerInfoAsyncQuery$OnQueryCompleteListener -$$Nest$mmakeCallerInfoQueryListener(CallerInfoLookupHelper, Uri) { ... }
    static volatile ContactsAsyncHelper$OnImageLoadCompleteListener -$$Nest$mmakeContactPhotoListener(CallerInfoLookupHelper, Uri) { ... }
    public Map getCallerInfoEntries() { ... }
    public Handler getHandler() { ... }
    private void lambda$makeCallerInfoQueryListener$0(Uri, int, Object, CallerInfo) { ... }
    private void lambda$makeContactPhotoListener$1(Uri, int, Drawable, Bitmap, Object) { ... }
    private CallerInfoAsyncQuery$OnQueryCompleteListener makeCallerInfoQueryListener(Uri) { ... }
    private ContactsAsyncHelper$OnImageLoadCompleteListener makeContactPhotoListener(Uri) { ... }
    public CompletableFuture startLookup(Uri) { ... }
    public void startLookup(Uri, CallerInfoLookupHelper$OnQueryCompleteListener) { ... }
    private void startPhotoLookup(Uri, Uri) { ... }

} 