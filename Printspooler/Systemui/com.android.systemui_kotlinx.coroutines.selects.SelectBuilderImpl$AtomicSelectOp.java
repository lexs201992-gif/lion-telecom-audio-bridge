package kotlinx.coroutines.selects;
import java.lang.String;
import java.lang.Object;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$AbstractAtomicDesc;
import kotlinx.coroutines.channels.AbstractChannel$TryPollDesc;

public final class SelectBuilderImpl$AtomicSelectOp extends AtomicOp
{
/*
 * Field Definitions.
 */
      public final LockFreeLinkedListNode$AbstractAtomicDesc desc;
      public final SelectBuilderImpl impl;
      public final long opSequence;
/*
 * Declared Constructors.
 */
    public SelectBuilderImpl$AtomicSelectOp(SelectBuilderImpl, AbstractChannel$TryPollDesc) { ... }
    public final void complete(Object, Object) { ... }
    public final long getOpSequence() { ... }
    public final Object prepare(Object) { ... }
    public final String toString() { ... }

} 