package android.support.v4.media.session;
import java.lang.String;
import java.lang.Object;
import android.os.Bundle;
import java.lang.CharSequence;
import android.os.Parcelable$Creator;
import android.os.Parcel;
import java.util.List;

public final class PlaybackStateCompat extends Object
{
/*
 * Field Definitions.
 */
      public static final Parcelable$Creator CREATOR;
      final long mActions;
      final long mActiveItemId;
      final long mBufferedPosition;
       List mCustomActions;
      final int mErrorCode;
      final CharSequence mErrorMessage;
      final Bundle mExtras;
      final long mPosition;
      final float mSpeed;
      final int mState;
      private Object mStateObj;
      final long mUpdateTime;
/*
 * Declared Constructors.
 */
     PlaybackStateCompat(int, long, long, float, long, int, CharSequence, long, List, long, Bundle) { ... }
     PlaybackStateCompat(Parcel) { ... }
    public int describeContents() { ... }
    public static PlaybackStateCompat fromPlaybackState(Object) { ... }
    public String toString() { ... }
    public void writeToParcel(Parcel, int) { ... }

} 