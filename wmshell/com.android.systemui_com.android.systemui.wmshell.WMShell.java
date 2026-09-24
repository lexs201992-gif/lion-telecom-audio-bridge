package com.android.systemui.wmshell;
import com.android.systemui.model.SysUiState;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.wm.shell.onehanded.OneHanded;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.settings.UserTracker;
import com.android.wm.shell.sysui.ShellInterface;
import com.android.wm.shell.splitscreen.SplitScreen;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.settings.UserTracker$Callback;
import java.util.concurrent.Executor;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.tracing.ProtoTracer;
import com.android.systemui.tracing.nano.SystemUiTraceProto;
import com.android.systemui.notetask.NoteTaskInitializer;
import com.android.systemui.wmshell.WMShell$2;
import com.android.systemui.wmshell.WMShell$1;
import java.io.PrintWriter;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import java.util.Optional;
import com.android.systemui.wmshell.WMShell$10;
import com.android.wm.shell.pip.Pip;
import java.lang.String;
import android.content.Context;

public final class WMShell extends Object
{
/*
 * Field Definitions.
 */
      public final CommandQueue mCommandQueue;
      public final ConfigurationController mConfigurationController;
      public final WMShell$1 mConfigurationListener;
      public final Context mContext;
      public final Optional mDesktopModeOptional;
      public final DisplayTracker mDisplayTracker;
      public final WMShell$2 mKeyguardStateCallback;
      public final KeyguardStateController mKeyguardStateController;
      public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
      public final KeyguardUpdateMonitorCallback mKeyguardUpdateMonitorCallback;
      public final NoteTaskInitializer mNoteTaskInitializer;
      public final Optional mOneHandedOptional;
      public final Optional mPipOptional;
      public final ProtoTracer mProtoTracer;
      public final ScreenLifecycle mScreenLifecycle;
      public final ShellInterface mShell;
      public final Optional mSplitScreenOptional;
      public final Executor mSysUiMainExecutor;
      public final SysUiState mSysUiState;
      public final UserTracker$Callback mUserChangedCallback;
      public final UserTracker mUserTracker;
      public final WakefulnessLifecycle mWakefulnessLifecycle;
      public WMShell$10 mWakefulnessObserver;
/*
 * Declared Constructors.
 */
    public WMShell(Context, ShellInterface, Optional, Optional, Optional, Optional, CommandQueue, ConfigurationController, KeyguardStateController, KeyguardUpdateMonitor, ScreenLifecycle, SysUiState, ProtoTracer, WakefulnessLifecycle, UserTracker, DisplayTracker, NoteTaskInitializer, Executor) { ... }
    public final void dump(PrintWriter, String[]) { ... }
    public void initOneHanded(OneHanded) { ... }
    public void initPip(Pip) { ... }
    public void initSplitScreen(SplitScreen) { ... }
    public final void start() { ... }
    public final volatile void writeToProto(SystemUiTraceProto) { ... }

} 