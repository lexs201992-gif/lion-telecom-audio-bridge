package com.android.settings.intelligence.search.query;
import java.lang.String;
import com.android.settings.intelligence.search.sitemap.SiteMapManager;
import android.content.Context;
import java.util.List;
import android.content.pm.PackageManager;
import com.android.settings.intelligence.search.query.SearchQueryTask;

public class InstalledAppResultTask extends SearchQueryTask$QueryWorker
{
/*
 * Field Definitions.
 */
      private List mBreadcrumb;
      private final PackageManager mPackageManager;
/*
 * Declared Constructors.
 */
    public InstalledAppResultTask(Context, SiteMapManager, String) { ... }
    private List getBreadCrumb() { ... }
    protected int getQueryWorkerId() { ... }
    private int getRank(int) { ... }
    public static SearchQueryTask newTask(Context, SiteMapManager, String) { ... }
    protected List query() { ... }

} 