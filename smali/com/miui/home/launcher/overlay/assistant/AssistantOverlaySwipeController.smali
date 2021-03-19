.class public Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;
.super Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.source "AssistantOverlaySwipeController.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 27
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 28
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 30
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->isWidgetBeingResized()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 31
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 32
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 33
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 34
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 35
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 36
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 37
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 38
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->isStatusBarFollowingTouch()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 39
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 40
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 42
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getReconnectSlop()I
    .locals 1

    .line 47
    sget v0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method protected getSwipeDirection()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method
