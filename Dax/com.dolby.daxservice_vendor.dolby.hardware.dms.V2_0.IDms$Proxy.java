package vendor.dolby.hardware.dms.V2_0;
import java.lang.String;
import java.lang.Object;
import android.os.IHwBinder;
import java.util.ArrayList;
import android.os.IHwBinder$DeathRecipient;
import android.os.RemoteException;
import vendor.dolby.hardware.dms.V2_0.IDmsCallbacks;

public static final class IDms$Proxy extends Object
{
/*
 * Field Definitions.
 */
      private IHwBinder mRemote;
/*
 * Declared Constructors.
 */
    public IDms$Proxy(IHwBinder) { ... }
    public IHwBinder asBinder() { ... }
    public final boolean equals(Object) { ... }
    public long getIntParam(int)  throws RemoteException{ ... }
    public final int hashCode() { ... }
    public ArrayList interfaceChain()  throws RemoteException{ ... }
    public String interfaceDescriptor()  throws RemoteException{ ... }
    public boolean linkToDeath(IHwBinder$DeathRecipient, long)  throws RemoteException{ ... }
    public void registerClient(IDmsCallbacks, int, int)  throws RemoteException{ ... }
    public void setActiveDevice(int)  throws RemoteException{ ... }
    public void setIntParam(int, long)  throws RemoteException{ ... }
    public String toString() { ... }
    public boolean unlinkToDeath(IHwBinder$DeathRecipient)  throws RemoteException{ ... }
    public void unregisterClient(IDmsCallbacks, int, int)  throws RemoteException{ ... }

} 