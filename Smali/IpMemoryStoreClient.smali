.class public abstract Lcom/android/networkstack/android/net/IpMemoryStoreClient;
.super Ljava/lang/Object;
.source "IpMemoryStoreClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpMemoryStoreClient"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$0-H4WaMQn5mFcN_EpPXM2wLDCY0(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$13(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5DGN1hNMyuZt0p7och3IlzR6c5A(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-static {p7}, Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;->toAIDL(Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)Lcom/android/networkstack/android/net/ipmemorystore/IOnStatusListener;

    move-result-object p7

    invoke-interface/range {p0 .. p7}, Lcom/android/networkstack/android/net/IIpMemoryStore;->storeNetworkEvent(Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8qsZzXwmZWN3C9GqQQ9OB_Dpfjw(Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;->onComplete(Lcom/android/networkstack/android/net/ipmemorystore/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BxdY5w3FanwhF0-b-XOFYzT2sCU(Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {p0, v0, v1}, Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->onNetworkEventCountRetrieved(Lcom/android/networkstack/android/net/ipmemorystore/Status;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IVNy0HEJut3W_qThQ249V_pW5S0(Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Lcom/android/networkstack/android/net/ipmemorystore/Status;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBJyYaoTJG5HYB9mUuUU5UOqkPQ(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0

    invoke-static {p4}, Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->toAIDL(Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)Lcom/android/networkstack/android/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/networkstack/android/net/IIpMemoryStore;->retrieveNetworkEventCount(Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XlzFlTmn1JH1OB-ONGdYPNBsUD4(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->lambda$retrieveNetworkEventCount$27(Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJj77NH3NHUksl-z3KFnqeFVL-s(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;->toParcelable()Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p2

    invoke-static {p3}, Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;->toAIDL(Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)Lcom/android/networkstack/android/net/ipmemorystore/IOnStatusListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributesParcelable;Lcom/android/networkstack/android/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hYrzFmbgmFTfm9gZLEf3QpK5n4o(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->lambda$storeNetworkAttributes$1(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXMYoRi8dlvOBX7CYP-c0xSHdTA(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->lambda$storeNetworkEvent$30(Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pI1M4YfBsCJqkKYElKGDRhBtOm0(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    invoke-static {p2}, Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->toAIDL(Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Lcom/android/networkstack/android/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/networkstack/android/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$swLv8e4rLtLvdBgXhL5m7J-AADI(Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V
    .locals 2

    new-instance v0, Lcom/android/networkstack/android/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Lcom/android/networkstack/android/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;->onComplete(Lcom/android/networkstack/android/net/ipmemorystore/Status;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    const-string p0, "missing context"

    invoke-static {p0}, Lcom/android/networkstack/netlink/TcpInfo$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private ignoringRemoteException(Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 1

    const-string v0, "Failed to execute remote procedure call"

    invoke-direct {p0, v0, p1}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private ignoringRemoteException(Ljava/lang/String;Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 0

    :try_start_0
    invoke-interface {p2}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p2, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$retrieveNetworkAttributes$13(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;-><init>(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-direct {p0, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$retrieveNetworkEventCount$27(Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 6

    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;-><init>(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    invoke-direct {p0, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$storeNetworkAttributes$1(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 1

    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;-><init>(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$storeNetworkEvent$30(Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;Lcom/android/networkstack/android/net/IIpMemoryStore;)V
    .locals 9

    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    move-object/from16 v1, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;-><init>(Lcom/android/networkstack/android/net/IIpMemoryStore;Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public retrieveNetworkAttributes(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda3;-><init>(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;-><init>(Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    const-string p2, "Error retrieving network attributes"

    invoke-direct {p0, p2, p1}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveNetworkEventCount(Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    invoke-virtual {v1, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v5, p4

    :catch_1
    new-instance p0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;

    invoke-direct {p0, v5}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/networkstack/android/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    const-string p1, "Error retrieving network event count"

    invoke-direct {v1, p1, p0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method protected abstract runWhenServiceReady(Ljava/util/function/Consumer;)V
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;Lcom/android/networkstack/android/net/ipmemorystore/NetworkAttributes;Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;

    invoke-direct {p1, p3}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;-><init>(Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    const-string p2, "Error storing network attributes"

    invoke-direct {p0, p2, p1}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public storeNetworkEvent(Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V
    .locals 9

    :try_start_0
    new-instance v0, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;-><init>(Lcom/android/networkstack/android/net/IpMemoryStoreClient;Ljava/lang/String;JJILcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object/from16 v8, p7

    :catch_1
    if-nez v8, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;

    invoke-direct {p1, v8}, Lcom/android/networkstack/android/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;-><init>(Lcom/android/networkstack/android/net/ipmemorystore/OnStatusListener;)V

    const-string p2, "Error storing network event"

    invoke-direct {p0, p2, p1}, Lcom/android/networkstack/android/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Lcom/android/networkstack/android/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method
