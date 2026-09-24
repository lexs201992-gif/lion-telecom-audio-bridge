package androidx.emoji2.text;
import androidx.emoji2.text.MetadataRepo$Node;

public final class EmojiProcessor$ProcessorSm extends Object
{
/*
 * Field Definitions.
 */
      public int mCurrentDepth;
      public MetadataRepo$Node mCurrentNode;
      public final int[] mEmojiAsDefaultStyleExceptions;
      public MetadataRepo$Node mFlushNode;
      public int mLastCodepoint;
      public final MetadataRepo$Node mRootNode;
      public int mState;
      public final boolean mUseEmojiAsDefaultStyle;
/*
 * Declared Constructors.
 */
    public EmojiProcessor$ProcessorSm(MetadataRepo$Node, boolean, int[]) { ... }
    public final void reset() { ... }
    public final boolean shouldUseEmojiPresentationStyleForSingleCodepoint() { ... }

} 