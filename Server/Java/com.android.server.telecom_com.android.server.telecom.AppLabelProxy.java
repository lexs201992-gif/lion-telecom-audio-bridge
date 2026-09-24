package com.android.server.telecom;
import java.lang.String;
import java.lang.CharSequence;

public abstract interface AppLabelProxy
{
/*
 * Field Definitions.
 */
      public static final String LOG_TAG;
/*
 * Declared Constructors.
 */
    public abstract CharSequence getAppLabel(String) { ... }

} 