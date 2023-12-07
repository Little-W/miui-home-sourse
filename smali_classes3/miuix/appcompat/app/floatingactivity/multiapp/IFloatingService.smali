.class public interface abstract Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;
.super Ljava/lang/Object;
.source "IFloatingService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract callServiceMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterServiceNotify(Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
