.class public final Lcom/android/networkstack/metrics/DhcpSession;
.super Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;
.source "DhcpSession.java"

# interfaces
.implements Lcom/android/networkstack/com/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static final CONFLICT_COUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

.field public static final DISCOVER_COUNT_FIELD_NUMBER:I = 0x2

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x5

.field public static final HT_RESULT_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/android/networkstack/com/google/protobuf/Parser; = null

.field public static final REQUEST_COUNT_FIELD_NUMBER:I = 0x3

.field public static final USED_FEATURES_FIELD_NUMBER:I = 0x1

.field private static final errorCode_converter_:Lcom/android/networkstack/com/google/protobuf/Internal$IntListAdapter$IntConverter;

.field private static final usedFeatures_converter_:Lcom/android/networkstack/com/google/protobuf/Internal$IntListAdapter$IntConverter;


# instance fields
.field private bitField0_:I

.field private conflictCount_:I

.field private discoverCount_:I

.field private errorCode_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

.field private htResult_:I

.field private requestCount_:I

.field private usedFeatures_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;


# direct methods
.method static bridge synthetic -$$Nest$maddErrorCode(Lcom/android/networkstack/metrics/DhcpSession;Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession;->addErrorCode(Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddUsedFeatures(Lcom/android/networkstack/metrics/DhcpSession;Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession;->addUsedFeatures(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetConflictCount(Lcom/android/networkstack/metrics/DhcpSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession;->setConflictCount(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDiscoverCount(Lcom/android/networkstack/metrics/DhcpSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession;->setDiscoverCount(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHtResult(Lcom/android/networkstack/metrics/DhcpSession;Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession;->setHtResult(Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRequestCount(Lcom/android/networkstack/metrics/DhcpSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession;->setRequestCount(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/networkstack/metrics/DhcpSession;
    .locals 1

    sget-object v0, Lcom/android/networkstack/metrics/DhcpSession;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/networkstack/metrics/DhcpSession$1;

    invoke-direct {v0}, Lcom/android/networkstack/metrics/DhcpSession$1;-><init>()V

    sput-object v0, Lcom/android/networkstack/metrics/DhcpSession;->usedFeatures_converter_:Lcom/android/networkstack/com/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lcom/android/networkstack/metrics/DhcpSession$2;

    invoke-direct {v0}, Lcom/android/networkstack/metrics/DhcpSession$2;-><init>()V

    sput-object v0, Lcom/android/networkstack/metrics/DhcpSession;->errorCode_converter_:Lcom/android/networkstack/com/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lcom/android/networkstack/metrics/DhcpSession;

    invoke-direct {v0}, Lcom/android/networkstack/metrics/DhcpSession;-><init>()V

    sput-object v0, Lcom/android/networkstack/metrics/DhcpSession;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

    const-class v1, Lcom/android/networkstack/metrics/DhcpSession;

    invoke-static {v1, v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->usedFeatures_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->errorCode_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    return-void
.end method

.method private addErrorCode(Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/android/networkstack/metrics/DhcpSession;->ensureErrorCodeIsMutable()V

    iget-object p0, p0, Lcom/android/networkstack/metrics/DhcpSession;->errorCode_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;->getNumber()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/networkstack/com/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addUsedFeatures(Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/android/networkstack/metrics/DhcpSession;->ensureUsedFeaturesIsMutable()V

    iget-object p0, p0, Lcom/android/networkstack/metrics/DhcpSession;->usedFeatures_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;->getNumber()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/networkstack/com/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private ensureErrorCodeIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->errorCode_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/networkstack/com/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/networkstack/com/google/protobuf/Internal$IntList;)Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->errorCode_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureUsedFeaturesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->usedFeatures_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/networkstack/com/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/networkstack/com/google/protobuf/Internal$IntList;)Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->usedFeatures_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/networkstack/metrics/DhcpSession;
    .locals 1

    sget-object v0, Lcom/android/networkstack/metrics/DhcpSession;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/networkstack/metrics/DhcpSession$Builder;
    .locals 1

    sget-object v0, Lcom/android/networkstack/metrics/DhcpSession;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

    invoke-virtual {v0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/networkstack/metrics/DhcpSession$Builder;

    return-object v0
.end method

.method private setConflictCount(I)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    iput p1, p0, Lcom/android/networkstack/metrics/DhcpSession;->conflictCount_:I

    return-void
.end method

.method private setDiscoverCount(I)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    iput p1, p0, Lcom/android/networkstack/metrics/DhcpSession;->discoverCount_:I

    return-void
.end method

.method private setHtResult(Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/networkstack/metrics/DhcpSession;->htResult_:I

    iget p1, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    return-void
.end method

.method private setRequestCount(I)V
    .locals 1

    iget v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/networkstack/metrics/DhcpSession;->bitField0_:I

    iput p1, p0, Lcom/android/networkstack/metrics/DhcpSession;->requestCount_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object p0, Lcom/android/networkstack/metrics/DhcpSession$3;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/android/networkstack/metrics/DhcpSession;->PARSER:Lcom/android/networkstack/com/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/networkstack/metrics/DhcpSession;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/networkstack/metrics/DhcpSession;->PARSER:Lcom/android/networkstack/com/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/networkstack/metrics/DhcpSession;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

    invoke-direct {p0, p2}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/networkstack/metrics/DhcpSession;->PARSER:Lcom/android/networkstack/com/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/networkstack/metrics/DhcpSession;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

    return-object p0

    :pswitch_3
    const-string v0, "bitField0_"

    const-string v1, "usedFeatures_"

    invoke-static {}, Lcom/android/networkstack/android/stats/connectivity/DhcpFeature;->internalGetVerifier()Lcom/android/networkstack/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    const-string v3, "discoverCount_"

    const-string v4, "requestCount_"

    const-string v5, "conflictCount_"

    const-string v6, "errorCode_"

    invoke-static {}, Lcom/android/networkstack/android/stats/connectivity/DhcpErrorCode;->internalGetVerifier()Lcom/android/networkstack/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v7

    const-string v8, "htResult_"

    invoke-static {}, Lcom/android/networkstack/android/stats/connectivity/HostnameTransResult;->internalGetVerifier()Lcom/android/networkstack/com/google/protobuf/Internal$EnumVerifier;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u081e\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1004\u0002\u0005\u081e\u0006\u180c\u0003"

    sget-object p2, Lcom/android/networkstack/metrics/DhcpSession;->DEFAULT_INSTANCE:Lcom/android/networkstack/metrics/DhcpSession;

    invoke-static {p2, p1, p0}, Lcom/android/networkstack/com/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/android/networkstack/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/networkstack/metrics/DhcpSession$Builder;

    invoke-direct {p0, p1}, Lcom/android/networkstack/metrics/DhcpSession$Builder;-><init>(Lcom/android/networkstack/metrics/DhcpSession-IA;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/networkstack/metrics/DhcpSession;

    invoke-direct {p0}, Lcom/android/networkstack/metrics/DhcpSession;-><init>()V

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

.method public getConflictCount()I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/metrics/DhcpSession;->conflictCount_:I

    return p0
.end method

.method public getDiscoverCount()I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/metrics/DhcpSession;->discoverCount_:I

    return p0
.end method

.method public getErrorCodeCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/metrics/DhcpSession;->errorCode_:Lcom/android/networkstack/com/google/protobuf/Internal$IntList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRequestCount()I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/metrics/DhcpSession;->requestCount_:I

    return p0
.end method
