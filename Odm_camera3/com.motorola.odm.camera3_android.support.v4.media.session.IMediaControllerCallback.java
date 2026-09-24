package android.support.v4.media.session;
import java.lang.String;
import java.lang.CharSequence;
import android.os.Bundle;
import java.util.List;
import android.os.RemoteException;
import android.support.v4.media.session.ParcelableVolumeInfo;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.PlaybackStateCompat;

public abstract interface IMediaControllerCallback
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void onCaptioningEnabledChanged(boolean)  throws RemoteException{ ... }
    public abstract void onEvent(String, Bundle)  throws RemoteException{ ... }
    public abstract void onExtrasChanged(Bundle)  throws RemoteException{ ... }
    public abstract void onMetadataChanged(MediaMetadataCompat)  throws RemoteException{ ... }
    public abstract void onPlaybackStateChanged(PlaybackStateCompat)  throws RemoteException{ ... }
    public abstract void onQueueChanged(List)  throws RemoteException{ ... }
    public abstract void onQueueTitleChanged(CharSequence)  throws RemoteException{ ... }
    public abstract void onRepeatModeChanged(int)  throws RemoteException{ ... }
    public abstract void onSessionDestroyed()  throws RemoteException{ ... }
    public abstract void onSessionReady()  throws RemoteException{ ... }
    public abstract void onShuffleModeChanged(int)  throws RemoteException{ ... }
    public abstract void onShuffleModeChangedRemoved(boolean)  throws RemoteException{ ... }
    public abstract void onVolumeInfoChanged(ParcelableVolumeInfo)  throws RemoteException{ ... }

} 