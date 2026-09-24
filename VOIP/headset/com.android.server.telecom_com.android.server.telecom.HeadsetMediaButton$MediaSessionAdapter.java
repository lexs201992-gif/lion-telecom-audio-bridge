package com.android.server.telecom;
import android.media.session.MediaSession$Callback;

public abstract static interface HeadsetMediaButton$MediaSessionAdapter
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract boolean isActive() { ... }
    public abstract void setActive(boolean) { ... }
    public abstract void setCallback(MediaSession$Callback) { ... }

} 