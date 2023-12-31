.class public interface abstract Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;
.super Ljava/lang/Object;
.source "IAppstoreHomeGuideService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;
    }
.end annotation


# virtual methods
.method public abstract ready(Lcom/market/sdk/homeguide/HomeUserGuideData;)Lcom/market/sdk/homeguide/HomeUserGuideResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract show(Landroid/os/ResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
