.class public abstract Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteHandoffDeviceCallback.java"

# interfaces
.implements Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.dist.handoff.IRemoteHandoffDeviceCallback"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;
    .locals 1

    .line 176
    sget-object v0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.dist.handoff.IRemoteHandoffDeviceCallback"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 75
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    sget-object p1, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    .line 83
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;->onDeviceOffline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 61
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 64
    sget-object p1, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    .line 69
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;->onDeviceOnline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
