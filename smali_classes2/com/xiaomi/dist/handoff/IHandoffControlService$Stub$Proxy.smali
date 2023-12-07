.class Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/handoff/IHandoffControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/dist/handoff/IHandoffControlService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public queryActiveLocalHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->queryActiveLocalHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public queryOnlineRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;)[Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->queryOnlineRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;)[Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->startDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/IRelayCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/xiaomi/dist/handoff/IRelayCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/IRelayCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startTransferSessionToRemote(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->startTransferSessionToRemote(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public stopDiscoveryRemoteHandoffDevice(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->stopDiscoveryRemoteHandoffDevice(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterActiveLocalHandoffTaskListener(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IHandoffControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->unregisterActiveLocalHandoffTaskListener(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
