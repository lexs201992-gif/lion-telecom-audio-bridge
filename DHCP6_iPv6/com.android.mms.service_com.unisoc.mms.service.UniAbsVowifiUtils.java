package com.unisoc.mms.service;
import java.net.UnknownHostException;
import java.net.Proxy;
import android.net.ConnectivityManager;
import java.net.InetAddress;
import java.net.URL;
import java.io.IOException;
import android.net.Network;
import java.net.URLConnection;
import java.lang.String;

public class UniAbsVowifiUtils extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public UniAbsVowifiUtils() { ... }
    public InetAddress uniAbsGetByName(String)  throws UnknownHostException{ ... }
    public String uniAbsGetVowifiMmsInterfaceName(ConnectivityManager, Network) { ... }
    public void uniAbsGetVowifiMmsProperties(ConnectivityManager, Network) { ... }
    public URLConnection uniAbsOpenConnection(URL, Proxy)  throws IOException{ ... }

} 