package com.android.settings.intelligence.search;
import com.android.settings.intelligence.search.savedqueries.SavedQueryLoader;
import com.android.settings.intelligence.search.sitemap.SiteMapManager;
import java.util.List;
import com.android.settings.intelligence.search.indexing.IndexingCallback;
import android.content.Context;
import com.android.settings.intelligence.search.SearchResult;
import android.view.View;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import com.android.settings.intelligence.search.SearchResultLoader;
import java.lang.String;
import com.android.settings.intelligence.search.SearchFragment;

public abstract interface SearchFeatureProvider
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract ExecutorService getExecutorService() { ... }
    public abstract FutureTask getRankerTask(Context, String) { ... }
    public abstract SavedQueryLoader getSavedQueryLoader(Context) { ... }
    public abstract List getSearchQueryTasks(Context, String) { ... }
    public abstract SearchResultLoader getSearchResultLoader(Context, String) { ... }
    public abstract SiteMapManager getSiteMapManager() { ... }
    public abstract void hideFeedbackButton(View) { ... }
    public abstract void initFeedbackButton() { ... }
    public abstract boolean isIndexingComplete(Context) { ... }
    public abstract boolean isSmartSearchRankingEnabled(Context) { ... }
    public abstract void searchRankingWarmup(Context) { ... }
    public abstract void searchResultClicked(Context, String, SearchResult) { ... }
    public abstract void showFeedbackButton(SearchFragment, View) { ... }
    public abstract long smartSearchRankingTimeoutMs(Context) { ... }
    public abstract void updateIndexAsync(Context, IndexingCallback) { ... }

} 