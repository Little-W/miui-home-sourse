.class public Lcom/miui/home/recents/OverviewState;
.super Lcom/miui/home/launcher/LauncherState;
.source "OverviewState.java"


# static fields
.field private static TAG:Ljava/lang/String; = "OverviewState"


# instance fields
.field public mIsIgnoreWallpaperZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1f4

    const/4 v1, 0x4

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    return-void
.end method


# virtual methods
.method public getShortcutMenuLayerAlpha()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getShortcutMenuLayerScale()F
    .locals 0

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f6e147b    # 0.93f

    goto :goto_0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    :goto_0
    return p0
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 75
    sget-object v0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v1, "onExitState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 78
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isLightBgForStatusBar(Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onExitState()V

    .line 82
    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v3, "action_close_recent"

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 84
    iget-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 87
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    return-void
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 44
    sget-object p0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v0, "onStateEnabled"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->dismissPullToSearchTips()V

    .line 49
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    .line 53
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060575

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 56
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/RotationHelper;->updateRotationAnimation(I)V

    const v1, 0x7f110025

    .line 59
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 60
    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const-string v2, "action_open_recent"

    invoke-virtual {v1, v2, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p0, 0x1

    .line 62
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 63
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    .line 65
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    .line 68
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherSoscController;->isSoscEventDispatching()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherSoscController;->cancelSoscingAnim(Z)V

    :cond_2
    return-void
.end method

.method public onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 92
    sget-object p0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v0, "onStateTransitionEnd"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method

.method public reenter(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 106
    iget-boolean p0, p0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-wide/16 v1, 0x258

    .line 107
    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    :cond_0
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    :cond_1
    return-void
.end method
