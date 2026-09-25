.class public Lcom/android/networkstack/android/net/ip/MulticastReportMonitor;
.super Ljava/lang/Object;
.source "MulticastReportMonitor.java"


# instance fields
.field private final mPacketListener:Lcom/android/networkstack/com/android/net/module/util/PacketReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;Lcom/android/networkstack/android/net/ip/MulticastReportMonitor$Callback;Ljava/io/FileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/networkstack/android/net/ip/MulticastReportMonitor$PacketListener;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/networkstack/android/net/ip/MulticastReportMonitor$PacketListener;-><init>(Landroid/os/Handler;Lcom/android/networkstack/com/android/net/module/util/InterfaceParams;Lcom/android/networkstack/android/net/ip/MulticastReportMonitor$Callback;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/networkstack/android/net/ip/MulticastReportMonitor;->mPacketListener:Lcom/android/networkstack/com/android/net/module/util/PacketReader;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/ip/MulticastReportMonitor;->mPacketListener:Lcom/android/networkstack/com/android/net/module/util/PacketReader;

    invoke-virtual {p0}, Lcom/android/networkstack/com/android/net/module/util/FdEventsReader;->start()Z

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/ip/MulticastReportMonitor;->mPacketListener:Lcom/android/networkstack/com/android/net/module/util/PacketReader;

    invoke-virtual {p0}, Lcom/android/networkstack/com/android/net/module/util/FdEventsReader;->stop()V

    return-void
.end method
