package com.motorola.odm.camera3.exif;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import com.motorola.odm.camera3.exif.Rational;
import java.io.IOException;
import java.io.OutputStream;

 class OrderedDataOutputStream extends FilterOutputStream
{
/*
 * Field Definitions.
 */
      private final ByteBuffer mByteBuffer;
/*
 * Declared Constructors.
 */
    public OrderedDataOutputStream(OutputStream) { ... }
    public OrderedDataOutputStream setByteOrder(ByteOrder) { ... }
    public OrderedDataOutputStream writeInt(int)  throws IOException{ ... }
    public OrderedDataOutputStream writeRational(Rational)  throws IOException{ ... }
    public OrderedDataOutputStream writeShort(short)  throws IOException{ ... }

} 