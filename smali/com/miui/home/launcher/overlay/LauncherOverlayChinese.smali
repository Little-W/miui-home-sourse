.class public abstract Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;
.super Ljava/lang/Object;
.source "LauncherOverlayChinese.java"

# interfaces
.implements Lcom/miui/home/launcher/overlay/LauncherOverlay;
.implements Lcom/miui/launcher/overlay/client/LauncherClientCallback;


# instance fields
.field protected mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

.field protected mWasOverlayAttached:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mWasOverlayAttached:Z

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public static synthetic lambda$onOverlayCall$348(Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideOverlay(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    :cond_0
    return-void
.end method

.method public onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p3, -0x1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3b2098a7

    if-eq v0, v1, :cond_2

    const v1, 0x53122a3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "method_disconected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "method_get_launcher_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p3, 0x0

    :cond_3
    :goto_0
    packed-switch p3, :pswitch_data_0

    return-object p2

    .line 104
    :pswitch_0
    new-instance p1, Lcom/miui/home/launcher/overlay/-$$Lambda$LauncherOverlayChinese$RIM6h2oKt8E3sf0VRcTrvH5gJFo;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/-$$Lambda$LauncherOverlayChinese$RIM6h2oKt8E3sf0VRcTrvH5gJFo;-><init>(Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 109
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "result_msg"

    const-string p3, "success"

    .line 110
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 99
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 100
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "result_launcher_state"

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOverlayScrollChanged(F)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;->onScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public onOverlayScrollEnd(F)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;->onScrollEnd(F)V

    :cond_0
    return-void
.end method

.method public onOverlayScrollStart(F)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;->onScrollStart(F)V

    :cond_0
    return-void
.end method

.method public onOverlayUpdate(II)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "LauncherOverlay.Chinese"

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOverlayUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    if-ge p2, v1, :cond_2

    :cond_1
    if-lt p1, v1, :cond_3

    if-ge p2, v1, :cond_3

    :cond_2
    const-string p1, "LauncherOverlay.Chinese"

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "killProcess for update:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_3
    return-void
.end method

.method public onScrollChange(FZ)V
    .locals 0

    .line 76
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->updateMove(F)V

    :cond_0
    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->startMove()V

    :cond_0
    return-void
.end method

.method public onScrollInteractionEnd()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->endMove()V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_1

    .line 53
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mWasOverlayAttached:Z

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    :cond_1
    return-void
.end method

.method public setAlphaAndScale(FF)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->setAlphaAndScale(FF)V

    :cond_0
    return-void
.end method

.method public setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method

.method public abstract setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
.end method

.method public setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    return-void
.end method

.method public showOverlay(Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    :cond_0
    return-void
.end method
