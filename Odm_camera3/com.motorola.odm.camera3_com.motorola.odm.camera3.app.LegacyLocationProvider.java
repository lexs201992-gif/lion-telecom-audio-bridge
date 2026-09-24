package com.motorola.odm.camera3.app;
import com.motorola.odm.camera3.debug.Log$Tag;
import android.location.LocationManager;
import android.location.Location;
import com.motorola.odm.camera3.app.LegacyLocationProvider$LocationListener;

public class LegacyLocationProvider extends Object
{
/*
 * Field Definitions.
 */
      private static final Log$Tag TAG;
       LegacyLocationProvider$LocationListener[] mLocationListeners;
      private LocationManager mLocationManager;
      private boolean mRecordLocation;
/*
 * Declared Constructors.
 */
    public LegacyLocationProvider() { ... }
    static volatile Log$Tag -$$Nest$sfgetTAG() { ... }
    public void disconnect() { ... }
    public Location getCurrentLocation() { ... }
    public void recordLocation(boolean) { ... }
    private void startReceivingLocationUpdates() { ... }
    private void stopReceivingLocationUpdates() { ... }

} 