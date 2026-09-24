package com.motorola.odm.camera3.util;
import java.lang.String;
import com.adobe.xmp.XMPException;
import com.adobe.xmp.XMPMeta;
import java.util.Set;
import java.lang.Boolean;

public final class XmpBuilder extends Object
{
/*
 * Field Definitions.
 */
      private String burstId;
      private Set disabledAutoCreations;
      private Boolean isPrimaryInBurst;
      private int motionPhotoPaddingLength;
      private long motionPhotoPresentationTimestampUs;
      private long motionPhotoVideoLength;
      private String specialTypeId;
/*
 * Declared Constructors.
 */
    public XmpBuilder() { ... }
    public XMPMeta build()  throws XMPException{ ... }
    public XmpBuilder setBurstId(String) { ... }
    public XmpBuilder setIsPrimaryInBurst(boolean) { ... }
    public XmpBuilder setMPPaddingLength(int) { ... }
    public XmpBuilder setMPTimeStampUs(long) { ... }
    public XmpBuilder setMPVideoLength(long) { ... }
    private static void setProperty(XMPMeta, String, String)  throws XMPException{ ... }
    public XmpBuilder setSpecialTypeId(String) { ... }
    public String toString() { ... }

} 