.class public Lcom/android/server/NetworkStackService;
.super Landroid/app/Service;
.source "NetworkStackService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStackService"

.field private static sConnector:Lcom/android/server/NetworkStackService$NetworkStackConnector;

.field private static sFlagProviderSet:Z

.field private static final sRawPacketTracker:Lcom/android/networkstack/android/net/util/RawPacketTracker;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/NetworkStackService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRawPacketTracker()Lcom/android/networkstack/android/net/util/RawPacketTracker;
    .locals 1

    sget-object v0, Lcom/android/server/NetworkStackService;->sRawPacketTracker:Lcom/android/networkstack/android/net/util/RawPacketTracker;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/networkstack/android/net/util/RawPacketTracker;

    invoke-direct {v0}, Lcom/android/networkstack/android/net/util/RawPacketTracker;-><init>()V

    sput-object v0, Lcom/android/server/NetworkStackService;->sRawPacketTracker:Lcom/android/networkstack/android/net/util/RawPacketTracker;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/NetworkStackService;->sFlagProviderSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static declared-synchronized makeConnector(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 2

    const-class v0, Lcom/android/server/NetworkStackService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/NetworkStackService;->sConnector:Lcom/android/server/NetworkStackService$NetworkStackConnector;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/NetworkStackService$NetworkStackConnector;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkStackService$NetworkStackConnector;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/NetworkStackService;->sConnector:Lcom/android/server/NetworkStackService$NetworkStackConnector;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/NetworkStackService;->sConnector:Lcom/android/server/NetworkStackService$NetworkStackConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-static {p0}, Lcom/android/server/NetworkStackService;->makeConnector(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean p0, Lcom/android/server/NetworkStackService;->sFlagProviderSet:Z

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/networkstack/com/android/server/util/NetworkStackModuleFlagProvider;

    invoke-direct {p0}, Lcom/android/networkstack/com/android/server/util/NetworkStackModuleFlagProvider;-><init>()V

    invoke-static {p0}, Lcom/android/networkstack/com/android/net/module/util/ModuleFlagProvider;->setFlagProvider(Lcom/android/networkstack/com/android/net/module/util/ModuleFlagProvider$FlagProvider;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/NetworkStackService;->sFlagProviderSet:Z

    :cond_0
    return-void
.end method
