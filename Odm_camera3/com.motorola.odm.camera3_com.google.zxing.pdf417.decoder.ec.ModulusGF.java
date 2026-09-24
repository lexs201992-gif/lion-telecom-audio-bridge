package com.google.zxing.pdf417.decoder.ec;
import com.google.zxing.pdf417.decoder.ec.ModulusPoly;

public final class ModulusGF extends Object
{
/*
 * Field Definitions.
 */
      public static final ModulusGF PDF417_GF;
      private final int[] expTable;
      private final int[] logTable;
      private final int modulus;
      private final ModulusPoly one;
      private final ModulusPoly zero;
/*
 * Declared Constructors.
 */
    private ModulusGF(int, int) { ... }
     int add(int, int) { ... }
     ModulusPoly buildMonomial(int, int) { ... }
     int exp(int) { ... }
     ModulusPoly getOne() { ... }
     int getSize() { ... }
     ModulusPoly getZero() { ... }
     int inverse(int) { ... }
     int log(int) { ... }
     int multiply(int, int) { ... }
     int subtract(int, int) { ... }

} 