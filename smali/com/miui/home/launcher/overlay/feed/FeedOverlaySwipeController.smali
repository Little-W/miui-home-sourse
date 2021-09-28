.class public Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;
.super Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.source "FeedOverlaySwipeController.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method

.method public static canSlidingUp(Lcom/miui/home/launcher/Launcher;)Z
    .locals 10

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    .line 41
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v2

    .line 42
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v4

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v5

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v6

    const-string v7, "Launcher.Feed"

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "touchState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " scrolling : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " normalEditing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " WidgetThumbnailViewShowing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " UninstallDialogShowing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isMinusScreenShowing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_1

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFreeStyleExists()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v6, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isShow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string p0, "Launcher.Feed"

    const-string v0, "can not use"

    .line 61
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 27
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 28
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->canSlidingUp(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    return p1
.end method

.method public getReconnectSlop()I
    .locals 1

    .line 69
    sget v0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method protected getSwipeDirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
