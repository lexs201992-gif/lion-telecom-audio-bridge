package com.android.server.telecom;
import android.content.Context;
import com.android.server.telecom.CallsManager;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.CallEndpointController;

public abstract interface CallEndpointControllerFactory
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract CallEndpointController create(Context, TelecomSystem$SyncRoot, CallsManager) { ... }

} 