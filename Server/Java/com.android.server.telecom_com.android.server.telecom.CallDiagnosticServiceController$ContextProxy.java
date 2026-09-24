package com.android.server.telecom;
import java.util.List;
import android.content.Intent;
import android.os.UserHandle;
import android.content.ServiceConnection;

public abstract static interface CallDiagnosticServiceController$ContextProxy
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract boolean bindServiceAsUser(Intent, ServiceConnection, int, UserHandle) { ... }
    public abstract UserHandle getCurrentUserHandle() { ... }
    public abstract List queryIntentServicesAsUser(Intent, int, int) { ... }
    public abstract void unbindService(ServiceConnection) { ... }

} 