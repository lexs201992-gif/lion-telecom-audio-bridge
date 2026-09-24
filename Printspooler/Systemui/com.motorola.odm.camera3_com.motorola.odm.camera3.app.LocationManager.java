package com.motorola.odm.camera3.app;
import com.motorola.odm.camera3.app.LocationProvider;
import com.motorola.odm.camera3.debug.Log$Tag;
import android.location.Location;

public class LocationManager extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
       LocationProvider mLocationProvider;
      private boolean mRecordLocation;
/*
 * Declared Constructors.
 */
    public LocationManager() { ... }
    public void disconnect() { ... }
    public Location getCurrentLocation() { ... }
    public void recordLocation(boolean) { ... }

} 