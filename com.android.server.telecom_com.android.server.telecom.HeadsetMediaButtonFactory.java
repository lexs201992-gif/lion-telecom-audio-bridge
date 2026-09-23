package com.android.server.telecom;
import android.content.Context;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.HeadsetMediaButton;

public abstract interface HeadsetMediaButtonFactory
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract HeadsetMediaButton create(Context, CallsManager, TelecomSystem$SyncRoot) { ... }

} 