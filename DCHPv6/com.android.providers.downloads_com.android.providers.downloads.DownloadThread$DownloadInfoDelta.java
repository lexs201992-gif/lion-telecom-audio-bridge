package com.android.providers.downloads;
import java.lang.String;
import com.android.providers.downloads.DownloadThread;
import com.android.providers.downloads.StopRequestException;
import com.android.providers.downloads.DownloadInfo;
import android.content.ContentValues;

private class DownloadThread$DownloadInfoDelta extends Object
{
/*
 * Field Definitions.
 */
      public long mCurrentBytes;
      public String mETag;
      public String mErrorMsg;
      public String mFileName;
      public String mMimeType;
      public int mNumFailed;
      public int mRetryAfter;
      public int mStatus;
      public long mTotalBytes;
      public String mUri;
      final DownloadThread this$0;
/*
 * Declared Constructors.
 */
    public DownloadThread$DownloadInfoDelta(DownloadThread, DownloadInfo) { ... }
    private ContentValues buildContentValues() { ... }
    public void writeToDatabase() { ... }
    public void writeToDatabaseOrThrow()  throws StopRequestException{ ... }

} 