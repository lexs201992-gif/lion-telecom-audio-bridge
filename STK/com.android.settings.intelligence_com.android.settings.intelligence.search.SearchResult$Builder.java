package com.android.settings.intelligence.search;
import java.lang.String;
import java.lang.CharSequence;
import android.graphics.drawable.Drawable;
import com.android.settings.intelligence.search.ResultPayload;
import java.util.List;
import com.android.settings.intelligence.search.SearchResult;

public static class SearchResult$Builder extends Object
{
/*
 * Field Definitions.
 */
      private List mBreadcrumbs;
      private String mDataKey;
      private Drawable mIcon;
      private int mRank;
      private ResultPayload mResultPayload;
      private CharSequence mSummary;
      private CharSequence mTitle;
/*
 * Declared Constructors.
 */
    public SearchResult$Builder() { ... }
    static volatile List -$$Nest$fgetmBreadcrumbs(SearchResult$Builder) { ... }
    static volatile String -$$Nest$fgetmDataKey(SearchResult$Builder) { ... }
    static volatile Drawable -$$Nest$fgetmIcon(SearchResult$Builder) { ... }
    static volatile int -$$Nest$fgetmRank(SearchResult$Builder) { ... }
    static volatile ResultPayload -$$Nest$fgetmResultPayload(SearchResult$Builder) { ... }
    static volatile CharSequence -$$Nest$fgetmSummary(SearchResult$Builder) { ... }
    static volatile CharSequence -$$Nest$fgetmTitle(SearchResult$Builder) { ... }
    public SearchResult$Builder addBreadcrumbs(List) { ... }
    public SearchResult build() { ... }
    public SearchResult$Builder setDataKey(String) { ... }
    public SearchResult$Builder setIcon(Drawable) { ... }
    public SearchResult$Builder setPayload(ResultPayload) { ... }
    public SearchResult$Builder setRank(int) { ... }
    public SearchResult$Builder setSummary(CharSequence) { ... }
    public SearchResult$Builder setTitle(CharSequence) { ... }

} 