.class public interface abstract Lcom/miui/home/launcher/overlay/LauncherOverlay;
.super Ljava/lang/Object;
.source "LauncherOverlay.java"


# virtual methods
.method public abstract hideOverlay(Z)V
.end method

.method public abstract onScrollChange(FZ)V
.end method

.method public abstract onScrollInteractionBegin()V
.end method

.method public abstract onScrollInteractionEnd()V
.end method

.method public requestInstallApp(Lcom/miui/home/launcher/ItemInfo;ZLandroid/os/Bundle;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public abstract setAlphaAndScale(FF)V
.end method

.method public abstract setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V
.end method

.method public abstract showOverlay(Z)V
.end method
