.class public final Lcom/android/networkstack/metrics/IpClientRaInfoReported;
.super Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;
.source "IpClientRaInfoReported.java"

# interfaces
.implements Lcom/android/networkstack/com/google/protobuf/MessageLiteOrBuilder;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/IpClientRaInfoReported;

.field public static final LOWEST_PIO_VALID_LIFETIME_SECONDS_FIELD_NUMBER:I = 0x5

.field public static final LOWEST_RDNSS_LIFETIME_SECONDS_FIELD_NUMBER:I = 0x7

.field public static final LOWEST_RIO_ROUTE_LIFETIME_SECONDS_FIELD_NUMBER:I = 0x6

.field public static final LOWEST_ROUTER_LIFETIME_SECONDS_FIELD_NUMBER:I = 0x4

.field public static final MAX_NUMBER_OF_DISTINCT_RAS_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_OF_PARSING_ERROR_RAS_FIELD_NUMBER:I = 0x3

.field public static final NUMBER_OF_ZERO_LIFETIME_RAS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/networkstack/com/google/protobuf/Parser;


# instance fields
.field private bitField0_:I

.field private lowestPioValidLifetimeSeconds_:J

.field private lowestRdnssLifetimeSeconds_:J

.field private lowestRioRouteLifetimeSeconds_:J

.field private lowestRouterLifetimeSeconds_:I

.field private maxNumberOfDistinctRas_:I

.field private numberOfParsingErrorRas_:I

.field private numberOfZeroLifetimeRas_:I


# direct methods
.method static bridge synthetic -$$Nest$msetLowestPioValidLifetimeSeconds(Lcom/android/networkstack/metrics/IpClientRaInfoReported;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->setLowestPioValidLifetimeSeconds(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLowestRdnssLifetimeSeconds(Lcom/android/networkstack/metrics/IpClientRaInfoReported;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->setLowestRdnssLifetimeSeconds(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLowestRioRouteLifetimeSeconds(Lcom/android/networkstack/metrics/IpClientRaInfoReported;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->setLowestRioRouteLifetimeSeconds(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLowestRouterLifetimeSeconds(Lcom/android/networkstack/metrics/IpClientRaInfoReported;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->setLowestRouterLifetimeSeconds(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMaxNumberOfDistinctRas(Lcom/android/networkstack/metrics/IpClientRaInfoReported;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->setMaxNumberOfDistinctRas(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNumberOfParsingErrorRas(Lcom/android/networkstack/metrics/IpClientRaInfoReported;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->setNumberOfParsingErrorRas(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNumberOfZeroLifetimeRas(Lcom/android/networkstack/metrics/IpClientRaInfoReported;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->setNumberOfZeroLifetimeRas(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/networkstack/metrics/IpClientRaInfoReported;
    .locals 1

    sget-object v0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    invoke-direct {v0}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;-><init>()V

    sput-object v0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    const-class v1, Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    invoke-static {v1, v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/android/networkstack/metrics/IpClientRaInfoReported$Builder;
    .locals 1

    sget-object v0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    invoke-virtual {v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/networkstack/metrics/IpClientRaInfoReported$Builder;

    return-object v0
.end method

.method private setLowestPioValidLifetimeSeconds(J)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    iput-wide p1, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestPioValidLifetimeSeconds_:J

    return-void
.end method

.method private setLowestRdnssLifetimeSeconds(J)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    iput-wide p1, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestRdnssLifetimeSeconds_:J

    return-void
.end method

.method private setLowestRioRouteLifetimeSeconds(J)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    iput-wide p1, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestRioRouteLifetimeSeconds_:J

    return-void
.end method

.method private setLowestRouterLifetimeSeconds(I)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    iput p1, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestRouterLifetimeSeconds_:I

    return-void
.end method

.method private setMaxNumberOfDistinctRas(I)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    iput p1, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->maxNumberOfDistinctRas_:I

    return-void
.end method

.method private setNumberOfParsingErrorRas(I)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    iput p1, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->numberOfParsingErrorRas_:I

    return-void
.end method

.method private setNumberOfZeroLifetimeRas(I)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->bitField0_:I

    iput p1, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->numberOfZeroLifetimeRas_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    throw p1

    :pswitch_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->PARSER:Lcom/android/networkstack/com/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->PARSER:Lcom/android/networkstack/com/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    invoke-direct {p0, p2}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->PARSER:Lcom/android/networkstack/com/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    return-object p0

    :pswitch_3
    const-string v0, "bitField0_"

    const-string v1, "maxNumberOfDistinctRas_"

    const-string v2, "numberOfZeroLifetimeRas_"

    const-string v3, "numberOfParsingErrorRas_"

    const-string v4, "lowestRouterLifetimeSeconds_"

    const-string v5, "lowestPioValidLifetimeSeconds_"

    const-string v6, "lowestRioRouteLifetimeSeconds_"

    const-string v7, "lowestRdnssLifetimeSeconds_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006"

    sget-object p2, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    invoke-static {p2, p1, p0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/android/networkstack/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported$Builder;

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/IpClientRaInfoReported$Builder;-><init>(Lcom/android/networkstack/metrics/IpClientRaInfoReported-IA;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;

    invoke-direct {p0}, Lcom/android/networkstack/metrics/IpClientRaInfoReported;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLowestPioValidLifetimeSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestPioValidLifetimeSeconds_:J

    return-wide v0
.end method

.method public getLowestRdnssLifetimeSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestRdnssLifetimeSeconds_:J

    return-wide v0
.end method

.method public getLowestRioRouteLifetimeSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestRioRouteLifetimeSeconds_:J

    return-wide v0
.end method

.method public getLowestRouterLifetimeSeconds()I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->lowestRouterLifetimeSeconds_:I

    return p0
.end method

.method public getMaxNumberOfDistinctRas()I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->maxNumberOfDistinctRas_:I

    return p0
.end method

.method public getNumberOfParsingErrorRas()I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->numberOfParsingErrorRas_:I

    return p0
.end method

.method public getNumberOfZeroLifetimeRas()I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/metrics/IpClientRaInfoReported;->numberOfZeroLifetimeRas_:I

    return p0
.end method
