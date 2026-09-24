package com.google.zxing.pdf417.decoder;
import com.google.zxing.ResultPoint;
import com.google.zxing.pdf417.decoder.BarcodeValue;
import com.google.zxing.pdf417.decoder.BoundingBox;
import com.google.zxing.pdf417.decoder.DetectionResultRowIndicatorColumn;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.pdf417.decoder.Codeword;
import com.google.zxing.NotFoundException;
import com.google.zxing.ChecksumException;
import com.google.zxing.pdf417.decoder.DetectionResult;
import com.google.zxing.pdf417.decoder.BarcodeMetadata;
import com.google.zxing.pdf417.decoder.ec.ErrorCorrection;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

public final class PDF417ScanningDecoder extends Object
{
/*
 * Field Definitions.
 */
      private static final ErrorCorrection errorCorrection;
/*
 * Declared Constructors.
 */
    private static BoundingBox adjustBoundingBox(DetectionResultRowIndicatorColumn)  throws NotFoundException{ ... }
    private static void adjustCodewordCount(DetectionResult, BarcodeValue[][])  throws NotFoundException{ ... }
    private static int adjustCodewordStartColumn(BitMatrix, int, int, boolean, int, int) { ... }
    private static boolean checkCodewordSkew(int, int, int) { ... }
    private static int correctErrors(int[], int[], int)  throws ChecksumException{ ... }
    private static BarcodeValue[][] createBarcodeMatrix(DetectionResult) { ... }
    private static DecoderResult createDecoderResult(DetectionResult)  throws FormatExceptionChecksumExceptionNotFoundException{ ... }
    private static DecoderResult createDecoderResultFromAmbiguousValues(int, int[], int[], int[], int[][])  throws FormatExceptionChecksumException{ ... }
    public static DecoderResult decode(BitMatrix, ResultPoint, ResultPoint, ResultPoint, ResultPoint, int, int)  throws NotFoundExceptionFormatExceptionChecksumException{ ... }
    private static DecoderResult decodeCodewords(int[], int, int[])  throws FormatExceptionChecksumException{ ... }
    private static Codeword detectCodeword(BitMatrix, int, int, boolean, int, int, int, int) { ... }
    private static BarcodeMetadata getBarcodeMetadata(DetectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn) { ... }
    private static int[] getBitCountForCodeword(int) { ... }
    private static int getCodewordBucketNumber(int) { ... }
    private static int getCodewordBucketNumber(int[]) { ... }
    private static int getMax(int[]) { ... }
    private static int[] getModuleBitCount(BitMatrix, int, int, boolean, int, int) { ... }
    private static int getNumberOfECCodeWords(int) { ... }
    private static DetectionResultRowIndicatorColumn getRowIndicatorColumn(BitMatrix, BoundingBox, ResultPoint, boolean, int, int) { ... }
    private static int getStartColumn(DetectionResult, int, int, boolean) { ... }
    private static boolean isValidBarcodeColumn(DetectionResult, int) { ... }
    private static DetectionResult merge(DetectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn)  throws NotFoundException{ ... }
    private static void verifyCodewordCount(int[], int)  throws FormatException{ ... }

} 