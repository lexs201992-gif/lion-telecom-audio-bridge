package com.android.mms.service;
import android.os.Bundle;
import com.unisoc.mms.service.UniAbsMmsUtils;
import android.content.Context;
import java.util.Map;
import android.telephony.SubscriptionManager;
import android.content.BroadcastReceiver;

public class MmsConfigManager extends Object
{
/*
 * Field Definitions.
 */
      private Context mContext;
      private final BroadcastReceiver mReceiver;
      private final Map mSubIdConfigMap;
      private SubscriptionManager mSubscriptionManager;
      private UniAbsMmsUtils mUniAbsMmsUtils;
      private static volatile MmsConfigManager sInstance;
/*
 * Declared Constructors.
 */
    public MmsConfigManager() { ... }
    static volatile Context -$$Nest$fgetmContext(MmsConfigManager) { ... }
    static volatile void -$$Nest$mload(MmsConfigManager, Context) { ... }
    static volatile void -$$Nest$mloadInBackground(MmsConfigManager) { ... }
    public static MmsConfigManager getInstance() { ... }
    public Bundle getMmsConfigBySubId(int) { ... }
    public void init(Context) { ... }
    private void load(Context) { ... }
    private void loadInBackground() { ... }

} 