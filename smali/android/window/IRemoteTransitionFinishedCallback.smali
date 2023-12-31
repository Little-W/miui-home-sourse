.class public interface abstract Landroid/window/IRemoteTransitionFinishedCallback;
.super Ljava/lang/Object;
.source "IRemoteTransitionFinishedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTransitionFinishedWithCallback(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
