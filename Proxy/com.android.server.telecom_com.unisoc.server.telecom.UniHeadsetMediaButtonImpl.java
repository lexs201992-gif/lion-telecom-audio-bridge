package com.unisoc.server.telecom;
import android.os.Handler;
import android.content.Context;
import android.view.KeyEvent;
import com.android.server.telecom.CallsManager;
import com.unisoc.server.telecom.UniHeadsetMediaButtonImpl$CheckDoublePress;

public class UniHeadsetMediaButtonImpl extends UniHeadsetMediaButton
{
/*
 * Field Definitions.
 */
      public static final int DOUBLE_PRESS;
      private static final long DOUBLE_PRESS_TIME;
      public static final int LONG_PRESS;
      public static final int SHORT_PRESS;
      private final CallsManager mCallsManager;
      private final Context mContext;
       Handler mHandler;
      private boolean mIsDoublePress;
      private KeyEvent mLastHookEvent;
      private UniHeadsetMediaButtonImpl$CheckDoublePress mPendingCheckDoublePress;
/*
 * Declared Constructors.
 */
    public UniHeadsetMediaButtonImpl(Context, CallsManager) { ... }
    static volatile boolean -$$Nest$fgetmIsDoublePress(UniHeadsetMediaButtonImpl) { ... }
    static volatile void -$$Nest$fputmIsDoublePress(UniHeadsetMediaButtonImpl, boolean) { ... }
    static volatile void -$$Nest$msinglePress(UniHeadsetMediaButtonImpl) { ... }
    private void doublePress() { ... }
    public boolean handleCallMediaButton(KeyEvent) { ... }
    private boolean isSupportDoublePressOnHeadsetKey() { ... }
    private void singlePress() { ... }

} 