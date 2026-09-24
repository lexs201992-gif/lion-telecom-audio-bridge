package vendor.dolby.hardware.dms.V2_0;
import java.lang.String;
import android.os.IHwBinder;
import java.util.ArrayList;
import android.os.IHwBinder$DeathRecipient;
import android.os.RemoteException;
import vendor.dolby.hardware.dms.V2_0.IDmsCallbacks;

public abstract interface IDms
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static IDms asInterface(IHwBinder) { ... }
    public abstract long getIntParam(int)  throws RemoteException{ ... }
    public static IDms getService()  throws RemoteException{ ... }
    public static IDms getService(String)  throws RemoteException{ ... }
    public abstract ArrayList interfaceChain()  throws RemoteException{ ... }
    public abstract boolean linkToDeath(IHwBinder$DeathRecipient, long)  throws RemoteException{ ... }
    public abstract void registerClient(IDmsCallbacks, int, int)  throws RemoteException{ ... }
    public abstract void setActiveDevice(int)  throws RemoteException{ ... }
    public abstract void setIntParam(int, long)  throws RemoteException{ ... }
    public abstract boolean unlinkToDeath(IHwBinder$DeathRecipient)  throws RemoteException{ ... }
    public abstract void unregisterClient(IDmsCallbacks, int, int)  throws RemoteException{ ... }

} 