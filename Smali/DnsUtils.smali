.class public abstract Lcom/android/networkstack/util/DnsUtils;
.super Ljava/lang/Object;
.source "DnsUtils.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "DnsUtils"


# direct methods
.method public static synthetic $r8$lambda$JOBPyTLLX92Z39Xulw-IfZeZKdc(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$jIxQgNYOVVOWDuDvuWcEWDgdFk8(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/networkstack/util/DnsUtils;->DBG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/networkstack/util/DnsUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/networkstack/util/DnsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/networkstack/util/DnsUtils;->DBG:Z

    return-void
.end method

.method private static dnsTypeToStr(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    const-string p0, "UNDEFINED"

    return-object p0

    :cond_0
    const-string p0, "AAAA"

    return-object p0

    :cond_1
    const-string p0, "A"

    return-object p0

    :cond_2
    const-string p0, "ADDRCONFIG"

    return-object p0
.end method

.method public static getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;IIILcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;)[Ljava/net/InetAddress;
    .locals 17

    move-object/from16 v2, p2

    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, Lcom/android/networkstack/android/net/util/Stopwatch;

    invoke-direct {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/android/networkstack/android/net/util/Stopwatch;->start()Lcom/android/networkstack/android/net/util/Stopwatch;

    move-result-object v9

    new-instance v6, Lcom/android/networkstack/util/DnsUtils$1;

    invoke-direct {v6, v8, v2}, Lcom/android/networkstack/util/DnsUtils$1;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    const/16 v0, -0x7f

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v10

    const/4 v0, -0x1

    move/from16 v15, p3

    if-ne v15, v0, :cond_0

    new-instance v4, Lcom/android/networkstack/util/DnsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/networkstack/util/DnsUtils$$ExternalSyntheticLambda0;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    move-object/from16 v2, p2

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/android/networkstack/util/DnsUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/networkstack/util/DnsUtils$$ExternalSyntheticLambda1;-><init>()V

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v3, v15

    invoke-virtual/range {v0 .. v7}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    :goto_0
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move/from16 v0, p5

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    const/16 v16, 0x0

    const/4 v11, 0x0

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Lcom/android/networkstack/android/net/util/Stopwatch;->stop()J

    move-result-wide v5

    div-long v12, v5, v3

    move/from16 v15, p3

    move-object/from16 v14, p6

    move-object v11, v0

    :goto_1
    invoke-static/range {v11 .. v16}, Lcom/android/networkstack/util/DnsUtils;->logDnsResult(Ljava/util/List;JLcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;ILjava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    :try_start_1
    const-string v16, "Timeout"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v9}, Lcom/android/networkstack/android/net/util/Stopwatch;->stop()J

    move-result-wide v0

    div-long v12, v0, v3

    move/from16 v15, p3

    move-object/from16 v14, p6

    goto :goto_1

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    if-nez v16, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    invoke-virtual {v9}, Lcom/android/networkstack/android/net/util/Stopwatch;->stop()J

    move-result-wide v1

    div-long v12, v1, v3

    move/from16 v15, p3

    move-object/from16 v14, p6

    invoke-static/range {v11 .. v16}, Lcom/android/networkstack/util/DnsUtils;->logDnsResult(Ljava/util/List;JLcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;ILjava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;ILcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;)[Ljava/net/InetAddress;
    .locals 11

    const-string v1, " (%s)%s"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    move-object v10, p4

    :try_start_0
    invoke-static/range {v4 .. v10}, Lcom/android/networkstack/util/DnsUtils;->getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;IIILcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const/16 p1, 0x1c

    invoke-static {p1}, Lcom/android/networkstack/util/DnsUtils;->dnsTypeToStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x4

    :try_start_1
    invoke-static/range {v4 .. v10}, Lcom/android/networkstack/util/DnsUtils;->getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;IIILcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/networkstack/util/DnsUtils;->dnsTypeToStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "OK: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v10, p0}, Lcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/net/InetAddress;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/net/InetAddress;

    return-object p0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FAIL: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v10, p0}, Lcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;->log(Ljava/lang/String;)V

    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static logDnsResult(Ljava/util/List;JLcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;ILjava/lang/String;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/net/InetAddress;

    const/16 v0, 0x2c

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%dms OK %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p4}, Lcom/android/networkstack/util/DnsUtils;->dnsTypeToStr(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1, p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%dms FAIL in type %s %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/android/networkstack/com/android/server/connectivity/NetworkMonitor$DnsLogFunc;->log(Ljava/lang/String;)V

    return-void
.end method
