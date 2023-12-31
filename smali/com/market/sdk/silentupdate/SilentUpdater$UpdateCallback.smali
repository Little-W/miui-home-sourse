.class public interface abstract Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;
.super Ljava/lang/Object;
.source "SilentUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/silentupdate/SilentUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateCallback"
.end annotation


# virtual methods
.method public abstract onError(II)V
.end method

.method public abstract onProgressChanged(I)V
.end method

.method public abstract onStageChanged(I)V
.end method

.method public abstract onStatusChanged(I)V
.end method
