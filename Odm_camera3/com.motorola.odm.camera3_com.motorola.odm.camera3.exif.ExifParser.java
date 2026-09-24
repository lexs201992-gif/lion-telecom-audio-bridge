package com.motorola.odm.camera3.exif;
import com.motorola.odm.camera3.exif.ExifInvalidFormatException;
import com.motorola.odm.camera3.exif.ExifTag;
import com.motorola.odm.camera3.exif.Rational;
import java.nio.ByteOrder;
import java.util.TreeMap;
import com.motorola.odm.camera3.exif.CountedDataInputStream;
import com.motorola.odm.camera3.exif.ExifParser$ImageEvent;
import java.io.InputStream;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.exif.ExifInterface;
import java.io.IOException;
import java.lang.String;
import java.nio.charset.Charset;

 class ExifParser extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
      private static final short TAG_EXIF_IFD;
      private static final short TAG_GPS_IFD;
      private static final short TAG_INTEROPERABILITY_IFD;
      private static final short TAG_JPEG_INTERCHANGE_FORMAT;
      private static final short TAG_JPEG_INTERCHANGE_FORMAT_LENGTH;
      private static final short TAG_STRIP_BYTE_COUNTS;
      private static final short TAG_STRIP_OFFSETS;
      private static final Charset US_ASCII;
      private int mApp1End;
      private boolean mContainExifData;
      private final TreeMap mCorrespondingEvent;
      private byte[] mDataAboveIfd0;
      private int mIfd0Position;
      private int mIfdStartOffset;
      private int mIfdType;
      private ExifParser$ImageEvent mImageEvent;
      private final ExifInterface mInterface;
      private ExifTag mJpegSizeTag;
      private boolean mNeedToParseOffsetsInCurrentIfd;
      private int mNumOfTagInIfd;
      private int mOffsetToApp1EndFromSOF;
      private final int mOptions;
      private ExifTag mStripSizeTag;
      private ExifTag mTag;
      private int mTiffStartPosition;
      private final CountedDataInputStream mTiffStream;
/*
 * Declared Constructors.
 */
    private ExifParser(InputStream, int, ExifInterface) { ... }
    private boolean checkAllowed(int, int) { ... }
    private void checkOffsetOrImageTag(ExifTag) { ... }
    protected ByteOrder getByteOrder() { ... }
    protected int getCompressedImageSize() { ... }
    protected int getCurrentIfd() { ... }
    protected int getOffsetToExifEndFromSOF() { ... }
    protected int getStripIndex() { ... }
    protected int getStripSize() { ... }
    protected ExifTag getTag() { ... }
    protected int getTiffStartPosition() { ... }
    private boolean isIfdRequested(int) { ... }
    private boolean isThumbnailRequested() { ... }
    private boolean needToParseOffsetsInCurrentIfd() { ... }
    protected int next()  throws IOExceptionExifInvalidFormatException{ ... }
    protected static ExifParser parse(InputStream, int, ExifInterface)  throws IOExceptionExifInvalidFormatException{ ... }
    protected static ExifParser parse(InputStream, ExifInterface)  throws IOExceptionExifInvalidFormatException{ ... }
    private void parseTiffHeader()  throws IOExceptionExifInvalidFormatException{ ... }
    protected int read(byte[])  throws IOException{ ... }
    protected void readFullTagValue(ExifTag)  throws IOException{ ... }
    protected int readLong()  throws IOException{ ... }
    protected Rational readRational()  throws IOException{ ... }
    protected String readString(int)  throws IOException{ ... }
    protected String readString(int, Charset)  throws IOException{ ... }
    private ExifTag readTag()  throws IOExceptionExifInvalidFormatException{ ... }
    protected long readUnsignedLong()  throws IOException{ ... }
    protected Rational readUnsignedRational()  throws IOException{ ... }
    protected int readUnsignedShort()  throws IOException{ ... }
    private void registerCompressedImage(long) { ... }
    protected void registerForTagValue(ExifTag) { ... }
    private void registerIfd(int, long) { ... }
    private void registerUncompressedStrip(int, long) { ... }
    private boolean seekTiffData(InputStream)  throws IOExceptionExifInvalidFormatException{ ... }
    protected void skipRemainingTagsInCurrentIfd()  throws IOExceptionExifInvalidFormatException{ ... }
    private void skipTo(int)  throws IOException{ ... }

} 