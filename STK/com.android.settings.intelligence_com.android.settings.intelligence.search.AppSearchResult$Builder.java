package com.android.settings.intelligence.search;
import com.android.settings.intelligence.search.AppSearchResult;
import com.android.settings.intelligence.search.SearchResult$Builder;
import android.content.pm.ApplicationInfo;
import com.android.settings.intelligence.search.SearchResult;

public static class AppSearchResult$Builder extends SearchResult$Builder
{
/*
 * Field Definitions.
 */
      protected ApplicationInfo mInfo;
/*
 * Declared Constructors.
 */
    public AppSearchResult$Builder() { ... }
    public AppSearchResult build() { ... }
    public volatile SearchResult build() { ... }
    public SearchResult$Builder setAppInfo(ApplicationInfo) { ... }

} 