package com.android.stk;
import android.content.Context;
import com.android.internal.telephony.cat.Duration;
import android.telephony.TelephonyManager;

public class StkApp extends Application
{
/*
 * Field Definitions.
 */
      private Context mContext;
      private int mSimCount;
      private TelephonyManager mTm;
/*
 * Declared Constructors.
 */
    public StkApp() { ... }
    public static int calculateDurationInMilis(Duration) { ... }
    private boolean hasIccCard() { ... }
    public void onCreate() { ... }

} 