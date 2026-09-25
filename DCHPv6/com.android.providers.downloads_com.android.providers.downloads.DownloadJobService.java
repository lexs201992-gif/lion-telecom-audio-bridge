package com.android.providers.downloads;
import android.app.job.JobParameters;
import android.database.ContentObserver;
import android.util.SparseArray;

public class DownloadJobService extends JobService
{
/*
 * Field Definitions.
 */
      private SparseArray mActiveThreads;
      private ContentObserver mObserver;
/*
 * Declared Constructors.
 */
    public DownloadJobService() { ... }
    public void jobFinishedInternal(JobParameters, boolean) { ... }
    public void onCreate() { ... }
    public void onDestroy() { ... }
    public boolean onStartJob(JobParameters) { ... }
    public boolean onStopJob(JobParameters) { ... }

} 