package com.android.systemui.mediaprojection.appselector.data;
import java.lang.Object;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlin.coroutines.Continuation;
import com.android.systemui.shared.system.ActivityManagerWrapper;

public final class ActivityTaskManagerThumbnailLoader extends Object
{
/*
 * Field Definitions.
 */
      public final ActivityManagerWrapper activityManager;
      public final CoroutineDispatcher coroutineDispatcher;
/*
 * Declared Constructors.
 */
    public ActivityTaskManagerThumbnailLoader(CoroutineDispatcher, ActivityManagerWrapper) { ... }
    public final Object loadThumbnail(int, Continuation) { ... }

} 