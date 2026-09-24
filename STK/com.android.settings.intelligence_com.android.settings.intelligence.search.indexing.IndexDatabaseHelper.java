package com.android.settings.intelligence.search.indexing;
import java.lang.String;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.List;
import android.database.sqlite.SQLiteDatabase;

public class IndexDatabaseHelper extends SQLiteOpenHelper
{
/*
 * Field Definitions.
 */
      private static final String INSERT_BUILD_VERSION;
      static final String SHARED_PREFS_TAG;
      private final Context mContext;
      private static IndexDatabaseHelper sSingleton;
/*
 * Declared Constructors.
 */
    public IndexDatabaseHelper(Context) { ... }
    public static String $r8$lambda$J4KJuY89SRvTKjh6qlXAmjJGTx0() { ... }
    public static String $r8$lambda$ZQJU4DYN6prL3eiAuViQQPMhMf0() { ... }
    private void bootstrapDB(SQLiteDatabase) { ... }
    static String buildProviderVersionedNames(Context, List) { ... }
    private void dropTables(SQLiteDatabase) { ... }
    private static boolean enterpriseResourcesUpdated(Context, SharedPreferences) { ... }
    private String getBuildVersion(SQLiteDatabase) { ... }
    public static synchronized IndexDatabaseHelper getInstance(Context) { ... }
    static boolean isFullIndex(Context, List) { ... }
    private static String lambda$enterpriseResourcesUpdated$1() { ... }
    private static String lambda$setIndexed$0() { ... }
    public void onCreate(SQLiteDatabase) { ... }
    public void onDowngrade(SQLiteDatabase, int, int) { ... }
    public void onOpen(SQLiteDatabase) { ... }
    public void onUpgrade(SQLiteDatabase, int, int) { ... }
    public void reconstruct(SQLiteDatabase) { ... }
    static void setIndexed(Context, List) { ... }

} 