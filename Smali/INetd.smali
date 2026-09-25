.class public interface abstract Lcom/android/networkstack/android/net/INetd;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getFwmarkForNetwork(I)Lcom/android/networkstack/android/net/MarkMaskParcel;
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract interfaceClearAddrs(Ljava/lang/String;)V
.end method

.method public abstract interfaceSetCfg(Lcom/android/networkstack/android/net/InterfaceConfigurationParcel;)V
.end method

.method public abstract interfaceSetEnableIPv6(Ljava/lang/String;Z)V
.end method

.method public abstract interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
.end method

.method public abstract setIPv6AddrGenMode(Ljava/lang/String;I)V
.end method

.method public abstract setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
