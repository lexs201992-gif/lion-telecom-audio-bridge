package com.android.server.telecom.settings;
import java.lang.String;
import android.content.Context;
import android.view.View;
import android.database.Cursor;

public class BlockedNumbersAdapter extends SimpleCursorAdapter
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public BlockedNumbersAdapter(Context, int, Cursor, String[], int[], int) { ... }
    static volatile void -$$Nest$mdeleteBlockedNumber(BlockedNumbersAdapter, Context, String) { ... }
    static volatile void -$$Nest$mshowDeleteBlockedNumberDialog(BlockedNumbersAdapter, Context, String, String) { ... }
    public void bindView(View, Context, Cursor) { ... }
    private void deleteBlockedNumber(Context, String) { ... }
    private void showDeleteBlockedNumberDialog(Context, String, String) { ... }

} 