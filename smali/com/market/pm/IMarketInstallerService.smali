.class public interface abstract Lcom/market/pm/IMarketInstallerService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/pm/IMarketInstallerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract installPackage(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
