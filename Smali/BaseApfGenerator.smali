.class public abstract Lcom/android/networkstack/android/net/apf/BaseApfGenerator;
.super Ljava/lang/Object;
.source "BaseApfGenerator.java"


# instance fields
.field public final mClampSize:I

.field private final mDisableCounterRangeCheck:Z

.field public mGenerated:Z

.field final mInstructions:Ljava/util/ArrayList;

.field private mLabelCount:S

.field private final mLabels:Landroid/util/SparseArray;

.field public final mRamSize:I

.field private mTotalSize:I

.field public final mVersion:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLabels(Lcom/android/networkstack/android/net/apf/BaseApfGenerator;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mLabels:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalSize(Lcom/android/networkstack/android/net/apf/BaseApfGenerator;)I
    .locals 0

    iget p0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mTotalSize:I

    return p0
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mLabelCount:S

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mInstructions:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mLabels:Landroid/util/SparseArray;

    iput p1, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mVersion:I

    iput p2, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mRamSize:I

    iput p3, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mClampSize:I

    iput-boolean p4, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mDisableCounterRangeCheck:Z

    return-void
.end method

.method static calculateImmSize(IZ)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, -0x80

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    if-ltz p0, :cond_3

    const/16 v0, 0xff

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    if-eqz p1, :cond_4

    const/16 v0, -0x8000

    if-lt p0, v0, :cond_4

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_5

    :cond_4
    if-nez p1, :cond_6

    if-ltz p0, :cond_6

    const p1, 0xffff

    if-gt p0, p1, :cond_6

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x4

    return p0
.end method

.method static checkRange(Ljava/lang/String;JJJ)V
    .locals 1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    cmp-long v0, p1, p5

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: %d, must be in range [%d, %d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateInstructionOffsets()I
    .locals 4

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    iput v1, v3, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;->offset:I

    invoke-virtual {v3}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method checkDropCounterRange(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mDisableCounterRangeCheck:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;->getJumpDropLabel()S

    return-void
.end method

.method checkPassCounterRange(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mDisableCounterRangeCheck:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;->getJumpPassLabel()S

    return-void
.end method

.method public generate()[B
    .locals 8

    iget-boolean v0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mGenerated:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mGenerated:Z

    const/16 v1, 0xa

    :goto_0
    invoke-direct {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->updateInstructionOffsets()I

    move-result v2

    iput v2, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mTotalSize:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    move v6, v5

    :cond_1
    :goto_1
    if-ge v6, v4, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    invoke-virtual {v7}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;->shrink()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v0

    goto :goto_1

    :cond_2
    if-nez v5, :cond_4

    :goto_2
    iget v0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mTotalSize:I

    new-array v1, v0, [B

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->updateExceptionBufferSize(I)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    invoke-virtual {v2, v1}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;->generate([B)V

    goto :goto_3

    :cond_3
    return-object v1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can only generate() once!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUniqueLabel()S
    .locals 2

    iget-short v0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mLabelCount:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mLabelCount:S

    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    int-to-short p0, p0

    const/16 v0, -0x8000

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Running out of unique labels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public programLengthOverEstimate()I
    .locals 0

    invoke-direct {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->updateInstructionOffsets()I

    move-result p0

    return p0
.end method

.method requireApfVersion(I)V
    .locals 2

    iget p0, p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->mVersion:I

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$IllegalInstructionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requires APF >= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract updateExceptionBufferSize(I)V
.end method

.method validateBytes([B)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p0, p1

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "bytes array size must be in less than 2048, current size: "

    array-length p1, p1

    invoke-static {p0, p1}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;I)V

    return-void
.end method

.method validateDeduplicateBytesList(Ljava/util/List;)Ljava/util/List;
    .locals 7

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->validateBytes([B)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const v1, 0x1fffff

    const/4 v2, 0x0

    if-gt v0, v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    if-ne v0, v4, :cond_5

    move v4, p0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string p0, "byte arrays in the set have different size"

    invoke-static {p0}, Lcom/android/networkstack/netlink/TcpInfo$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-object v2

    :cond_6
    return-object v1

    :cond_7
    const-string p0, "too many elements"

    invoke-static {p0}, Lcom/android/networkstack/netlink/TcpInfo$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-object v2

    :cond_8
    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytesList size must > 0, current size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_9

    const-string p1, "null"

    goto :goto_5

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
