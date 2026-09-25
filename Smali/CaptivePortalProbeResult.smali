.class public Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "CaptivePortalProbeResult.java"


# static fields
.field public static final PARTIAL:Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;

.field public static final PRIVATE_IP:Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;


# instance fields
.field public final detectUrl:Ljava/lang/String;

.field final mHttpResponseCode:I

.field public final probeSpec:Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;

.field public final probeType:I

.field public final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;

    const/4 v1, -0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;-><init>(II)V

    sput-object v0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->PRIVATE_IP:Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;

    new-instance v0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;

    const/4 v1, -0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;-><init>(II)V

    sput-object v0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->PARTIAL:Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    iput-object p2, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;

    iput p5, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->probeType:I

    return-void
.end method

.method public static failed(I)Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;

    const/16 v1, 0x257

    invoke-direct {v0, v1, p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;-><init>(II)V

    return-object v0
.end method

.method public static isPortalCode(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->isSuccessCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSuccessCode(I)Z
    .locals 1

    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static success(I)Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;

    const/16 v1, 0xcc

    invoke-direct {v0, v1, p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public isConcludedFromHttp()Z
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->probeType:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConcludedFromHttps()Z
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->probeType:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDnsPrivateIpResponse()Z
    .locals 1

    iget p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFailed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPartialConnectivity()Z
    .locals 1

    iget p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPortal()Z
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    invoke-static {p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->isPortalCode(I)Z

    move-result p0

    return p0
.end method

.method public isSuccessful()Z
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    invoke-static {p0}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->isSuccessCode(I)Z

    move-result p0

    return p0
.end method
