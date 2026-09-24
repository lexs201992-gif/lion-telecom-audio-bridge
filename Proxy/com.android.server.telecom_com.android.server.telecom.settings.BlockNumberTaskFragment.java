package com.android.server.telecom.settings;
import java.lang.String;
import android.os.Bundle;
import com.android.server.telecom.settings.BlockNumberTaskFragment$BlockNumberTask;
import com.android.server.telecom.settings.BlockNumberTaskFragment$Listener;

public class BlockNumberTaskFragment extends Fragment
{
/*
 * Field Definitions.
 */
       BlockNumberTaskFragment$Listener mListener;
      private BlockNumberTaskFragment$BlockNumberTask mTask;
/*
 * Declared Constructors.
 */
    public BlockNumberTaskFragment() { ... }
    static volatile void -$$Nest$fputmTask(BlockNumberTaskFragment, BlockNumberTaskFragment$BlockNumberTask) { ... }
    public void blockIfNotAlreadyBlocked(String, BlockNumberTaskFragment$Listener) { ... }
    public void onCreate(Bundle) { ... }
    public void onDestroy() { ... }

} 