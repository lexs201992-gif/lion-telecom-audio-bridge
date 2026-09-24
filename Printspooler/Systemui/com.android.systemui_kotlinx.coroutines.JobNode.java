package kotlinx.coroutines;
import java.lang.String;
import java.lang.Throwable;
import kotlinx.coroutines.NodeList;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.Job;

public abstract class JobNode extends LockFreeLinkedListNode
{
/*
 * Field Definitions.
 */
      public JobSupport job;
/*
 * Declared Constructors.
 */
    public JobNode() { ... }
    public final void dispose() { ... }
    public final JobSupport getJob() { ... }
    public final NodeList getList() { ... }
    public Job getParent() { ... }
    public abstract void invoke(Throwable) { ... }
    public final boolean isActive() { ... }
    public final String toString() { ... }

} 