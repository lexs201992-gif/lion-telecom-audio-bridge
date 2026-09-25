.class public Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;
.super Ljava/lang/Object;
.source "ApfMdnsOffloadEngine.java"

# interfaces
.implements Landroid/net/nsd/OffloadEngine;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApfMdnsOffloadEngine"


# instance fields
.field private final mCallback:Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mNsdManager:Landroid/net/nsd/NsdManager;

.field private final mOffloadServiceInfos:Ljava/util/List;

.field private final mOffloadType:I

.field private final mSkipMdnsRecordWithoutPriority:Z


# direct methods
.method public static synthetic $r8$lambda$LEdjKjXRu3tFnv_NwOltcb4B4Tk(Landroid/net/nsd/OffloadServiceInfo;Landroid/net/nsd/OffloadServiceInfo;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ter7ufnksZo8XVMIf0deabkQeLM(Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;Landroid/net/nsd/OffloadServiceInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->lambda$handleOffloadServiceUpdated$2(Landroid/net/nsd/OffloadServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ppFrWMwV1QsFKDsJ-xKH3wcEQL8(Landroid/net/nsd/OffloadServiceInfo;Landroid/net/nsd/OffloadServiceInfo;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/net/nsd/NsdManager;Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$Callback;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mOffloadServiceInfos:Ljava/util/List;

    iput-object p1, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mInterfaceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mNsdManager:Landroid/net/nsd/NsdManager;

    iput-object p4, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mCallback:Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$Callback;

    iput p5, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mOffloadType:I

    iput-boolean p6, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mSkipMdnsRecordWithoutPriority:Z

    return-void
.end method

.method private handleOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mOffloadServiceInfos:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda0;-><init>(Landroid/net/nsd/OffloadServiceInfo;)V

    invoke-interface {v0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda1;-><init>(Landroid/net/nsd/OffloadServiceInfo;)V

    invoke-interface {v0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p2, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mOffloadServiceInfos:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mOffloadServiceInfos:Ljava/util/List;

    new-instance p2, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;)V

    invoke-static {p1, p2}, Lcom/android/networkstack/com/android/net/module/util/CollectionUtils;->filter(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mCallback:Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$Callback;

    invoke-static {p1}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->extractRules(Ljava/util/List;)Lcom/android/networkstack/android/net/apf/ApfMdnsUtils$MdnsRules;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$Callback;->onOffloadRulesUpdated(Lcom/android/networkstack/android/net/apf/ApfMdnsUtils$MdnsRules;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->TAG:Ljava/lang/String;

    const-string p2, "Failed to extract offload reply rule"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$handleOffloadServiceUpdated$2(Landroid/net/nsd/OffloadServiceInfo;)Z
    .locals 1

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mSkipMdnsRecordWithoutPriority:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/net/nsd/OffloadServiceInfo;->getPriority()I

    move-result p0

    const p1, 0x7fffffff

    if-ne p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public onOffloadServiceRemoved(Landroid/net/nsd/OffloadServiceInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->handleOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;Z)V

    return-void
.end method

.method public onOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->handleOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;Z)V

    return-void
.end method

.method public registerOffloadEngine()V
    .locals 8

    iget-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v1, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mInterfaceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mOffloadType:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4}, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;)V

    const-wide/16 v4, 0x1

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/nsd/NsdManager;->registerOffloadEngine(Ljava/lang/String;JJLjava/util/concurrent/Executor;Landroid/net/nsd/OffloadEngine;)V

    return-void
.end method

.method public unregisterOffloadEngine()V
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v0, p0}, Landroid/net/nsd/NsdManager;->unregisterOffloadEngine(Landroid/net/nsd/OffloadEngine;)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/ApfMdnsOffloadEngine;->mOffloadServiceInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
