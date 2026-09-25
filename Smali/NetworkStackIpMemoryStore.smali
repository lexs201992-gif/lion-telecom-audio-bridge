.class public Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;
.super Lcom/android/networkstack/android/net/IpMemoryStoreClient;
.source "NetworkStackIpMemoryStore.java"


# instance fields
.field private final mService:Lcom/android/networkstack/android/net/IIpMemoryStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;->mService:Lcom/android/networkstack/android/net/IIpMemoryStore;

    return-void
.end method


# virtual methods
.method protected runWhenServiceReady(Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/NetworkStackIpMemoryStore;->mService:Lcom/android/networkstack/android/net/IIpMemoryStore;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
