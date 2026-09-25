package com.android.mms.service;
import android.app.PendingIntent;
import com.android.mms.service.MmsRequest$RequestManager;
import android.content.Context;
import com.android.mms.service.ApnSettings;
import android.os.Bundle;
import com.android.mms.service.exception.MmsHttpException;
import com.android.mms.service.MmsNetworkManager;
import android.content.Intent;
import android.net.Uri;
import java.lang.String;
import com.android.mms.service.metrics.MmsStats;

public class DownloadRequest extends MmsRequest
{
/*
 * Field Definitions.
 */
      private final int mCallingUser;
      private final Uri mContentUri;
      private final PendingIntent mDownloadedIntent;
      private final String mLocationUrl;
/*
 * Declared Constructors.
 */
    public DownloadRequest(MmsRequest$RequestManager, int, String, Uri, PendingIntent, int, String, Bundle, Context, long, MmsStats) { ... }
    static volatile Uri -$$Nest$fgetmContentUri(DownloadRequest) { ... }
    static volatile String -$$Nest$fgetmLocationUrl(DownloadRequest) { ... }
    protected byte[] doHttp(Context, MmsNetworkManager, ApnSettings)  throws MmsHttpException{ ... }
    protected int getMmsExceptionEvent() { ... }
    protected PendingIntent getPendingIntent() { ... }
    protected int getQueueType() { ... }
    private void notifyOfDownload(Context) { ... }
    protected Uri persistIfRequired(Context, int, byte[]) { ... }
    protected boolean prepareForHttpRequest() { ... }
    protected void revokeUriPermission(Context) { ... }
    protected boolean transferResponse(Intent, byte[]) { ... }
    public void tryDownloadingByCarrierApp(Context, String) { ... }

} 