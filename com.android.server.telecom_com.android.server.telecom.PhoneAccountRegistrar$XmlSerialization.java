package com.android.server.telecom;
import org.xmlpull.v1.XmlSerializer;
import org.xmlpull.v1.XmlPullParserException;
import java.util.List;
import android.content.Context;
import org.xmlpull.v1.XmlPullParser;
import android.os.Bundle;
import java.io.IOException;
import android.graphics.drawable.Icon;
import java.lang.Object;
import java.lang.String;
import android.graphics.Bitmap;

public abstract static class PhoneAccountRegistrar$XmlSerialization extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public PhoneAccountRegistrar$XmlSerialization() { ... }
    protected Bitmap readBitmap(XmlPullParser) { ... }
    protected Bundle readBundle(XmlPullParser)  throws IOExceptionXmlPullParserException{ ... }
    public abstract Object readFromXml(XmlPullParser, int, Context)  throws IOExceptionXmlPullParserException{ ... }
    protected Icon readIcon(XmlPullParser)  throws IOException{ ... }
    protected List readStringList(XmlPullParser)  throws IOExceptionXmlPullParserException{ ... }
    protected void writeBundle(String, Bundle, XmlSerializer)  throws IOException{ ... }
    protected void writeIconIfNonNull(String, Icon, XmlSerializer)  throws IOException{ ... }
    public static String writeIconToBase64String(Icon)  throws IOException{ ... }
    protected void writeLong(String, long, XmlSerializer)  throws IOException{ ... }
    protected void writeNonNullString(String, String, XmlSerializer)  throws IOException{ ... }
    protected void writeStringList(String, List, XmlSerializer)  throws IOException{ ... }
    protected void writeTextIfNonNull(String, Object, XmlSerializer)  throws IOException{ ... }
    public abstract void writeToXml(Object, XmlSerializer, Context)  throws IOException{ ... }

} 