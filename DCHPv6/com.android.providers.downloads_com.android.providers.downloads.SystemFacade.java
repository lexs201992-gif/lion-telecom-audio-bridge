package com.android.providers.downloads;
import android.content.Context;
import android.app.job.JobParameters;
import android.os.Bundle;
import java.security.GeneralSecurityException;
import android.net.NetworkCapabilities;
import javax.net.ssl.SSLContext;
import android.net.Network;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import java.lang.String;

abstract interface SystemFacade
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract long currentTimeMillis() { ... }
    public abstract long getMaxBytesOverMobile() { ... }
    public abstract Network getNetwork(JobParameters) { ... }
    public abstract NetworkCapabilities getNetworkCapabilities(Network) { ... }
    public abstract long getRecommendedMaxBytesOverMobile() { ... }
    public abstract SSLContext getSSLContextForPackage(Context, String)  throws GeneralSecurityException{ ... }
    public abstract boolean isCleartextTrafficPermitted(String, String) { ... }
    public abstract void sendBroadcast(Intent) { ... }
    public abstract void sendBroadcast(Intent, String, Bundle) { ... }
    public abstract boolean userOwnsPackage(int, String)  throws NameNotFoundException{ ... }

} 