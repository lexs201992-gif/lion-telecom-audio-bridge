package kotlinx.coroutines.internal;
import java.lang.String;
import java.lang.Object;
import kotlinx.coroutines.internal.AtomicOp;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$AbstractAtomicDesc;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

public final class LockFreeLinkedListNode$PrepareOp extends OpDescriptor
{
/*
 * Field Definitions.
 */
      public final LockFreeLinkedListNode affected;
      public final LockFreeLinkedListNode$AbstractAtomicDesc desc;
      public final LockFreeLinkedListNode next;
/*
 * Declared Constructors.
 */
    public LockFreeLinkedListNode$PrepareOp(LockFreeLinkedListNode, LockFreeLinkedListNode, LockFreeLinkedListNode$AbstractAtomicDesc) { ... }
    public final void finishPrepare() { ... }
    public final AtomicOp getAtomicOp() { ... }
    public final Object perform(Object) { ... }
    public final String toString() { ... }

} 