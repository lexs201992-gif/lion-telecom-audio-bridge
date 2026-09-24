package com.motorola.odm.camera3.exif;
import java.nio.ByteOrder;
import android.util.SparseIntArray;
import android.graphics.Bitmap;
import java.util.HashSet;
import java.io.OutputStream;
import java.util.Collection;
import java.nio.ByteBuffer;
import com.motorola.odm.camera3.exif.ExifTag;
import java.util.TimeZone;
import java.util.Calendar;
import java.io.IOException;
import java.io.Closeable;
import java.io.FileNotFoundException;
import com.motorola.odm.camera3.exif.ExifData;
import java.io.InputStream;
import java.lang.Integer;
import com.motorola.odm.camera3.debug.Log$Tag;
import com.motorola.odm.camera3.exif.Rational;
import java.lang.Object;
import java.text.DateFormat;
import java.lang.String;

public class ExifInterface extends Object
{
/*
 * Field Definitions.
 */
      public static final ByteOrder DEFAULT_BYTE_ORDER;
      private static final Log$Tag TAG;
      public static final int TAG_APERTURE_VALUE;
      public static final int TAG_ARTIST;
      public static final int TAG_BITS_PER_SAMPLE;
      public static final int TAG_BRIGHTNESS_VALUE;
      public static final int TAG_CAMERATYPE_IFD;
      public static final int TAG_CFA_PATTERN;
      public static final int TAG_COLOR_SPACE;
      public static final int TAG_COMPONENTS_CONFIGURATION;
      public static final int TAG_COMPRESSED_BITS_PER_PIXEL;
      public static final int TAG_COMPRESSION;
      public static final int TAG_CONTRAST;
      public static final int TAG_COPYRIGHT;
      public static final int TAG_CUSTOM_RENDERED;
      public static final int TAG_DATE_TIME;
      public static final int TAG_DATE_TIME_DIGITIZED;
      public static final int TAG_DATE_TIME_ORIGINAL;
      public static final int TAG_DEVICE_SETTING_DESCRIPTION;
      public static final int TAG_DIGITAL_ZOOM_RATIO;
      public static final int TAG_EXIF_IFD;
      public static final int TAG_EXIF_VERSION;
      public static final int TAG_EXPOSURE_BIAS_VALUE;
      public static final int TAG_EXPOSURE_INDEX;
      public static final int TAG_EXPOSURE_MODE;
      public static final int TAG_EXPOSURE_PROGRAM;
      public static final int TAG_EXPOSURE_TIME;
      public static final int TAG_FILE_SOURCE;
      public static final int TAG_FLASH;
      public static final int TAG_FLASHPIX_VERSION;
      public static final int TAG_FLASH_ENERGY;
      public static final int TAG_FOCAL_LENGTH;
      public static final int TAG_FOCAL_LENGTH_IN_35_MM_FILE;
      public static final int TAG_FOCAL_PLANE_RESOLUTION_UNIT;
      public static final int TAG_FOCAL_PLANE_X_RESOLUTION;
      public static final int TAG_FOCAL_PLANE_Y_RESOLUTION;
      public static final int TAG_F_NUMBER;
      public static final int TAG_GAIN_CONTROL;
      public static final int TAG_GPS_ALTITUDE;
      public static final int TAG_GPS_ALTITUDE_REF;
      public static final int TAG_GPS_AREA_INFORMATION;
      public static final int TAG_GPS_DATE_STAMP;
      public static final int TAG_GPS_DEST_BEARING;
      public static final int TAG_GPS_DEST_BEARING_REF;
      public static final int TAG_GPS_DEST_DISTANCE;
      public static final int TAG_GPS_DEST_DISTANCE_REF;
      public static final int TAG_GPS_DEST_LATITUDE;
      public static final int TAG_GPS_DEST_LATITUDE_REF;
      public static final int TAG_GPS_DEST_LONGITUDE;
      public static final int TAG_GPS_DEST_LONGITUDE_REF;
      public static final int TAG_GPS_DIFFERENTIAL;
      public static final int TAG_GPS_DOP;
      public static final int TAG_GPS_IFD;
      public static final int TAG_GPS_IMG_DIRECTION;
      public static final int TAG_GPS_IMG_DIRECTION_REF;
      public static final int TAG_GPS_LATITUDE;
      public static final int TAG_GPS_LATITUDE_REF;
      public static final int TAG_GPS_LONGITUDE;
      public static final int TAG_GPS_LONGITUDE_REF;
      public static final int TAG_GPS_MAP_DATUM;
      public static final int TAG_GPS_MEASURE_MODE;
      public static final int TAG_GPS_PROCESSING_METHOD;
      public static final int TAG_GPS_SATTELLITES;
      public static final int TAG_GPS_SPEED;
      public static final int TAG_GPS_SPEED_REF;
      public static final int TAG_GPS_STATUS;
      public static final int TAG_GPS_TIME_STAMP;
      public static final int TAG_GPS_TRACK;
      public static final int TAG_GPS_TRACK_REF;
      public static final int TAG_GPS_VERSION_ID;
      public static final int TAG_IMAGE_DESCRIPTION;
      public static final int TAG_IMAGE_LENGTH;
      public static final int TAG_IMAGE_UNIQUE_ID;
      public static final int TAG_IMAGE_WIDTH;
      public static final int TAG_INTEROPERABILITY_IFD;
      public static final int TAG_INTEROPERABILITY_INDEX;
      public static final int TAG_ISO_SPEED_RATINGS;
      public static final int TAG_JPEG_INTERCHANGE_FORMAT;
      public static final int TAG_JPEG_INTERCHANGE_FORMAT_LENGTH;
      public static final int TAG_JPEG_LENGTH;
      public static final int TAG_LIGHT_SOURCE;
      public static final int TAG_MAKE;
      public static final int TAG_MAKER_NOTE;
      public static final int TAG_MAX_APERTURE_VALUE;
      public static final int TAG_METERING_MODE;
      public static final int TAG_MODEL;
      public static final int TAG_OECF;
      public static final int TAG_OFFSET_TIME_ORIGINAL;
      public static final int TAG_ORIENTATION;
      public static final int TAG_PHOTOMETRIC_INTERPRETATION;
      public static final int TAG_PIXEL_X_DIMENSION;
      public static final int TAG_PIXEL_Y_DIMENSION;
      public static final int TAG_PLANAR_CONFIGURATION;
      public static final int TAG_PRIMARY_CHROMATICITIES;
      public static final int TAG_REFERENCE_BLACK_WHITE;
      public static final int TAG_RELATED_SOUND_FILE;
      public static final int TAG_RESOLUTION_UNIT;
      public static final int TAG_ROWS_PER_STRIP;
      public static final int TAG_SAMPLES_PER_PIXEL;
      public static final int TAG_SATURATION;
      public static final int TAG_SCENE_CAPTURE_TYPE;
      public static final int TAG_SCENE_TYPE;
      public static final int TAG_SENSING_METHOD;
      public static final int TAG_SHARPNESS;
      public static final int TAG_SHUTTER_SPEED_VALUE;
      public static final int TAG_SOFTWARE;
      public static final int TAG_SPATIAL_FREQUENCY_RESPONSE;
      public static final int TAG_SPECTRAL_SENSITIVITY;
      public static final int TAG_STRIP_BYTE_COUNTS;
      public static final int TAG_STRIP_OFFSETS;
      public static final int TAG_SUBJECT_AREA;
      public static final int TAG_SUBJECT_DISTANCE;
      public static final int TAG_SUBJECT_DISTANCE_RANGE;
      public static final int TAG_SUBJECT_LOCATION;
      public static final int TAG_SUB_SEC_TIME;
      public static final int TAG_SUB_SEC_TIME_DIGITIZED;
      public static final int TAG_SUB_SEC_TIME_ORIGINAL;
      public static final int TAG_TRANSFER_FUNCTION;
      public static final int TAG_USER_COMMENT;
      public static final int TAG_WHITE_BALANCE;
      public static final int TAG_WHITE_POINT;
      public static final int TAG_X_RESOLUTION;
      public static final int TAG_Y_CB_CR_COEFFICIENTS;
      public static final int TAG_Y_CB_CR_POSITIONING;
      public static final int TAG_Y_CB_CR_SUB_SAMPLING;
      public static final int TAG_Y_RESOLUTION;
      private ExifData mData;
      private final DateFormat mDateTimeStampFormat;
      private final DateFormat mGPSDateStampFormat;
      private final Calendar mGPSTimeStampCalendar;
      private final DateFormat mOffsetTimeStampFormat;
      private SparseIntArray mTagInfo;
      protected static HashSet sBannedDefines;
      private static HashSet sOffsetTags;
/*
 * Declared Constructors.
 */
    public ExifInterface() { ... }
    public boolean addDateTimeStampTag(int, long, TimeZone) { ... }
    public boolean addGpsDateTimeStampTag(long) { ... }
    public boolean addGpsTags(double, double) { ... }
    public boolean addOffsetTimeStampTag(int, long, TimeZone) { ... }
    public ExifTag buildTag(int, int, Object) { ... }
    public ExifTag buildTag(int, Object) { ... }
    protected ExifTag buildUninitializedTag(int) { ... }
    protected static void closeSilently(Closeable) { ... }
    public static int defineTag(int, short) { ... }
    protected static int getAllowedIfdFlagsFromInfo(int) { ... }
    protected static int getComponentCountFromInfo(int) { ... }
    public int getDefinedTagDefaultIfd(int) { ... }
    public OutputStream getExifWriterStream(OutputStream) { ... }
    public OutputStream getExifWriterStream(String)  throws FileNotFoundException{ ... }
    protected static int getFlagsFromAllowedIfds(int[]) { ... }
    public static short getOrientationValueForRotation(int) { ... }
    public static int getRotationForOrientationValue(short) { ... }
    public ExifTag getTag(int, int) { ... }
    protected SparseIntArray getTagInfo() { ... }
    public Integer getTagIntValue(int) { ... }
    public Integer getTagIntValue(int, int) { ... }
    public int[] getTagIntValues(int, int) { ... }
    public Bitmap getThumbnailBitmap() { ... }
    public static int getTrueIfd(int) { ... }
    public static short getTrueTagKey(int) { ... }
    protected static short getTypeFromInfo(int) { ... }
    private void initTagInfo() { ... }
    protected static boolean isIfdAllowed(int, int) { ... }
    protected static boolean isOffsetTag(short) { ... }
    public void readExif(InputStream)  throws IOException{ ... }
    public void readExif(String)  throws FileNotFoundExceptionIOException{ ... }
    public void readExif(byte[])  throws IOException{ ... }
    public boolean rewriteExif(String, Collection)  throws FileNotFoundExceptionIOException{ ... }
    public boolean rewriteExif(ByteBuffer, Collection)  throws IOException{ ... }
    public ExifTag setTag(ExifTag) { ... }
    public boolean setTagValue(int, int, Object) { ... }
    public boolean setTagValue(int, Object) { ... }
    private static Rational[] toExifLatLong(double) { ... }
    public void writeExif(byte[], OutputStream)  throws IOException{ ... }
    public void writeExif(byte[], String)  throws FileNotFoundExceptionIOException{ ... }

} 