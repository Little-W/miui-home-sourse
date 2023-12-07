.class public Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;
.super Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;
.source "AssistantLauncherOverlay.java"


# instance fields
.field private mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

.field private mInstaller:Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public hideOverlay(Z)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDraggingFromAssistant()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    :cond_2
    return-void
.end method

.method public onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onOverlayScrollEnd(F)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onOverlayScrollEnd(F)V

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onOverlayScrollEnd(F)V

    return-void
.end method

.method public onOverlayUpdate(II)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onOverlayUpdate(II)V

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onOverlayUpdate(II)V

    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onServiceStateChanged(Z)V

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onServiceStateChanged(Z)V

    return-void
.end method

.method public requestInstallApp(Lcom/miui/home/launcher/ItemInfo;ZLandroid/os/Bundle;)I
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mInstaller:Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;->requestInstall(Lcom/miui/home/launcher/ItemInfo;ZLandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    .line 23
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    .line 24
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;-><init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mInstaller:Lcom/miui/home/launcher/overlay/assistant/AssistantInstallOverlay;

    return-void
.end method

.method public setDragCallback(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mDragOverlay:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->setDragCallback(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V

    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method
