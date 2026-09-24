package com.android.systemui.mediaprojection.appselector.view;
import com.android.systemui.shared.recents.model.ThumbnailData;
import android.graphics.Paint;
import android.graphics.BitmapShader;
import com.android.systemui.shared.recents.utilities.PreviewPositionHelper;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Canvas;
import kotlin.jvm.internal.DefaultConstructorMarker;
import com.android.systemui.mediaprojection.appselector.data.RecentTask;
import android.view.WindowManager;

public final class MediaProjectionTaskView extends View
{
/*
 * Field Definitions.
 */
      public final Paint backgroundPaint;
      public BitmapShader bitmapShader;
      public final int cornerRadius;
      public final Paint paint;
      public final PreviewPositionHelper previewPositionHelper;
      public final Rect previewRect;
      public RecentTask task;
      public ThumbnailData thumbnailData;
      public final WindowManager windowManager;
/*
 * Declared Constructors.
 */
    public MediaProjectionTaskView(Context) { ... }
    public MediaProjectionTaskView(Context, AttributeSet) { ... }
    public MediaProjectionTaskView(Context, AttributeSet, int) { ... }
    public MediaProjectionTaskView(Context, AttributeSet, int, int, DefaultConstructorMarker) { ... }
    public final void bindTask(RecentTask, ThumbnailData) { ... }
    public final void onDraw(Canvas) { ... }
    public final void onSizeChanged(int, int, int, int) { ... }
    public final void updateThumbnailMatrix() { ... }

} 