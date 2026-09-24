package vendor.dolby.hardware.dms.V2_0;
import android.os.IHwBinder;
import java.util.ArrayList;
import android.os.RemoteException;

public abstract interface IDmsCallbacks
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract IHwBinder asBinder() { ... }
    public abstract void onDapParamUpdate(ArrayList)  throws RemoteException{ ... }

} 