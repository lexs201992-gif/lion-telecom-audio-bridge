package kotlinx.coroutines.channels;
import kotlinx.coroutines.channels.SendElement;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.channels.Send;
import java.lang.Throwable;
import kotlinx.coroutines.channels.Closed;
import java.lang.Object;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.channels.ReceiveOrClosed;
import java.lang.String;

public abstract class AbstractSendChannel extends Object
{
/*
 * Field Definitions.
 */
      public final AtomicRef onCloseHandler;
      public final Function1 onUndeliveredElement;
      public final LockFreeLinkedListHead queue;
/*
 * Declared Constructors.
 */
    public AbstractSendChannel(Function1) { ... }
    public static final void access$helpCloseAndResumeWithSendException(AbstractSendChannel, CancellableContinuationImpl, Object, Closed) { ... }
    public final boolean close(Throwable) { ... }
    public Object enqueueSend(SendElement) { ... }
    public String getBufferDebugString() { ... }
    public final Closed getClosedForSend() { ... }
    public static void helpClose(Closed) { ... }
    public final void invokeOnClose(Function1) { ... }
    public abstract boolean isBufferAlwaysFull() { ... }
    public abstract boolean isBufferFull() { ... }
    public final boolean isClosedForSend() { ... }
    public Object offerInternal(Object) { ... }
    public final Object send(Object, Continuation) { ... }
    public abstract ReceiveOrClosed takeFirstReceiveOrPeekClosed() { ... }
    public final Send takeFirstSendOrPeekClosed() { ... }
    public final String toString() { ... }
    public final Object trySend-JP2dKIU(Object) { ... }

} 