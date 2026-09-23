package com.android.server.telecom;
import com.android.server.telecom.ConnectionServiceFocusManager$ConnectionServiceFocus;

public abstract static interface ConnectionServiceFocusManager$ConnectionServiceFocusListener
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void onConnectionServiceDeath(ConnectionServiceFocusManager$ConnectionServiceFocus) { ... }
    public abstract void onConnectionServiceReleased(ConnectionServiceFocusManager$ConnectionServiceFocus) { ... }

} 