package kotlinx.coroutines;
import java.lang.Object;
import java.lang.Throwable;
import kotlinx.coroutines.JobSupport;

public final class ChildHandleNode extends JobCancellingNode
{
/*
 * Field Definitions.
 */
      public final JobSupport childJob;
/*
 * Declared Constructors.
 */
    public ChildHandleNode(JobSupport) { ... }
    public final boolean childCancelled(Throwable) { ... }
    public final volatile Object invoke(Object) { ... }
    public final void invoke(Throwable) { ... }

} 