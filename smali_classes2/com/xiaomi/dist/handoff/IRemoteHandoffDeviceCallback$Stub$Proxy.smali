.class Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteHandoffDeviceCallback.java"

# interfaces
.implements Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onDeviceOffline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IRemoteHandoffDeviceCallback"

    .line 138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 140
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 147
    invoke-static {}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 148
    invoke-static {}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;->onDeviceOffline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw p0
.end method

.method public onDeviceOnline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IRemoteHandoffDeviceCallback"

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p1, v0, v3}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 122
    invoke-static {}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 123
    invoke-static {}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;->onDeviceOnline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 126
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw p0
.end method
