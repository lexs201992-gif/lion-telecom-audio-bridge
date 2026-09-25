package com.android.networkstack.com.android.net.module.util.structs;
import android.net.MacAddress;

public class EthernetHeader extends Struct
{
/*
 * Field Definitions.
 */
      public final MacAddress dstMac;
      public final int etherType;
      public final MacAddress srcMac;
/*
 * Declared Constructors.
 */
    public EthernetHeader(MacAddress, MacAddress, int) { ... }

} 