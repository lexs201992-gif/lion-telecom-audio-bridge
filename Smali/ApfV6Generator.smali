.class public final Lcom/android/networkstack/android/net/apf/ApfV6Generator;
.super Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
.source "ApfV6Generator.java"


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;-><init>([BIII)V

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/networkstack/android/net/apf/BaseApfGenerator$IllegalInstructionException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;-><init>([BIII)V

    return-void
.end method

.method public static supportsVersion(I)Z
    .locals 1

    const/16 v0, 0x1770

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addAllocate(I)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 3

    new-instance v0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    sget-object v1, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$ExtendedOpcodes;->ALLOCATE:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$ExtendedOpcodes;

    sget-object v2, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Rbit;->Rbit1:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Rbit;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;-><init>(Lcom/android/networkstack/android/net/apf/BaseApfGenerator;Lcom/android/networkstack/android/net/apf/BaseApfGenerator$ExtendedOpcodes;Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Rbit;)V

    invoke-virtual {v0, p1}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;->addU16(I)Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->append(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addAllocate(I)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addAllocate(I)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfBytesAtOffsetEqualsNoneOf(ILjava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    sget-object v0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;->R0:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;

    invoke-virtual {p0, v0, p1}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addLoadImmediate(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;I)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfBytesAtR0EqualsNoneOf(Ljava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfBytesAtOffsetEqualsNoneOf(ILjava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfBytesAtOffsetEqualsNoneOf(ILjava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfBytesAtR0EqualsNoneOf(Ljava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfBytesAtR0EqualsNoneOf(Ljava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfBytesAtR0EqualsNoneOf(Ljava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfBytesAtR0EqualsAnyOf(Ljava/util/List;S)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfBytesAtR0NotEqual([BLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfBytesAtR0NotEqual([BLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfBytesAtR0NotEqual([BLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfBytesAtR0Equal([BS)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfR0AnyBitsSet(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0AnyBitsSet(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfR0AnyBitsSet(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 2

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJumpIfR0AnyBitsSet(JS)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v1}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJump(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v1}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJumpIfR0NotEquals(JS)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfR0IsNoneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0IsNoneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfR0IsNoneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0NotEquals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    sget-object v1, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;->R0:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfOneOf(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;Ljava/util/Set;S)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0

    :cond_1
    const-string p0, "values cannot be empty"

    invoke-static {p0}, Lcom/android/networkstack/netlink/TcpInfo$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfR0IsOneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0IsOneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfR0IsOneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    sget-object v1, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;->R0:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfNoneOf(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;Ljava/util/Set;S)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0

    :cond_1
    const-string p0, "values cannot be empty"

    invoke-static {p0}, Lcom/android/networkstack/netlink/TcpInfo$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfR0LessThan(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0LessThan(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfR0LessThan(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJumpIfR0GreaterThan(JS)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0

    :cond_0
    const-string p0, "val must > 0, current val: "

    invoke-static {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV4Generator$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic addCountAndDropIfR0NotEquals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndDropIfR0NotEquals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndDropIfR0NotEquals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJumpIfR0Equals(JS)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndDrop(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public addCountAndPassIfBytesAtOffsetEqualsAnyOf(ILjava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    sget-object v0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;->R0:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;

    invoke-virtual {p0, v0, p1}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addLoadImmediate(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;I)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfBytesAtR0EqualsAnyOf(Ljava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addCountAndPassIfBytesAtOffsetEqualsAnyOf(ILjava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfBytesAtOffsetEqualsAnyOf(ILjava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndPassIfBytesAtR0EqualsAnyOf(Ljava/util/List;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfBytesAtR0EqualsNoneOf(Ljava/util/List;S)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndPass(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addCountAndPassIfBytesAtR0NotEqual([BLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfBytesAtR0NotEqual([BLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndPassIfBytesAtR0NotEqual([BLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfBytesAtR0Equal([BS)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndPass(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addCountAndPassIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndPassIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJumpIfR0NotEquals(JS)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndPass(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addCountAndPassIfR0IsOneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfR0IsOneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndPassIfR0IsOneOf(Ljava/util/Set;Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfR0Equals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    sget-object v1, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;->R0:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfNoneOf(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;Ljava/util/Set;S)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndPass(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0

    :cond_1
    const-string p0, "values cannot be empty"

    invoke-static {p0}, Lcom/android/networkstack/netlink/TcpInfo$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic addCountAndPassIfR0LessThan(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfR0LessThan(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndPassIfR0LessThan(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJumpIfR0GreaterThan(JS)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndPass(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0

    :cond_0
    const-string p0, "val must > 0, current val: "

    invoke-static {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV4Generator$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic addCountAndPassIfR0NotEquals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addCountAndPassIfR0NotEquals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addCountAndPassIfR0NotEquals(JLcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator;->getUniqueLabel()S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addJumpIfR0Equals(JS)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addCountAndPass(Lcom/android/networkstack/android/net/apf/ApfCounterTracker$Counter;)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->defineLabel(S)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public addDataCopy(II)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 3

    new-instance v0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    sget-object v1, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Opcodes;->PKTDATACOPY:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Opcodes;

    sget-object v2, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Rbit;->Rbit1:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Rbit;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;-><init>(Lcom/android/networkstack/android/net/apf/BaseApfGenerator;Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Opcodes;Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Rbit;)V

    invoke-virtual {v0, p1}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;->addDataOffset(I)Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;->addU8(I)Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->append(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Instruction;)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addDataCopy(II)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addDataCopy(II)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addJumpIfBytesAtOffsetEqualsNoneOf(ILjava/util/List;S)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    sget-object v0, Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;->R0:Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;

    invoke-virtual {p0, v0, p1}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->addLoadImmediate(Lcom/android/networkstack/android/net/apf/BaseApfGenerator$Register;I)Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    invoke-virtual {p0, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfBytesAtR0EqualsNoneOf(Ljava/util/List;S)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addJumpIfBytesAtOffsetEqualsNoneOf(ILjava/util/List;S)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addJumpIfBytesAtOffsetEqualsNoneOf(ILjava/util/List;S)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addJumpIfPktAtR0ContainDnsQ([B[IS)Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addJumpIfPktAtR0ContainDnsQ([BIS)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;->self()Lcom/android/networkstack/android/net/apf/ApfV4GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addJumpIfPktAtR0ContainDnsQ([B[IS)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addJumpIfPktAtR0ContainDnsQ([B[IS)Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public addTransmitWithoutChecksum()Lcom/android/networkstack/android/net/apf/ApfV6Generator;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;->addTransmit(I)Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;

    move-result-object p0

    check-cast p0, Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    return-object p0
.end method

.method public bridge synthetic addTransmitWithoutChecksum()Lcom/android/networkstack/android/net/apf/ApfV6GeneratorBase;
    .locals 0

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/apf/ApfV6Generator;->addTransmitWithoutChecksum()Lcom/android/networkstack/android/net/apf/ApfV6Generator;

    move-result-object p0

    return-object p0
.end method

.method public getDataCopyChunkSize()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public getDefaultPacketHandlingSizeOverEstimate()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method protected handleOptimizedTransmit(IIIIZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
