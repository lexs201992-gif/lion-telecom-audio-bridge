package com.dolby.daxservice;
import android.os.Handler;
import android.content.Context;
import android.os.IBinder;

public class AudioServerWatchDog extends Object
{
/*
 * Field Definitions.
 */
      private IBinder audioFlinger;
      private Context context;
      private boolean firstSetup;
      private Handler handler;
/*
 * Declared Constructors.
 */
    public AudioServerWatchDog(Context) { ... }
    public static void $r8$lambda$J5iDOSUn9_yfSnK4wFN9wCc47QQ(AudioServerWatchDog) { ... }
    public static void $r8$lambda$TLXixQUmRP032q5S6aZA-U9QRTs(AudioServerWatchDog) { ... }
    private boolean _setupAudioServerWatchDog() { ... }
    public void destroy() { ... }
    private void onAudioFlingerDied() { ... }
    private void rescheduleSetupTask() { ... }
    private void sendAudioServerRestartedBroadcast() { ... }
    public void setup() { ... }
    private void setupAudioServerWatchDog() { ... }

} 