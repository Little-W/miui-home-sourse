.class public abstract Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;
.super Landroid/os/Binder;
.source "IHandoffControlService.java"

# interfaces
.implements Lcom/xiaomi/dist/handoff/IHandoffControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/IHandoffControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IHandoffControlService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.dist.handoff.IHandoffControlService"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;
    .locals 1

    .line 394
    sget-object v0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/dist/handoff/IHandoffControlService;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 163
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->startTransferSessionToRemote(ILjava/lang/String;)I

    move-result p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 154
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->stopDiscoveryRemoteHandoffDevice(I)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 137
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    sget-object p1, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    move-result-object p1

    .line 147
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->startDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;)I

    move-result p0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 122
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    sget-object p1, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    .line 130
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->queryOnlineRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;)[Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    move-result-object p0

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 111
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/dist/handoff/IRelayCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IRelayCallBack;

    move-result-object p2

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/IRelayCallBack;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->unregisterActiveLocalHandoffTaskListener(I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 92
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;)I

    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 84
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->queryActiveLocalHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 79
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
