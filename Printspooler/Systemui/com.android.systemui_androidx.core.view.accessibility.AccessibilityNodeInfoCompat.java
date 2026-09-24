package androidx.core.view.accessibility;
import java.lang.String;
import java.lang.Object;
import java.lang.CharSequence;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import android.graphics.Rect;
import java.util.List;
import android.view.accessibility.AccessibilityNodeInfo;

public final class AccessibilityNodeInfoCompat extends Object
{
/*
 * Field Definitions.
 */
      public final AccessibilityNodeInfo mInfo;
      public int mParentVirtualDescendantId;
      public int mVirtualDescendantId;
/*
 * Declared Constructors.
 */
    public AccessibilityNodeInfoCompat(AccessibilityNodeInfo) { ... }
    public final void addAction(int) { ... }
    public final void addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat) { ... }
    public final boolean equals(Object) { ... }
    public final List extrasIntList(String) { ... }
    public final List getActionList() { ... }
    public static String getActionSymbolicName(int) { ... }
    public final CharSequence getText() { ... }
    public final int hashCode() { ... }
    public final void removeAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat) { ... }
    public final void setBoundsInParent(Rect) { ... }
    public final void setClassName(CharSequence) { ... }
    public final void setCollectionInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat) { ... }
    public final void setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat) { ... }
    public final void setContentDescription(CharSequence) { ... }
    public final void setScrollable(boolean) { ... }
    public final String toString() { ... }

} 