.class public interface abstract Lcom/xiaomi/dist/handoff/IHandoffControlService;
.super Ljava/lang/Object;
.source "IHandoffControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;
    }
.end annotation


# virtual methods
.method public abstract queryActiveLocalHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryOnlineRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;)[Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/IRelayCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startTransferSessionToRemote(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopDiscoveryRemoteHandoffDevice(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterActiveLocalHandoffTaskListener(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
