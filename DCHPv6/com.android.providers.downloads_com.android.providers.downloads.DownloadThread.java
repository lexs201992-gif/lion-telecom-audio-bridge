package com.android.providers.downloads;
import java.io.FileDescriptor;
import android.app.job.JobParameters;
import com.android.providers.downloads.DownloadJobService;
import java.io.OutputStream;
import android.os.storage.StorageManager;
import com.android.providers.downloads.DownloadInfo;
import android.net.INetworkPolicyListener;
import java.io.IOException;
import android.net.Network;
import java.net.URLConnection;
import com.android.providers.downloads.DownloadThread$DownloadInfoDelta;
import java.lang.Throwable;
import com.android.providers.downloads.SystemFacade;
import java.io.InputStream;
import android.net.NetworkPolicyManager;
import com.android.providers.downloads.StopRequestException;
import java.net.HttpURLConnection;
import java.lang.String;
import com.android.providers.downloads.DownloadNotifier;
import android.content.Context;

public class DownloadThread extends Thread
{
/*
 * Field Definitions.
 */
      private final Context mContext;
      private final long mId;
      private boolean mIgnoreBlocked;
      private final DownloadInfo mInfo;
      private final DownloadThread$DownloadInfoDelta mInfoDelta;
      private final DownloadJobService mJobService;
      private long mLastUpdateBytes;
      private long mLastUpdateTime;
      private boolean mMadeProgress;
      private Network mNetwork;
      private final NetworkPolicyManager mNetworkPolicy;
      private final DownloadNotifier mNotifier;
      private final JobParameters mParams;
      private volatile boolean mPolicyDirty;
      private INetworkPolicyListener mPolicyListener;
      private volatile boolean mShutdownRequested;
      private long mSpeed;
      private long mSpeedSampleBytes;
      private long mSpeedSampleStart;
      private final StorageManager mStorage;
      private final SystemFacade mSystemFacade;
/*
 * Declared Constructors.
 */
    public DownloadThread(DownloadJobService, JobParameters, DownloadInfo) { ... }
    static volatile Context -$$Nest$fgetmContext(DownloadThread) { ... }
    static volatile DownloadInfo -$$Nest$fgetmInfo(DownloadThread) { ... }
    static volatile SystemFacade -$$Nest$fgetmSystemFacade(DownloadThread) { ... }
    static volatile void -$$Nest$fputmPolicyDirty(DownloadThread, boolean) { ... }
    private void addRequestHeaders(HttpURLConnection, boolean) { ... }
    private void checkConnectivity()  throws StopRequestException{ ... }
    private void executeDownload()  throws StopRequestException{ ... }
    private void finalizeDestination() { ... }
    private static long getHeaderFieldLong(URLConnection, String, long) { ... }
    public static boolean isStatusRetryable(int) { ... }
    private void logDebug(String) { ... }
    private void logError(String, Throwable) { ... }
    private void logWarning(String) { ... }
    private void parseOkHeaders(HttpURLConnection)  throws StopRequestException{ ... }
    private void parseUnavailableHeaders(HttpURLConnection) { ... }
    public void requestShutdown() { ... }
    public void run() { ... }
    private void transferData(InputStream, OutputStream, FileDescriptor)  throws StopRequestException{ ... }
    private void transferData(HttpURLConnection)  throws StopRequestException{ ... }
    private void updateProgress(FileDescriptor)  throws IOExceptionStopRequestException{ ... }

} 