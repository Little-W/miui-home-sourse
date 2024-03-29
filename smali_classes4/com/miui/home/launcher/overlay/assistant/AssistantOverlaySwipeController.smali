.class public Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;
.super Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.source "AssistantOverlaySwipeController.java"


# instance fields
.field private mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 34
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 35
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 36
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragLayer;->isWidgetBeingResized()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 37
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 38
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 39
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 40
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 41
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 42
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 43
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragLayer;->isStatusBarFollowingTouch()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 44
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 45
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 46
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 47
    invoke-static {v2}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 49
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 51
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    const-string v3, "AssistantOverlaySwipeController"

    const-string v4, " Can\'t scroll to -1 screen "

    .line 54
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " Check Launcher status "

    .line 55
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " 2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 3 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 4 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 59
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 5 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 60
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->isWidgetBeingResized()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 6 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 61
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 7 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 62
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 8 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 63
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 9 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 10 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 65
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 11 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 12 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 67
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->isStatusBarFollowingTouch()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 13 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 68
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 14 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 69
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 15 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 70
    invoke-static {p1}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p1

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 16 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 17 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 72
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 18 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 19 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 74
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 20 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " 21 "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public getReconnectSlop()I
    .locals 0

    .line 83
    sget p0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method protected getSwipeDirection()I
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    .line 89
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 91
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onDrag(FF)Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p2, :cond_1

    .line 106
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    const/high16 v0, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mWindowShift:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollChange(FZ)V

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 103
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDrag(FF)Z

    move-result p0

    return p0
.end method

.method public setAssistantTransitionController(Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    return-void
.end method
