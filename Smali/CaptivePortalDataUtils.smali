.class public abstract Lcom/android/networkstack/util/CaptivePortalDataUtils;
.super Ljava/lang/Object;
.source "CaptivePortalDataUtils.java"


# direct methods
.method public static fromJson(Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "seconds-remaining"

    const-wide/16 v3, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/android/networkstack/util/CaptivePortalDataUtils;->getLongOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v5

    const-wide v7, 0x20c49ba5e353f7L

    cmp-long v2, v5, v7

    const-wide v7, 0x7fffffffffffffffL

    if-gtz v2, :cond_0

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v5

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    sub-long/2addr v7, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long/2addr v5, v0

    :goto_1
    const-string v2, "x-android-use-custom-tabs"

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroid/net/CaptivePortalData$Builder;

    invoke-direct {v7}, Landroid/net/CaptivePortalData$Builder;-><init>()V

    invoke-virtual {v7, v0, v1}, Landroid/net/CaptivePortalData$Builder;->setRefreshTime(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    const-string v1, "captive"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setCaptive(Z)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    const-string v1, "user-portal-url"

    invoke-static {p0, v1}, Lcom/android/networkstack/util/CaptivePortalDataUtils;->getUriOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/net/CaptivePortalData$Builder;->setUserPortalUrl(Landroid/net/Uri;I)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    const-string v1, "venue-info-url"

    invoke-static {p0, v1}, Lcom/android/networkstack/util/CaptivePortalDataUtils;->getUriOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setVenueInfoUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    const-string v1, "bytes-remaining"

    invoke-static {p0, v1, v3, v4}, Lcom/android/networkstack/util/CaptivePortalDataUtils;->getLongOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/net/CaptivePortalData$Builder;->setBytesRemaining(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/net/CaptivePortalData$Builder;->setExpiryTime(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/CaptivePortalData$Builder;->build()Landroid/net/CaptivePortalData;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getLongOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getUriOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static redactVenueInfoUrl(Landroid/net/CaptivePortalData;)Landroid/net/CaptivePortalData;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/net/CaptivePortalData$Builder;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalData$Builder;-><init>(Landroid/net/CaptivePortalData;)V

    invoke-virtual {v1, v0}, Landroid/net/CaptivePortalData$Builder;->setVenueInfoUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/CaptivePortalData$Builder;->build()Landroid/net/CaptivePortalData;

    move-result-object p0

    return-object p0
.end method
