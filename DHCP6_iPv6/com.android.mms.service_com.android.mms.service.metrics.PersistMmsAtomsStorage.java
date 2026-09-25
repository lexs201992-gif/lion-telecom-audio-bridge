package com.android.mms.service.metrics;
import java.lang.Runnable;
import android.os.Handler;
import com.android.mms.IncomingMms;
import java.util.List;
import android.content.Context;
import java.security.SecureRandom;
import com.android.mms.OutgoingMms;
import android.os.HandlerThread;
import com.android.mms.PersistMmsAtoms;
import java.lang.Object;
import java.lang.String;

public class PersistMmsAtomsStorage extends Object
{
/*
 * Field Definitions.
 */
      private static final String TAG;
      private final Context mContext;
      private final Handler mHandler;
      private final HandlerThread mHandlerThread;
      private final int mMaxNumMms;
      protected PersistMmsAtoms mPersistMmsAtoms;
      protected boolean mSaveImmediately;
      private final Runnable mSaveRunnable;
      private static final SecureRandom sRandom;
/*
 * Declared Constructors.
 */
    public PersistMmsAtomsStorage(Context) { ... }
    static volatile void -$$Nest$msaveAtomsToFileNow(PersistMmsAtomsStorage) { ... }
    public synchronized void addIncomingMms(IncomingMms) { ... }
    public synchronized void addOutgoingMms(OutgoingMms) { ... }
    private int findIndex(IncomingMms) { ... }
    private int findIndex(OutgoingMms) { ... }
    public synchronized List getIncomingMms(long) { ... }
    public synchronized List getOutgoingMms(long) { ... }
    protected long getWallTimeMillis() { ... }
    private static List insertAtRandomPlace(List, Object, int) { ... }
    private PersistMmsAtoms loadAtomsFromFile() { ... }
    private PersistMmsAtoms makeNewPersistMmsAtoms() { ... }
    private List sanitizeAtoms(List) { ... }
    private List sanitizeAtoms(List, int) { ... }
    private long sanitizeTimestamp(long) { ... }
    private void saveAtomsToFile(int) { ... }
    private synchronized void saveAtomsToFileNow() { ... }

} 