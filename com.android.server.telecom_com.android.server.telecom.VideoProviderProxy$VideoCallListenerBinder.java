package com.android.server.telecom;
import android.telecom.VideoProfile$CameraCapabilities;
import com.android.server.telecom.VideoProviderProxy;
import android.telecom.VideoProfile;

public final class VideoProviderProxy$VideoCallListenerBinder extends IVideoCallback$Stub
{
/*
 * Field Definitions.
 */
      final VideoProviderProxy this$0;
/*
 * Declared Constructors.
 */
    public VideoProviderProxy$VideoCallListenerBinder(VideoProviderProxy) { ... }
    public void changeCallDataUsage(long) { ... }
    public void changeCameraCapabilities(VideoProfile$CameraCapabilities) { ... }
    public void changePeerDimensions(int, int) { ... }
    public void changeVideoQuality(int) { ... }
    public void handleCallSessionEvent(int) { ... }
    public void receiveSessionModifyRequest(VideoProfile) { ... }
    public void receiveSessionModifyResponse(int, VideoProfile, VideoProfile) { ... }

} 