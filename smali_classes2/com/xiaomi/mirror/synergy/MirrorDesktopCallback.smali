.class public interface abstract Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onDeviceListUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMirrorDeskOpenOrClose(Z)V
.end method

.method public abstract onMirrorDesktopConfigChanged(Lcom/xiaomi/mirror/MirrorDesktopInfo;)V
.end method

.method public abstract onMirrorDesktopHide()V
.end method

.method public abstract onMirrorDesktopShow(Lcom/xiaomi/mirror/MirrorDesktopInfo;)V
.end method

.method public abstract onMirrorSeatChanged(I)V
.end method
