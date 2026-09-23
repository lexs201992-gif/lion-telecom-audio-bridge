package com.android.server.telecom;
import java.lang.String;
import com.android.server.telecom.Call;
import android.telecom.VideoProfile;

public abstract static interface VideoProviderProxy$Listener
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void onSessionModifyRequestReceived(Call, VideoProfile) { ... }
    public abstract void onSetCamera(Call, String) { ... }

} 