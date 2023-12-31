.class public interface abstract Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;
.super Ljava/lang/Object;
.source "IRemoteHandoffDeviceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceOffline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceOnline(Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
