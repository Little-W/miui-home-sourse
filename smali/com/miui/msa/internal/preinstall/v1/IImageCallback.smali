.class public interface abstract Lcom/miui/msa/internal/preinstall/v1/IImageCallback;
.super Ljava/lang/Object;
.source "IImageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/preinstall/v1/IImageCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onImageLoadFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
