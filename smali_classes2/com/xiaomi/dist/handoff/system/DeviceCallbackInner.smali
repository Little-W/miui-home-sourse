.class public Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;
.super Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;


# instance fields
.field private final mDeviceCallback:Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;

.field private mDeviceCallbackId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mSessionInfo:Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;


# virtual methods
.method getSessionInfo()Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mSessionInfo:Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    return-object p0
.end method

.method public synthetic lambda$onDeviceOffline$1$DeviceCallbackInner(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mDeviceCallback:Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;->onDeviceOffline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    return-void
.end method

.method public synthetic lambda$onDeviceOnline$0$DeviceCallbackInner(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mDeviceCallback:Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;->onDeviceOnline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    return-void
.end method

.method public onDeviceOffline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .locals 2

    const-string v0, "DeviceCallbackInner"

    const-string v1, "IRemoteHandoffDeviceCallback.onDeviceOffline"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mDeviceCallback:Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;->onDeviceOffline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$YHLtaXPVoK1b49KTHgT28UVri3E;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$YHLtaXPVoK1b49KTHgT28UVri3E;-><init>(Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onDeviceOnline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .locals 2

    const-string v0, "DeviceCallbackInner"

    const-string v1, "IRemoteHandoffDeviceCallback.onDeviceOnline"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mDeviceCallback:Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;->onDeviceOnline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$PtxgUbIQfTnZ87Rkt5NzH2vwp18;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$DeviceCallbackInner$PtxgUbIQfTnZ87Rkt5NzH2vwp18;-><init>(Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method setDeviceCallbackId(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->mDeviceCallbackId:I

    return-void
.end method
