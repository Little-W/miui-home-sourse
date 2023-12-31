.class public interface abstract Lcom/market/sdk/IDesktopRecommendResponse;
.super Ljava/lang/Object;
.source "IDesktopRecommendResponse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/IDesktopRecommendResponse$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLoadFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLoadSuccess(Lcom/market/sdk/DesktopRecommendInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
