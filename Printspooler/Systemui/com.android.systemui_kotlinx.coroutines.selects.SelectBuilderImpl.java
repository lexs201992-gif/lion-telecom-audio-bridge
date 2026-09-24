package kotlinx.coroutines.selects;
import kotlin.jvm.functions.Function1;
import kotlin.coroutines.Continuation;
import java.lang.Throwable;
import java.lang.Object;
import kotlinx.atomicfu.AtomicRef;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import java.lang.String;
import kotlinx.coroutines.DisposableHandle;

public final class SelectBuilderImpl extends LockFreeLinkedListHead
{
/*
 * Field Definitions.
 */
      public final AtomicRef _parentHandle;
      public final AtomicRef _result;
      public final AtomicRef _state;
      public final Continuation uCont;
/*
 * Declared Constructors.
 */
    public SelectBuilderImpl(Continuation) { ... }
    public final void disposeOnSelect(DisposableHandle) { ... }
    public final void doAfterSelect() { ... }
    public final CoroutineStackFrame getCallerFrame() { ... }
    public final CoroutineContext getContext() { ... }
    public final Object getResult() { ... }
    public final boolean isSelected() { ... }
    public final void onTimeout(long, Function1) { ... }
    public final void resumeSelectWithException(Throwable) { ... }
    public final void resumeWith(Object) { ... }
    public final String toString() { ... }
    public final boolean trySelect() { ... }
    public final Object trySelectOther() { ... }

} 