package com.google.android.material.internal;
import java.lang.CharSequence;
import android.text.TextUtils$TruncateAt;
import android.text.StaticLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
import android.text.Layout$Alignment;
import com.google.android.material.internal.StaticLayoutBuilderConfigurer;
import android.text.TextPaint;

final class StaticLayoutBuilderCompat extends Object
{
/*
 * Field Definitions.
 */
      static final int DEFAULT_HYPHENATION_FREQUENCY;
      private Layout$Alignment alignment;
      private TextUtils$TruncateAt ellipsize;
      private int end;
      private int hyphenationFrequency;
      private boolean includePad;
      private boolean isRtl;
      private float lineSpacingAdd;
      private float lineSpacingMultiplier;
      private int maxLines;
      private final TextPaint paint;
      private CharSequence source;
      private int start;
      private final int width;
/*
 * Declared Constructors.
 */
    private StaticLayoutBuilderCompat(CharSequence, TextPaint, int) { ... }
    public StaticLayout build()  throws StaticLayoutBuilderCompatException{ ... }
    public static StaticLayoutBuilderCompat obtain(CharSequence, TextPaint, int) { ... }
    public StaticLayoutBuilderCompat setAlignment(Layout$Alignment) { ... }
    public StaticLayoutBuilderCompat setEllipsize(TextUtils$TruncateAt) { ... }
    public StaticLayoutBuilderCompat setHyphenationFrequency(int) { ... }
    public StaticLayoutBuilderCompat setIncludePad(boolean) { ... }
    public StaticLayoutBuilderCompat setIsRtl(boolean) { ... }
    public StaticLayoutBuilderCompat setLineSpacing(float, float) { ... }
    public StaticLayoutBuilderCompat setMaxLines(int) { ... }
    public StaticLayoutBuilderCompat setStaticLayoutBuilderConfigurer(StaticLayoutBuilderConfigurer) { ... }

} 