package com.android.systemui.monet.hct;

public abstract class HctSolver extends Object
{
/*
 * Field Definitions.
 */
      public static final double[] CRITICAL_PLANES;
      public static final double[][] LINRGB_FROM_SCALED_DISCOUNT;
      public static final double[][] SCALED_DISCOUNT_FROM_LINRGB;
      public static final double[] Y_FROM_LINRGB;
/*
 * Declared Constructors.
 */
    public static boolean areInCyclicOrder(double, double, double) { ... }
    public static double chromaticAdaptation(double) { ... }
    public static double hueOf(double[]) { ... }
    public static double inverseChromaticAdaptation(double) { ... }
    public static double trueDelinearized(double) { ... }

} 