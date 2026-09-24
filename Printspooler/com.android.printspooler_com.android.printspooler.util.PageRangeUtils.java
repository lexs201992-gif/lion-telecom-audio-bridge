package com.android.printspooler.util;
import android.util.Pair;
import java.lang.CharSequence;
import android.print.PageRange;
import java.util.Comparator;

public final class PageRangeUtils extends Object
{
/*
 * Field Definitions.
 */
      private static final PageRange[] ALL_PAGES_RANGE;
      private static final Comparator sComparator;
/*
 * Declared Constructors.
 */
    public static PageRange asAbsoluteRange(PageRange, int) { ... }
    public static PageRange[] computeWhichPagesInFileToPrint(PageRange[], PageRange[], int) { ... }
    public static boolean contains(PageRange[], int) { ... }
    public static boolean contains(PageRange[], PageRange[], int) { ... }
    public static int getNormalizedPageCount(PageRange[], int) { ... }
    public static boolean isAllPages(PageRange) { ... }
    public static boolean isAllPages(PageRange, int) { ... }
    public static boolean isAllPages(PageRange[]) { ... }
    public static boolean isAllPages(PageRange[], int) { ... }
    public static PageRange[] normalize(PageRange[]) { ... }
    public static void offset(PageRange[], int) { ... }
    public static PageRange[] parsePageRanges(CharSequence, int) { ... }
    private static Pair readChar(CharSequence, int, char) { ... }
    private static Pair readNumber(CharSequence, int) { ... }
    private static Pair readRange(CharSequence, int, int) { ... }
    private static int readWhiteSpace(CharSequence, int) { ... }

} 