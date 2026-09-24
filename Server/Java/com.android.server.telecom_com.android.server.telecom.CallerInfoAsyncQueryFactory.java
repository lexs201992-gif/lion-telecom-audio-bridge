package com.android.server.telecom;
import java.lang.Object;
import java.lang.String;
import android.telecom.CallerInfoAsyncQuery;
import android.content.Context;
import android.telecom.CallerInfoAsyncQuery$OnQueryCompleteListener;

public abstract interface CallerInfoAsyncQueryFactory
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract CallerInfoAsyncQuery startQuery(int, Context, String, CallerInfoAsyncQuery$OnQueryCompleteListener, Object) { ... }

} 