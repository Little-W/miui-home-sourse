.class public interface abstract Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback;
.super Ljava/lang/Object;
.source "IGlobalImageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback$Stub;
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
