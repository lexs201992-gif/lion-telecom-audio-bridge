package com.android.server.telecom.ui;
import com.android.server.telecom.Call;
import android.telecom.PhoneAccountHandle;

public abstract static interface IncomingCallNotifier$CallsManagerProxy
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract Call getActiveCall() { ... }
    public abstract int getNumUnholdableCallsForOtherConnectionService(PhoneAccountHandle) { ... }
    public abstract boolean hasUnholdableCallsForOtherConnectionService(PhoneAccountHandle) { ... }

} 