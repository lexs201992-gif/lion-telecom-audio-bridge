package androidx.emoji2.text;
import androidx.emoji2.text.SpannableBuilder$WatcherWrapper;
import java.util.List;
import java.lang.Class;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.lang.CharSequence;
import java.io.IOException;
import java.lang.Object;
import java.lang.Appendable;

public final class SpannableBuilder extends SpannableStringBuilder
{
/*
 * Field Definitions.
 */
      private final Class mWatcherClass;
      private final List mWatchers;
/*
 * Declared Constructors.
 */
     SpannableBuilder(Class, CharSequence) { ... }
     SpannableBuilder(Class, CharSequence, int, int) { ... }
    public volatile Editable append(char) { ... }
    public volatile Editable append(CharSequence) { ... }
    public volatile Editable append(CharSequence, int, int) { ... }
    public SpannableStringBuilder append(char) { ... }
    public SpannableStringBuilder append(CharSequence) { ... }
    public SpannableStringBuilder append(CharSequence, int, int) { ... }
    public SpannableStringBuilder append(CharSequence, Object, int) { ... }
    public volatile Appendable append(char)  throws IOException{ ... }
    public volatile Appendable append(CharSequence)  throws IOException{ ... }
    public volatile Appendable append(CharSequence, int, int)  throws IOException{ ... }
    public void beginBatchEdit() { ... }
    private void blockWatchers() { ... }
    public static SpannableBuilder create(Class, CharSequence) { ... }
    public volatile Editable delete(int, int) { ... }
    public SpannableStringBuilder delete(int, int) { ... }
    public void endBatchEdit() { ... }
    private void fireWatchers() { ... }
    public int getSpanEnd(Object) { ... }
    public int getSpanFlags(Object) { ... }
    public int getSpanStart(Object) { ... }
    public Object[] getSpans(int, int, Class) { ... }
    private SpannableBuilder$WatcherWrapper getWatcherFor(Object) { ... }
    public volatile Editable insert(int, CharSequence) { ... }
    public volatile Editable insert(int, CharSequence, int, int) { ... }
    public SpannableStringBuilder insert(int, CharSequence) { ... }
    public SpannableStringBuilder insert(int, CharSequence, int, int) { ... }
    private boolean isWatcher(Class) { ... }
    private boolean isWatcher(Object) { ... }
    public int nextSpanTransition(int, int, Class) { ... }
    public void removeSpan(Object) { ... }
    public volatile Editable replace(int, int, CharSequence) { ... }
    public volatile Editable replace(int, int, CharSequence, int, int) { ... }
    public SpannableStringBuilder replace(int, int, CharSequence) { ... }
    public SpannableStringBuilder replace(int, int, CharSequence, int, int) { ... }
    public void setSpan(Object, int, int, int) { ... }
    public CharSequence subSequence(int, int) { ... }
    private void unblockwatchers() { ... }

} 