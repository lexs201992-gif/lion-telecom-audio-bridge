package com.android.server.telecom.components;
import android.content.Context;
import com.android.server.telecom.components.UserCallIntentProcessor;
import android.os.UserHandle;

public abstract interface UserCallIntentProcessorFactory
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract UserCallIntentProcessor create(Context, UserHandle) { ... }

} 