package com.android.server.telecom;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.telecom.ConnectionServiceWrapper;
import android.content.ComponentName;
import android.content.Context;
import com.android.server.telecom.CallsManager;
import java.util.HashMap;
import com.android.server.telecom.ServiceBinder$Listener;
import android.os.UserHandle;
import com.android.server.telecom.TelecomSystem$SyncRoot;
import com.android.server.telecom.PhoneAccountRegistrar;

public class ConnectionServiceRepository extends Object
{
/*
 * Field Definitions.
 */
      private final CallsManager mCallsManager;
      private final Context mContext;
      private final TelecomSystem$SyncRoot mLock;
      private final PhoneAccountRegistrar mPhoneAccountRegistrar;
      private final HashMap mServiceCache;
      private final ServiceBinder$Listener mUnbindListener;
/*
 * Declared Constructors.
 */
     ConnectionServiceRepository(PhoneAccountRegistrar, Context, TelecomSystem$SyncRoot, CallsManager) { ... }
    static volatile TelecomSystem$SyncRoot -$$Nest$fgetmLock(ConnectionServiceRepository) { ... }
    static volatile HashMap -$$Nest$fgetmServiceCache(ConnectionServiceRepository) { ... }
    public void dump(IndentingPrintWriter) { ... }
    public ConnectionServiceWrapper getService(ComponentName, UserHandle) { ... }
    public void setService(ComponentName, UserHandle, ConnectionServiceWrapper) { ... }

} 