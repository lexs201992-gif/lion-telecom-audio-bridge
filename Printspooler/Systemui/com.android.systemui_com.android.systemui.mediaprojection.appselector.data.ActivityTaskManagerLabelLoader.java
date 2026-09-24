package com.android.systemui.mediaprojection.appselector.data;
import java.lang.Object;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlin.coroutines.Continuation;
import android.content.ComponentName;
import android.content.pm.PackageManager;

public final class ActivityTaskManagerLabelLoader extends Object
{
/*
 * Field Definitions.
 */
      public final CoroutineDispatcher coroutineDispatcher;
      public final PackageManager packageManager;
/*
 * Declared Constructors.
 */
    public ActivityTaskManagerLabelLoader(CoroutineDispatcher, PackageManager) { ... }
    public final Object loadLabel(int, ComponentName, Continuation) { ... }

} 