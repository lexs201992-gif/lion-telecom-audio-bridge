package kotlin.coroutines.jvm.internal;
import java.lang.String;
import kotlin.coroutines.Continuation;

public abstract class SuspendLambda extends ContinuationImpl
{
/*
 * Field Definitions.
 */
      private final int arity;
/*
 * Declared Constructors.
 */
    public SuspendLambda(int, Continuation) { ... }
    public final int getArity() { ... }
    public final String toString() { ... }

} 