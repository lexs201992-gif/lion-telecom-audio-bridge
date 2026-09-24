package com.android.systemui.notetask.shortcut;
import android.os.Bundle;
import android.os.UserManager;
import com.android.systemui.notetask.NoteTaskController;
import com.android.systemui.settings.UserTracker;

public final class LaunchNoteTaskManagedProfileProxyActivity extends ComponentActivity
{
/*
 * Field Definitions.
 */
      public final NoteTaskController controller;
      public final UserManager userManager;
      public final UserTracker userTracker;
/*
 * Declared Constructors.
 */
    public LaunchNoteTaskManagedProfileProxyActivity(UserManager, NoteTaskController, UserTracker) { ... }
    public final void onCreate(Bundle) { ... }

} 