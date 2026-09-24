package com.android.settings.intelligence.search;
import android.os.Parcelable$Creator;
import com.android.settings.intelligence.search.ResultPayload-IA;
import android.os.Parcel;
import android.content.Intent;

public class ResultPayload extends Object
{
/*
 * Field Definitions.
 */
      public static final Parcelable$Creator CREATOR;
      protected final Intent mIntent;
/*
 * Declared Constructors.
 */
    public ResultPayload(Intent) { ... }
    private ResultPayload(Parcel) { ... }
     ResultPayload(Parcel, ResultPayload-IA) { ... }
    public int describeContents() { ... }
    public Intent getIntent() { ... }
    public int getType() { ... }
    public void writeToParcel(Parcel, int) { ... }

} 