package com.motorola.odm.camera3.util;
import java.io.OutputStream;
import java.util.List;
import java.io.InputStream;
import com.motorola.odm.camera3.debug.Log$Tag;
import java.io.IOException;
import com.adobe.xmp.XMPMeta;
import java.lang.String;
import android.net.Uri;
import android.content.ContentResolver;

public class XmpUtil extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
/*
 * Declared Constructors.
 */
    private static boolean hasXMPHeader(byte[]) { ... }
    private static List insertXMPSection(List, XMPMeta) { ... }
    private static List parse(InputStream, boolean) { ... }
    private static byte[] removeParseType(byte[]) { ... }
    private static void writeJpegFile(OutputStream, List)  throws IOException{ ... }
    public static boolean writeXMPMeta(ContentResolver, Uri, XMPMeta) { ... }
    public static boolean writeXMPMeta(InputStream, OutputStream, XMPMeta) { ... }
    public static boolean writeXMPMeta(String, XMPMeta) { ... }

} 