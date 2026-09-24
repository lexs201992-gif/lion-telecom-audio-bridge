package com.android.systemui.doze;
import dagger.Lazy;
import android.hardware.display.AmbientDisplayConfiguration;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.doze.DozeLog;
import com.android.systemui.doze.DozeMachine$State;
import com.android.systemui.doze.DozeHost;
import com.android.systemui.doze.DozeSuppressor$1;
import java.io.PrintWriter;
import com.android.systemui.doze.DozeMachine;

public final class DozeSuppressor extends Object
{
/*
 * Field Definitions.
 */
      public final Lazy mBiometricUnlockControllerLazy;
      public final AmbientDisplayConfiguration mConfig;
      public final DozeHost mDozeHost;
      public final DozeLog mDozeLog;
      public final DozeSuppressor$1 mHostCallback;
      public boolean mIsCarModeEnabled;
      public DozeMachine mMachine;
      public final UserTracker mUserTracker;
/*
 * Declared Constructors.
 */
    public DozeSuppressor(DozeHost, AmbientDisplayConfiguration, DozeLog, Lazy, UserTracker) { ... }
    public final void destroy() { ... }
    public final void dump(PrintWriter) { ... }
    public final void onUiModeTypeChanged(int) { ... }
    public final void setDozeMachine(DozeMachine) { ... }
    public final void transitionTo(DozeMachine$State, DozeMachine$State) { ... }

} 