package com.android.settings.intelligence.search.indexing;
import com.android.settings.intelligence.search.indexing.PreIndexData;
import java.util.List;
import com.android.settings.intelligence.search.indexing.IndexingCallback;
import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import com.android.settings.intelligence.search.indexing.PreIndexDataCollector;
import java.util.Map;
import android.database.sqlite.SQLiteDatabase;
import com.android.settings.intelligence.search.indexing.IndexDataConverter;
import java.lang.String;

public class DatabaseIndexingManager extends Object
{
/*
 * Field Definitions.
 */
      private PreIndexDataCollector mCollector;
      private Context mContext;
      private IndexDataConverter mConverter;
      final AtomicBoolean mIsIndexingComplete;
/*
 * Declared Constructors.
 */
    public DatabaseIndexingManager(Context) { ... }
    static volatile Context -$$Nest$fgetmContext(DatabaseIndexingManager) { ... }
    private List getIndexData(PreIndexData) { ... }
    protected IndexDataConverter getIndexDataConverter() { ... }
     PreIndexData getIndexDataFromProviders(List, boolean) { ... }
    private String getKeyWhereClause(String) { ... }
    private List getSiteMapPairs(List, List) { ... }
    private SQLiteDatabase getWritableDatabase() { ... }
    public void indexDatabase(IndexingCallback) { ... }
    private void insertIndexData(SQLiteDatabase, List) { ... }
    private void insertSiteMapData(SQLiteDatabase, List) { ... }
    public boolean isIndexingComplete() { ... }
    public void performIndexing() { ... }
    private void rebuildDatabase() { ... }
     void updateDataInDatabase(SQLiteDatabase, Map) { ... }
     void updateDatabase(PreIndexData, boolean) { ... }
    private List updateIndexDataPayload(Context, List) { ... }

} 