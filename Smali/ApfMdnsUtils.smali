.class public abstract Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;
.super Ljava/lang/Object;
.source "ApfMdnsUtils.java"


# direct methods
.method public static synthetic $r8$lambda$AaI3i14OZss5jZdWyQm53etYb2g(Landroid/net/nsd/OffloadServiceInfo;Landroid/net/nsd/OffloadServiceInfo;)I
    .locals 0

    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getPriority()I

    move-result p0

    invoke-virtual {p1}, Landroid/net/nsd/OffloadServiceInfo;->getPriority()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static encodeQname(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;)[B
    .locals 6

    invoke-static {p1}, Lcom/android/networkstack/com/android/net/module/util/DnsUtils;->toDnsLabelsUpperCase([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_0

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Label is too long: "

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeQname([Ljava/lang/String;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, p0}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static extractRules(Ljava/util/List;)Lcom/android/networkstack/android/net/apf/ApfMdnsUtils$MdnsRules;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/net/nsd/OffloadServiceInfo;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->isOffloadTypeMatched(Landroid/net/nsd/OffloadServiceInfo;I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0, v2, v6}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->processOffloadRules(Ljava/util/List;Ljava/util/Set;Landroid/net/nsd/OffloadServiceInfo;)V

    :cond_1
    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->isOffloadTypeMatched(Landroid/net/nsd/OffloadServiceInfo;I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v1, v3, v6}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->processFilterRules(Ljava/util/List;Ljava/util/Set;Landroid/net/nsd/OffloadServiceInfo;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils$MdnsRules;

    invoke-direct {v0, p0, v1}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils$MdnsRules;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static getEncodedWildcardSubtypeService([Ljava/lang/String;)[B
    .locals 2

    const-string v0, "_sub"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/networkstack/com/android/net/module/util/CollectionUtils;->prependArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v0, p0}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static isDiscoveryRequest(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static isOffloadTypeMatched(Landroid/net/nsd/OffloadServiceInfo;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/nsd/OffloadServiceInfo;->getOffloadType()J

    move-result-wide v0

    int-to-long p0, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSubTypeExist(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static processFilterRules(Ljava/util/List;Ljava/util/Set;Landroid/net/nsd/OffloadServiceInfo;)V
    .locals 9

    invoke-virtual {p2}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/nsd/OffloadServiceInfo$Key;->getServiceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/nsd/OffloadServiceInfo$Key;->getServiceName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "\\."

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "local"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v7, v5, v6}, Lcom/android/networkstack/com/android/net/module/util/CollectionUtils;->appendArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->isDiscoveryRequest(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/android/networkstack/com/android/net/module/util/CollectionUtils;->prependArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    new-instance v6, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    invoke-static {v5}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname([Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B)V

    invoke-static {p1, v2, v6}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/nsd/OffloadServiceInfo;->getSubtypes()Ljava/util/List;

    move-result-object v6

    invoke-static {v5}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname([Ljava/lang/String;)[B

    move-result-object v7

    new-instance v8, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    invoke-direct {v8, v7}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B)V

    invoke-static {p1, v2, v8}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    invoke-static {v6}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->isSubTypeExist(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->getEncodedWildcardSubtypeService([Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    invoke-direct {v6, v5}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B)V

    invoke-static {p1, v2, v6}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/net/nsd/OffloadServiceInfo;->getHostname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname([Ljava/lang/String;)[B

    move-result-object p2

    new-instance v3, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    invoke-direct {v3, p2}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B)V

    invoke-static {p1, v2, v3}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v2, v0}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private static processOffloadRules(Ljava/util/List;Ljava/util/Set;Landroid/net/nsd/OffloadServiceInfo;)V
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/net/nsd/OffloadServiceInfo;->getKey()Landroid/net/nsd/OffloadServiceInfo$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/nsd/OffloadServiceInfo$Key;->getServiceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const-string v6, "local"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v7, v3, v6}, Lcom/android/networkstack/com/android/net/module/util/CollectionUtils;->appendArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/nsd/OffloadServiceInfo$Key;->getServiceName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v3, v6}, Lcom/android/networkstack/com/android/net/module/util/CollectionUtils;->prependArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/net/nsd/OffloadServiceInfo;->getOffloadPayload()[B

    move-result-object v8

    invoke-static {v3}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname([Ljava/lang/String;)[B

    move-result-object v9

    new-instance v10, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    const/16 v11, 0xc

    filled-new-array {v11}, [I

    move-result-object v12

    invoke-direct {v10, v9, v12}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B[I)V

    invoke-static {v0, v1, v10}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/nsd/OffloadServiceInfo;->getSubtypes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-le v10, v12, :cond_0

    move v10, v13

    goto :goto_0

    :cond_0
    move v10, v5

    :goto_0
    if-eqz v10, :cond_1

    invoke-static {v3}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->getEncodedWildcardSubtypeService([Ljava/lang/String;)[B

    move-result-object v3

    new-instance v7, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    filled-new-array {v11}, [I

    move-result-object v9

    invoke-direct {v7, v3, v9}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B[I)V

    invoke-static {v0, v1, v7}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    goto :goto_2

    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, "_sub"

    filled-new-array {v12, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v3, v12}, Lcom/android/networkstack/com/android/net/module/util/CollectionUtils;->prependArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-static {v12}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname([Ljava/lang/String;)[B

    move-result-object v12

    new-instance v14, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    filled-new-array {v11}, [I

    move-result-object v15

    invoke-direct {v14, v12, v15}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B[I)V

    invoke-static {v0, v1, v14}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v6}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname([Ljava/lang/String;)[B

    move-result-object v3

    new-instance v6, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    const/16 v7, 0x21

    const/16 v9, 0x10

    filled-new-array {v7, v9}, [I

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B[I)V

    invoke-static {v0, v1, v6}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/nsd/OffloadServiceInfo;->getHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->encodeQname([Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;

    const/16 v5, 0x1c

    filled-new-array {v13, v5}, [I

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;-><init>([B[I)V

    invoke-static {v0, v1, v4}, Lcom/android/networkstack/android/net/apf/ApfMdnsUtils;->addMatcherIfNotExist(Ljava/util/Set;Ljava/util/List;Lcom/android/networkstack/android/net/apf/MdnsOffloadRule$Matcher;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/nsd/OffloadServiceInfo$Key;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/nsd/OffloadServiceInfo$Key;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_3

    const/4 v8, 0x0

    :cond_3
    invoke-direct {v0, v2, v1, v8}, Lcom/android/networkstack/android/net/apf/MdnsOffloadRule;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
