package com.android.server.telecom.ui;
import android.widget.Toast;
import java.lang.CharSequence;
import android.content.Context;

public abstract interface ToastFactory
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract Toast makeText(Context, int, int) { ... }
    public abstract Toast makeText(Context, CharSequence, int) { ... }

} 