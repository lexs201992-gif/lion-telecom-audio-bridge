package com.android.settings.intelligence.search;
import java.lang.String;
import android.widget.ImageView;
import android.view.View;
import android.widget.TextView;
import com.android.settings.intelligence.search.SearchResult;
import com.android.settings.intelligence.search.SearchFeatureProvider;
import com.android.settings.intelligence.search.SearchFragment;

public abstract class SearchViewHolder extends RecyclerView$ViewHolder
{
/*
 * Field Definitions.
 */
      private final String DYNAMIC_PLACEHOLDER;
      public final TextView breadcrumbView;
      public final ImageView iconView;
      private final String mPlaceholderSummary;
      protected final SearchFeatureProvider mSearchFeatureProvider;
      public final TextView summaryView;
      public final TextView titleView;
/*
 * Declared Constructors.
 */
    public SearchViewHolder(View) { ... }
    private void bindBreadcrumbView(SearchResult) { ... }
    public abstract int getClickActionMetricName() { ... }
    public void onBind(SearchFragment, SearchResult) { ... }

} 