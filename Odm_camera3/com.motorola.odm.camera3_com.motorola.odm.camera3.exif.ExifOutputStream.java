package com.motorola.odm.camera3.exif;
import java.io.OutputStream;
import com.motorola.odm.camera3.exif.ExifTag;
import java.nio.ByteBuffer;
import com.motorola.odm.camera3.exif.ExifData;
import java.util.ArrayList;
import com.motorola.odm.camera3.exif.IfdData;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.exif.ExifInterface;
import java.io.IOException;
import com.motorola.odm.camera3.exif.OrderedDataOutputStream;

 class ExifOutputStream extends FilterOutputStream
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private ByteBuffer mBuffer;
      private int mByteToCopy;
      private int mByteToSkip;
      private ExifData mExifData;
      private final ExifInterface mInterface;
      private byte[] mSingleByteArray;
      private int mState;
/*
 * Declared Constructors.
 */
    protected ExifOutputStream(OutputStream, ExifInterface) { ... }
    private int calculateAllOffset() { ... }
    private int calculateOffsetOfIfd(IfdData, int) { ... }
    private void createRequiredIfdAndTag()  throws IOException{ ... }
    private int requestByteToBuffer(int, byte[], int, int) { ... }
    protected void setExifData(ExifData) { ... }
    private ArrayList stripNullValueTags(ExifData) { ... }
    public void write(int)  throws IOException{ ... }
    public void write(byte[])  throws IOException{ ... }
    public void write(byte[], int, int)  throws IOException{ ... }
    private void writeAllTags(OrderedDataOutputStream)  throws IOException{ ... }
    private void writeExifData()  throws IOException{ ... }
    private void writeIfd(IfdData, OrderedDataOutputStream)  throws IOException{ ... }
    static void writeTagValue(ExifTag, OrderedDataOutputStream)  throws IOException{ ... }
    private void writeThumbnail(OrderedDataOutputStream)  throws IOException{ ... }

} 