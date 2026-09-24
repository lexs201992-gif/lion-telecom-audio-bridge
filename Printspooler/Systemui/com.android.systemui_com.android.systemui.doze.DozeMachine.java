package com.android.systemui.doze;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.dock.DockManager;
import android.hardware.display.AmbientDisplayConfiguration;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.doze.DozeMachine$Service;
import com.android.systemui.doze.DozeMachine$Part;
import java.util.ArrayList;
import com.android.systemui.doze.DozeLog;
import com.android.systemui.doze.DozeMachine$State;
import com.android.systemui.doze.DozeHost;
import com.android.systemui.util.wakelock.WakeLock;

public final class DozeMachine extends Object
{
/*
 * Field Definitions.
 */
      public static final boolean DEBUG;
      public final AmbientDisplayConfiguration mAmbientDisplayConfig;
      public final DockManager mDockManager;
      public final DozeHost mDozeHost;
      public final DozeLog mDozeLog;
      public final DozeMachine$Service mDozeService;
      public final DozeMachine$Part[] mParts;
      public int mPulseReason;
      public final ArrayList mQueuedRequests;
      public DozeMachine$State mState;
      public int mUiModeType;
      public final UserTracker mUserTracker;
      public final WakeLock mWakeLock;
      public boolean mWakeLockHeldForCurrentState;
      public final WakefulnessLifecycle mWakefulnessLifecycle;
/*
 * Declared Constructors.
 */
    public DozeMachine(DozeMachine$Service, AmbientDisplayConfiguration, WakeLock, WakefulnessLifecycle, DozeLog, DockManager, DozeHost, DozeMachine$Part[], UserTracker) { ... }
    public final DozeMachine$State getState() { ... }
    public final boolean isExecutingTransition() { ... }
    public final void requestState(DozeMachine$State) { ... }
    public final void requestState(DozeMachine$State, int) { ... }
    public final void transitionTo(DozeMachine$State, int) { ... }

} 