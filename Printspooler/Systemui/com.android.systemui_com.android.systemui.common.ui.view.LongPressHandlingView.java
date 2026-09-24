package com.android.systemui.common.ui.view;
import com.android.systemui.keyguard.ui.binder.KeyguardLongPressViewBinder$bind$1;
import android.view.MotionEvent;
import android.content.Context;
import kotlin.Lazy;
import android.util.AttributeSet;

public final class LongPressHandlingView extends View
{
/*
 * Field Definitions.
 */
      public final Lazy interactionHandler$delegate;
      public KeyguardLongPressViewBinder$bind$1 listener;
/*
 * Declared Constructors.
 */
    public LongPressHandlingView(Context, AttributeSet) { ... }
    public final boolean onTouchEvent(MotionEvent) { ... }

} 