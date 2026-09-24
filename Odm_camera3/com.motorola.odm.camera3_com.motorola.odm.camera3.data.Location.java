package com.motorola.odm.camera3.data;
import java.lang.String;
import java.lang.Object;

public final class Location extends Object
{
/*
 * Field Definitions.
 */
      public static final Location UNKNOWN;
      public static final Location ZERO;
      private final double mLatitude;
      private final double mLongitude;
/*
 * Declared Constructors.
 */
    private Location(double, double) { ... }
    public boolean equals(Object) { ... }
    public static Location from(double, double) { ... }
    public String getLocationString() { ... }
    public int hashCode() { ... }
    public String toString() { ... }

} 