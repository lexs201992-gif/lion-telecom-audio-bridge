.class public abstract Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;
.super Ljava/lang/Object;
.source "CaptivePortalProbeSpec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptivePortalProbeSpec"


# instance fields
.field private final mEncodedSpec:Ljava/lang/String;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method static bridge synthetic -$$Nest$smsafeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->mEncodedSpec:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->mUrl:Ljava/net/URL;

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static parseCaptivePortalProbeSpecs(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "@@,@@"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    :try_start_0
    invoke-static {v4}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->parseSpec(Ljava/lang/String;)Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    sget-object v6, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid probe spec: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    const-string v2, "could not create any validation spec from %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private static parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Invalid status pattern [%s]: %s"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static parseSpec(Ljava/lang/String;)Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "@@/@@"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x5

    aget-object v3, v0, v3

    invoke-static {v3, v2}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3, v4}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->parsePatternIfNonEmpty(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    new-instance v4, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;

    new-instance v5, Ljava/net/URL;

    aget-object v0, v0, v1

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p0, v5, v2, v3}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    return-object v4

    :cond_0
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Probe spec does not have 3 parts"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Empty probe spec"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static parseSpecOrNull(Ljava/lang/String;)Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->parseSpec(Ljava/lang/String;)Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->TAG:Ljava/lang/String;

    const-string v2, "Invalid probe spec: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static safeMatch(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getEncodedSpec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->mEncodedSpec:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getResult(ILjava/lang/String;)Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;->mUrl:Ljava/net/URL;

    return-object p0
.end method
