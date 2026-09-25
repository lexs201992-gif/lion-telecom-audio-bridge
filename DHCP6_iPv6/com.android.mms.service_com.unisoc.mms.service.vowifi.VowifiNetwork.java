package com.unisoc.mms.service.vowifi;
import android.os.Parcelable$Creator;
import java.net.UnknownHostException;
import libcore.net.http.HttpURLConnectionFactory;
import java.util.List;
import com.unisoc.mms.service.vowifi.VowifiNetwork$VowifiSocketFactory;
import android.os.Parcel;
import android.net.INetworkAdapterService;
import java.net.URLConnection;
import java.io.IOException;
import javax.net.SocketFactory;
import android.net.Uri;
import java.net.InetAddress;
import java.net.URL;
import com.unisoc.mms.service.vowifi.VowifiNetwork$State;
import java.net.Proxy;
import java.lang.String;
import android.content.Context;

public class VowifiNetwork extends Object
{
/*
 * Field Definitions.
 */
      public static final Parcelable$Creator CREATOR;
      private static final Uri URI_DNS;
      private static final Uri URI_MSG;
      private static final boolean httpKeepAlive;
      private static final long httpKeepAliveDurationMs;
      private static final int httpMaxConnections;
      private List iptablesCmdsList;
      private int mApnType;
      private HttpURLConnectionFactory mConnectionFactory;
      private Context mContext;
      private boolean mCurUsedIPv4;
      private String mDnsAddress;
      private String mDnsIP4Addr;
      private String mDnsIP6Addr;
      private String mLocalAddress;
      private String mLocalIP4Addr;
      private String mLocalIP6Addr;
      private INetworkAdapterService mNAS;
      private String mPcscfIP4Addr;
      private String mPcscfIP6Addr;
      private int mSessionId;
      private VowifiNetwork$State mState;
      private int mSubId;
      private VowifiNetwork$VowifiSocketFactory mVowifiSocketFactory;
      private int mWifiNetworkId;
/*
 * Declared Constructors.
 */
    public VowifiNetwork(int, int, int, int) { ... }
    public VowifiNetwork(int, int, String, String, String, String, String, String, boolean, boolean) { ... }
    static volatile String -$$Nest$fgetmLocalAddress(VowifiNetwork) { ... }
    static volatile void -$$Nest$fputmCurUsedIPv4(VowifiNetwork, boolean) { ... }
    static volatile void -$$Nest$fputmDnsAddress(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmDnsIP4Addr(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmDnsIP6Addr(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmLocalAddress(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmLocalIP4Addr(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmLocalIP6Addr(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmPcscfIP4Addr(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmPcscfIP6Addr(VowifiNetwork, String) { ... }
    static volatile void -$$Nest$fputmState(VowifiNetwork, VowifiNetwork$State) { ... }
    public int describeContents() { ... }
    private String dnsQueryViaEPDG(String) { ... }
    private void executeIptablesForMss() { ... }
    public InetAddress[] getAllByName(String)  throws UnknownHostException{ ... }
    public InetAddress getByName(String)  throws UnknownHostException{ ... }
    public SocketFactory getSocketFactory() { ... }
    private boolean isSupportDnsWithinEsp() { ... }
    public URLConnection openConnection(URL, Proxy)  throws IOException{ ... }
    public void setCurUsedIPv4(boolean) { ... }
    public String toString() { ... }
    public void writeToParcel(Parcel, int) { ... }

} 