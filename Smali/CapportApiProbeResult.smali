.class public Lcom/android/networkstack/android/net/captiveportal/CapportApiProbeResult;
.super Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;
.source "CapportApiProbeResult.java"


# instance fields
.field private final mCapportData:Landroid/net/CaptivePortalData;

.field public final mCapportOptInString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;Ljava/lang/String;Landroid/net/CaptivePortalData;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;I)V

    iput-object p5, v0, Lcom/android/networkstack/android/net/captiveportal/CapportApiProbeResult;->mCapportOptInString:Ljava/lang/String;

    iput-object p6, v0, Lcom/android/networkstack/android/net/captiveportal/CapportApiProbeResult;->mCapportData:Landroid/net/CaptivePortalData;

    return-void
.end method

.method public constructor <init>(Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;Ljava/lang/String;Landroid/net/CaptivePortalData;)V
    .locals 8

    iget v1, p1, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    iget-object v2, p1, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;

    iget v7, p1, Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeResult;->probeType:I

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/networkstack/android/net/captiveportal/CapportApiProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/networkstack/android/net/captiveportal/CaptivePortalProbeSpec;Ljava/lang/String;Landroid/net/CaptivePortalData;I)V

    return-void
.end method


# virtual methods
.method public getCaptivePortalData()Landroid/net/CaptivePortalData;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/captiveportal/CapportApiProbeResult;->mCapportData:Landroid/net/CaptivePortalData;

    return-object p0
.end method
