package com.android.server.telecom;
import android.net.Uri;
import android.telecom.CallerInfo;

public abstract static interface CallerInfoLookupHelper$OnQueryCompleteListener
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void onCallerInfoQueryComplete(Uri, CallerInfo) { ... }
    public abstract void onContactPhotoQueryComplete(Uri, CallerInfo) { ... }

} 