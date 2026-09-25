package com.android.networkstack.com.android.server.connectivity;
import android.net.Uri;
import java.net.URL;
import com.android.networkstack.com.android.server.connectivity.NetworkMonitor;
import java.util.concurrent.CountDownLatch;
import com.android.networkstack.com.android.server.connectivity.NetworkMonitor$ValidationProperties;
import com.android.networkstack.android.net.captiveportal.CaptivePortalProbeResult;
import android.net.ProxyInfo;
import com.android.networkstack.com.android.server.connectivity.NetworkMonitor$Probe;

 class NetworkMonitor$ProbeThread extends Thread
{
/*
 * Field Definitions.
 */
      private final CountDownLatch mLatch;
      private final NetworkMonitor$Probe mProbe;
      private volatile CaptivePortalProbeResult mResult;
/*
 * Declared Constructors.
 */
     NetworkMonitor$ProbeThread(NetworkMonitor, CountDownLatch, NetworkMonitor$ValidationProperties, ProxyInfo, URL, int, Uri) { ... }
    public CaptivePortalProbeResult result() { ... }
    public void run() { ... }

} 