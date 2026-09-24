package vendor.dolby.hardware.dms.V2_0;
import android.os.IHwInterface;
import android.os.NativeHandle;
import android.os.RemoteException;
import java.util.ArrayList;
import android.os.IHwBinder;
import android.os.IHwBinder$DeathRecipient;
import android.os.HwParcel;
import java.lang.String;
import android.hidl.base.V1_0.DebugInfo;

public abstract static class IDmsCallbacks$Stub extends HwBinder
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public IDmsCallbacks$Stub() { ... }
    public IHwBinder asBinder() { ... }
    public void debug(NativeHandle, ArrayList) { ... }
    public final DebugInfo getDebugInfo() { ... }
    public final ArrayList getHashChain() { ... }
    public final ArrayList interfaceChain() { ... }
    public final String interfaceDescriptor() { ... }
    public final boolean linkToDeath(IHwBinder$DeathRecipient, long) { ... }
    public final void notifySyspropsChanged() { ... }
    public void onTransact(int, HwParcel, HwParcel, int)  throws RemoteException{ ... }
    public final void ping() { ... }
    public IHwInterface queryLocalInterface(String) { ... }
    public final void setHALInstrumentation() { ... }
    public String toString() { ... }
    public final boolean unlinkToDeath(IHwBinder$DeathRecipient) { ... }

} 