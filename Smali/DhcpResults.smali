.class public final Lcom/android/networkstack/android/net/DhcpResults;
.super Ljava/lang/Object;
.source "DhcpResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public captivePortalApiUrl:Ljava/lang/String;

.field public dmnsrchList:Ljava/util/ArrayList;

.field public final dnsServers:Ljava/util/ArrayList;

.field public domains:Ljava/lang/String;

.field public gateway:Ljava/net/InetAddress;

.field public ipAddress:Landroid/net/LinkAddress;

.field public leaseDuration:I

.field public mtu:I

.field public serverAddress:Ljava/net/Inet4Address;

.field public serverHostName:Ljava/lang/String;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Lcom/android/networkstack/android/net/DhcpResults;
    .locals 0

    invoke-static {p0}, Lcom/android/networkstack/android/net/DhcpResults;->readFromParcel(Landroid/os/Parcel;)Lcom/android/networkstack/android/net/DhcpResults;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/networkstack/android/net/DhcpResults$1;

    invoke-direct {v0}, Lcom/android/networkstack/android/net/DhcpResults$1;-><init>()V

    sput-object v0, Lcom/android/networkstack/android/net/DhcpResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/networkstack/android/net/DhcpResults;->domains:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/networkstack/android/net/DhcpResults;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/networkstack/android/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/networkstack/android/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v0, p1, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget v0, p1, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    iput v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    iget v0, p1, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    iput v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    iget-object v0, p1, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/android/networkstack/android/net/DhcpResults;
    .locals 2

    sget-object v0, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/StaticIpConfiguration;

    new-instance v1, Lcom/android/networkstack/android/net/DhcpResults;

    invoke-direct {v1, v0}, Lcom/android/networkstack/android/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    invoke-static {p0}, Lcom/android/networkstack/com/android/net/module/util/InetAddressUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, v1, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public appendDomainsSearchList()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->domains:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v3, " "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move-object v1, v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/networkstack/android/net/DhcpResults;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/networkstack/android/net/DhcpResults;

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/networkstack/android/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v3, p1, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    iget v3, p1, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    iget v3, p1, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/android/networkstack/android/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/networkstack/android/net/DhcpResults;->domains:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    iget-object v5, p0, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/networkstack/android/net/DhcpResults;->dmnsrchList:Ljava/util/ArrayList;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    mul-int/lit8 p0, p0, 0x43

    add-int/2addr v0, p0

    return v0
.end method

.method public toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 2

    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/networkstack/android/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " DHCP server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Vendor info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lease "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    if-eqz v1, :cond_0

    const-string v1, " MTU "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " Servername "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " CaptivePortalApiUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/networkstack/android/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/net/StaticIpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->leaseDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, p2}, Lcom/android/networkstack/com/android/net/module/util/InetAddressUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    iget-object p2, p0, Lcom/android/networkstack/android/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/networkstack/android/net/DhcpResults;->serverHostName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/networkstack/android/net/DhcpResults;->captivePortalApiUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
