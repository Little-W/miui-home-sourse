.class public Lcom/miui/home/launcher/touch/UiFactory;
.super Ljava/lang/Object;
.source "UiFactory.java"


# direct methods
.method public static createRecentsViewStateController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
    .locals 1

    .line 46
    new-instance v0, Lcom/miui/home/recents/RecentsViewStateController;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/RecentsViewStateController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public static getStateHandler(Lcom/miui/home/launcher/Launcher;)[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
    .locals 8

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 32
    new-array v0, v0, [Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v7

    aput-object v7, v0, v5

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    aput-object v4, v0, v3

    .line 34
    invoke-static {p0}, Lcom/miui/home/launcher/touch/UiFactory;->createRecentsViewStateController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object v3

    aput-object v3, v0, v2

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p0

    aput-object p0, v0, v6

    return-object v0

    .line 38
    :cond_0
    new-array v0, v6, [Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v6

    aput-object v6, v0, v5

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    aput-object v4, v0, v3

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v3

    aput-object v3, v0, v2

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method
