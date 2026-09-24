package kotlinx.coroutines.internal;
import java.lang.String;
import java.lang.Object;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$CondAddOp;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.Removed;

public abstract class LockFreeLinkedListNode extends Object
{
/*
 * Field Definitions.
 */
      public final AtomicRef _next;
      public final AtomicRef _prev;
      public final AtomicRef _removedRef;
/*
 * Declared Constructors.
 */
    public LockFreeLinkedListNode() { ... }
    public final boolean addNext(LockFreeLinkedListNode, LockFreeLinkedListHead) { ... }
    public final LockFreeLinkedListNode correctPrev() { ... }
    public void dispose() { ... }
    public final void finishAdd(LockFreeLinkedListNode) { ... }
    public final Object getNext() { ... }
    public final LockFreeLinkedListNode getNextNode() { ... }
    public final LockFreeLinkedListNode getPrevNode() { ... }
    public final void helpRemovePrev() { ... }
    public boolean isRemoved() { ... }
    public boolean remove$1() { ... }
    public final LockFreeLinkedListNode removeOrNext() { ... }
    public final Removed removed() { ... }
    public String toString() { ... }
    public final int tryCondAddNext(LockFreeLinkedListNode, LockFreeLinkedListNode, LockFreeLinkedListNode$CondAddOp) { ... }

} 