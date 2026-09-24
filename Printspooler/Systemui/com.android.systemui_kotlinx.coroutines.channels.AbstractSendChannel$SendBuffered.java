package kotlinx.coroutines.channels;
import java.lang.String;
import java.lang.Object;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$PrepareOp;
import kotlinx.coroutines.channels.Closed;

public final class AbstractSendChannel$SendBuffered extends Send
{
/*
 * Field Definitions.
 */
      public final Object element;
/*
 * Declared Constructors.
 */
    public AbstractSendChannel$SendBuffered(Object) { ... }
    public final void completeResumeSend() { ... }
    public final Object getPollResult() { ... }
    public final void resumeSendClosed(Closed) { ... }
    public final String toString() { ... }
    public final Symbol tryResumeSend(LockFreeLinkedListNode$PrepareOp) { ... }

} 