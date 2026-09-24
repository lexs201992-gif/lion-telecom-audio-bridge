package com.android.stk;
import java.lang.String;
import java.lang.Object;
import android.content.Context;
import java.util.ArrayList;
import com.android.stk.StkMenuConfig$Config;
import android.graphics.Bitmap;

public class StkMenuConfig extends Object
{
/*
 * Field Definitions.
 */
      private static final boolean DBG;
      private static final StkMenuConfig$Config NO_CONFIG;
      private ArrayList mArray;
      private StkMenuConfig$Config[] mConfigs;
      private Context mContext;
      private static StkMenuConfig sInstance;
      private static final Object sLock;
/*
 * Declared Constructors.
 */
    public StkMenuConfig() { ... }
    private void findConfig(int) { ... }
    public Bitmap getIcon(int) { ... }
    public static StkMenuConfig getInstance(Context) { ... }
    public String getLabel(int) { ... }
    private void initialize(Context) { ... }

} 