package com.android.server.telecom;

public abstract interface ClockProxy
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract long currentTimeMillis() { ... }
    public abstract long elapsedRealtime() { ... }

} 