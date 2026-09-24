package com.google.zxing.oned.rss.expanded.decoders;
import com.google.zxing.oned.rss.expanded.decoders.BlockParsedResult;
import java.lang.StringBuilder;
import com.google.zxing.oned.rss.expanded.decoders.DecodedChar;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.expanded.decoders.CurrentParsingState;
import com.google.zxing.NotFoundException;
import com.google.zxing.oned.rss.expanded.decoders.DecodedNumeric;
import com.google.zxing.FormatException;
import java.lang.String;
import com.google.zxing.oned.rss.expanded.decoders.DecodedInformation;

final class GeneralAppIdDecoder extends Object
{
/*
 * Field Definitions.
 */
      private final StringBuilder buffer;
      private final CurrentParsingState current;
      private final BitArray information;
/*
 * Declared Constructors.
 */
     GeneralAppIdDecoder(BitArray) { ... }
     String decodeAllCodes(StringBuilder, int)  throws NotFoundExceptionFormatException{ ... }
    private DecodedChar decodeAlphanumeric(int) { ... }
     DecodedInformation decodeGeneralPurposeField(int, String)  throws FormatException{ ... }
    private DecodedChar decodeIsoIec646(int)  throws FormatException{ ... }
    private DecodedNumeric decodeNumeric(int)  throws FormatException{ ... }
     int extractNumericValueFromBitArray(int, int) { ... }
    static int extractNumericValueFromBitArray(BitArray, int, int) { ... }
    private boolean isAlphaOr646ToNumericLatch(int) { ... }
    private boolean isAlphaTo646ToAlphaLatch(int) { ... }
    private boolean isNumericToAlphaNumericLatch(int) { ... }
    private boolean isStillAlpha(int) { ... }
    private boolean isStillIsoIec646(int) { ... }
    private boolean isStillNumeric(int) { ... }
    private BlockParsedResult parseAlphaBlock() { ... }
    private DecodedInformation parseBlocks()  throws FormatException{ ... }
    private BlockParsedResult parseIsoIec646Block()  throws FormatException{ ... }
    private BlockParsedResult parseNumericBlock()  throws FormatException{ ... }

} 