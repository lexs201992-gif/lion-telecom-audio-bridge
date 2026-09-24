package com.sprd.camera.encoder.interfaces;
import java.lang.String;
import com.sprd.camera.encoder.interfaces.Buffer$BufferCallBack;
import java.util.ArrayList;
import com.sprd.camera.encoder.interfaces.MediaDataStruct;
import java.util.concurrent.ConcurrentHashMap;

public class Buffer extends Object
{
/*
 * Field Definitions.
 */
      private String TAG;
      volatile boolean isRecording;
       ConcurrentHashMap mBufferHashMap;
       ArrayList mBufferIndex;
       Buffer$BufferCallBack mCallBack;
       long mMaxRecordTimeUS;
       long mMinRecordTimeUS;
       long mRecordTimeUS;
/*
 * Declared Constructors.
 */
    public Buffer(String) { ... }
    public synchronized void queueData(MediaDataStruct) { ... }
    public synchronized long record(long) { ... }
    public void setCallBack(Buffer$BufferCallBack) { ... }
    public synchronized void stop() { ... }
    public void stopRecord() { ... }

} 