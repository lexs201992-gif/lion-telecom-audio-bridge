.class public Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;
.super Ljava/lang/Object;
.source "ApfLowPowerStandbyPortsSubscriber.java"


# instance fields
.field private final mCallback:Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateLowPowerStandbyPorts(Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->updateLowPowerStandbyPorts()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mCallback:Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber$Callback;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private notifyLowPowerStandbyPorts(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mCallback:Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber$Callback;

    invoke-interface {p0, p1}, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber$Callback;->onLowPowerStandbyPortsChanged(Ljava/util/List;)V

    return-void
.end method

.method private updateLowPowerStandbyPorts()V
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getActiveLowPowerStandbyPorts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->notifyLowPowerStandbyPorts(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public subscribe()V
    .locals 3

    iget-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->updateLowPowerStandbyPorts()V

    new-instance v0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber$LowPowerStandbyPortsChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber$LowPowerStandbyPortsChangedReceiver;-><init>(Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber-IA;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unsubscribe()V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/networkstack/android/net/apf/ApfLowPowerStandbyPortsSubscriber;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
