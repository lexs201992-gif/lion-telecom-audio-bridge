package com.google.lens.sdk;
import java.lang.Runnable;
import com.google.lens.sdk.LensApi$LensLaunchStatusCallback;
import android.app.KeyguardManager;
import android.content.Context;
import android.app.Activity;
import com.google.lens.sdk.LensApi$LensAvailabilityCallback;
import java.lang.String;
import android.net.Uri;
import com.google.lens.sdk.PendingIntentConsumer;
import android.graphics.Bitmap;

public class LensApi extends Object
{
/*
 * Field Definitions.
 */
      static final Uri a;
      public static final int b;
      private final al c;
      private final aq d;
      private final KeyguardManager e;
/*
 * Declared Constructors.
 */
    public LensApi(Context) { ... }
    public final void a(Activity) { ... }
    public final void a(Activity, bs) { ... }
    private final void a(Activity, LensApi$LensLaunchStatusCallback, Runnable) { ... }
    public final void a(bs) { ... }
    public final boolean a(Bitmap, bs) { ... }
    public final boolean a(bs, PendingIntentConsumer) { ... }
    private final boolean a(String) { ... }
    public void checkArStickersAvailability(LensApi$LensAvailabilityCallback) { ... }
    public void checkLensAvailability(LensApi$LensAvailabilityCallback) { ... }
    public void checkPendingIntentAvailability(LensApi$LensAvailabilityCallback) { ... }
    public void checkPostCaptureAvailability(LensApi$LensAvailabilityCallback) { ... }
    public void launchLensActivity(Activity) { ... }
    public void launchLensActivity(Activity, int) { ... }
    public void launchLensActivity(Activity, LensApi$LensLaunchStatusCallback) { ... }
    public boolean launchLensActivityWithBitmap(Bitmap) { ... }
    public boolean launchLensActivityWithBitmapForTranslate(Bitmap) { ... }
    public void onPause() { ... }
    public void onResume() { ... }
    public boolean requestLensActivityPendingIntent(PendingIntentConsumer) { ... }
    public boolean requestLensActivityPendingIntentWithBitmap(Bitmap, PendingIntentConsumer) { ... }
    public boolean requestLensActivityPendingIntentWithBitmapUri(Context, Uri, PendingIntentConsumer) { ... }

} 