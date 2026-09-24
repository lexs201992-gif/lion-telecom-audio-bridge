package com.android.systemui.statusbar.dagger;
import dagger.Lazy;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import android.app.WallpaperManager;
import android.hardware.display.DisplayManager;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.NotificationMediaManager;
import android.content.Context;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.MediaArtworkProcessor;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.colorextraction.SysuiColorExtractor;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.util.concurrency.DelayableExecutor;

public abstract class CentralSurfacesDependenciesModule_ProvideNotificationMediaManagerFactory extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public static NotificationMediaManager provideNotificationMediaManager(Context, Lazy, Lazy, NotificationVisibilityProvider, MediaArtworkProcessor, KeyguardBypassController, NotifPipeline, NotifCollection, DelayableExecutor, MediaDataManager, StatusBarStateController, SysuiColorExtractor, KeyguardStateController, DumpManager, WallpaperManager, DisplayManager) { ... }

} 