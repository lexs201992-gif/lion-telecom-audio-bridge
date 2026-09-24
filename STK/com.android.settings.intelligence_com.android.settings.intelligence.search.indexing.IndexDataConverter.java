package com.android.settings.intelligence.search.indexing;
import com.android.settings.intelligence.search.indexing.PreIndexData;
import com.android.settings.intelligence.search.SearchIndexableRaw;
import java.util.Set;
import java.util.List;
import android.content.Context;
import java.util.Map;
import com.android.settings.intelligence.search.indexing.IndexData;
import java.lang.String;
import android.provider.SearchIndexableResource;
import com.android.settings.intelligence.search.indexing.IndexData$Builder;

public class IndexDataConverter extends Object
{
/*
 * Field Definitions.
 */
      private static final List SKIP_NODES;
/*
 * Declared Constructors.
 */
    public IndexDataConverter() { ... }
    public List convertPreIndexDataToIndexData(PreIndexData) { ... }
    private IndexData convertRaw(String, SearchIndexableRaw, Set) { ... }
    private List convertResource(SearchIndexableResource, String, Set) { ... }
    public List convertSiteMapPairs(List, List) { ... }
    protected IndexData$Builder getIndexDataBuilder() { ... }
    private Set getNonIndexableKeysForResource(Map, String) { ... }
    private void tryAddIndexDataToList(List, IndexData$Builder) { ... }
    public List updateIndexDataPayload(Context, List) { ... }

} 