package com.android.settings.intelligence.search.indexing;
import com.android.settings.intelligence.search.indexing.IndexData$Builder;
import java.lang.String;
import java.util.regex.Pattern;

public class IndexData extends Object
{
/*
 * Field Definitions.
 */
      private static final Pattern REMOVE_DIACRITICALS_PATTERN;
      public final String authority;
      public final String childClassName;
      public final String className;
      public final boolean enabled;
      public final String entries;
      public final String highlightableMenuKey;
      public final int iconResId;
      public final String intentAction;
      public final String intentTargetClass;
      public final String intentTargetPackage;
      public final String key;
      public final String locale;
      private final IndexData$Builder mBuilder;
      public final String normalizedSummaryOn;
      public final String normalizedTitle;
      public final String packageName;
      public final byte[] payload;
      public final int payloadType;
      public final String screenTitle;
      public final String spaceDelimitedKeywords;
      public final String topLevelMenuKey;
      public final String updatedSummaryOn;
      public final String updatedTitle;
/*
 * Declared Constructors.
 */
    protected IndexData(IndexData$Builder) { ... }
    public IndexData$Builder mutate() { ... }
    public static String normalizeHyphen(String) { ... }
    public static String normalizeJapaneseString(String) { ... }
    public static String normalizeKeywords(String) { ... }
    public static String normalizeString(String) { ... }
    public String toString() { ... }

} 