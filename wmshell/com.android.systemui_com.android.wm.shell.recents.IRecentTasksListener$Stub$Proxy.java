package com.android.wm.shell.recents;
import android.app.ActivityManager$RunningTaskInfo;
import android.os.IBinder;

public final class IRecentTasksListener$Stub$Proxy extends Object
{
/*
 * Field Definitions.
 */
      public final IBinder mRemote;
/*
 * Declared Constructors.
 */
    public IRecentTasksListener$Stub$Proxy(IBinder) { ... }
    public final IBinder asBinder() { ... }
    public final void onRecentTasksChanged() { ... }
    public final void onRunningTaskAppeared(ActivityManager$RunningTaskInfo) { ... }
    public final void onRunningTaskVanished(ActivityManager$RunningTaskInfo) { ... }

} 