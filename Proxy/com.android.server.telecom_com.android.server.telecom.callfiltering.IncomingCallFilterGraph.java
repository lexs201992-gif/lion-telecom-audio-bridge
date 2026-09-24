package com.android.server.telecom.callfiltering;
import com.android.server.telecom.callfiltering.CallFilterResultCallback;
import android.os.Handler;
import java.util.List;
import android.content.Context;
import com.android.server.telecom.Call;
import com.android.server.telecom.Timeouts$Adapter;
import android.os.HandlerThread;
import java.lang.Throwable;
import com.android.server.telecom.callfiltering.CallFilter;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.callfiltering.CallFilteringResult;

public class IncomingCallFilterGraph extends Object
{
/*
 * Field Definitions.
 */
      public static final CallFilteringResult DEFAULT_RESULT;
      private final Call mCall;
      private CallFilter mCompletionSentinel;
      private Context mContext;
      private CallFilteringResult mCurrentResult;
      private List mFiltersList;
      private boolean mFinished;
      private final Handler mHandler;
      private final HandlerThread mHandlerThread;
      private final CallFilterResultCallback mListener;
      private final TelecomSystem$SyncRoot mLock;
      private Timeouts$Adapter mTimeoutsAdapter;
/*
 * Declared Constructors.
 */
    public IncomingCallFilterGraph(Call, CallFilterResultCallback, Context, Timeouts$Adapter, TelecomSystem$SyncRoot) { ... }
    public static CallFilteringResult $r8$lambda$Xlqc7mhGhKSpFXBoz5rC619wR4I(CallFilter, Throwable) { ... }
    static volatile Call -$$Nest$fgetmCall(IncomingCallFilterGraph) { ... }
    static volatile CallFilter -$$Nest$fgetmCompletionSentinel(IncomingCallFilterGraph) { ... }
    static volatile CallFilteringResult -$$Nest$fgetmCurrentResult(IncomingCallFilterGraph) { ... }
    static volatile List -$$Nest$fgetmFiltersList(IncomingCallFilterGraph) { ... }
    static volatile boolean -$$Nest$fgetmFinished(IncomingCallFilterGraph) { ... }
    static volatile HandlerThread -$$Nest$fgetmHandlerThread(IncomingCallFilterGraph) { ... }
    static volatile CallFilterResultCallback -$$Nest$fgetmListener(IncomingCallFilterGraph) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmLock(IncomingCallFilterGraph) { ... }
    static volatile void -$$Nest$fputmFinished(IncomingCallFilterGraph, boolean) { ... }
    static volatile void -$$Nest$mscheduleFilter(IncomingCallFilterGraph, CallFilter) { ... }
    public static void addEdge(CallFilter, CallFilter) { ... }
    public void addFilter(CallFilter) { ... }
    public HandlerThread getHandlerThread() { ... }
    private static CallFilteringResult lambda$scheduleFilter$0(CallFilter, Throwable) { ... }
    public void performFiltering() { ... }
    private void scheduleFilter(CallFilter) { ... }

} 