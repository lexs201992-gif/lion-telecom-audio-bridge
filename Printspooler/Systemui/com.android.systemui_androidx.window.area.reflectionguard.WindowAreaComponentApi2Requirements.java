package androidx.window.area.reflectionguard;
import androidx.window.extensions.core.util.function.Consumer;
import android.app.Activity;

public abstract interface WindowAreaComponentApi2Requirements
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract void addRearDisplayStatusListener(Consumer) { ... }
    public abstract void endRearDisplaySession() { ... }
    public abstract void removeRearDisplayStatusListener(Consumer) { ... }
    public abstract void startRearDisplaySession(Activity, Consumer) { ... }

} 