package com.unisoc.mms.service;
import com.unisoc.mms.service.UniAbsVowifiUtils;
import com.unisoc.mms.service.UniAbsMmsUtils;

public class UniMmsServiceComponentFactory extends Object
{
/*
 * Field Definitions.
 */
      private static UniMmsServiceComponentFactory sInstance;
/*
 * Declared Constructors.
 */
    public UniMmsServiceComponentFactory() { ... }
    public static UniMmsServiceComponentFactory getInstance() { ... }
    public UniAbsMmsUtils makeUniAbsMmsUtils() { ... }
    public UniAbsVowifiUtils makeUniAbsVowifiUtils() { ... }

} 