.class public Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;
.super Ljava/lang/Object;
.source "MdnsOffloadRule.java"


# instance fields
.field public final mFullServiceName:Ljava/lang/String;

.field public final mMatchers:Ljava/util/List;

.field public final mOffloadPayload:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mFullServiceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mMatchers:Ljava/util/List;

    iput-object p3, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mOffloadPayload:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;

    iget-object v1, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mOffloadPayload:[B

    iget-object v3, p1, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mOffloadPayload:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mMatchers:Ljava/util/List;

    iget-object p1, p1, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mMatchers:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mMatchers:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mOffloadPayload:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MdnsOffloadRule{mOffloadPayload="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mOffloadPayload:[B

    if-nez v1, :cond_0

    const-string v1, "(null)"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/networkstack/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;->mMatchers:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
