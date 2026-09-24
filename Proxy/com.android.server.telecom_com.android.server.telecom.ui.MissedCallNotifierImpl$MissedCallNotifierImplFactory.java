package com.android.server.telecom.ui;
import android.content.Context;
import com.android.server.telecom.MissedCallNotifier;
import com.android.server.telecom.DeviceIdleControllerAdapter;
import com.android.server.telecom.DefaultDialerCache;
import com.android.server.telecom.PhoneAccountRegistrar;

public abstract static interface MissedCallNotifierImpl$MissedCallNotifierImplFactory
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract MissedCallNotifier makeMissedCallNotifierImpl(Context, PhoneAccountRegistrar, DefaultDialerCache, DeviceIdleControllerAdapter) { ... }

} 