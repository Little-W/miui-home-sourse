.class public Lcom/miui/home/recents/OverviewState;
.super Lcom/miui/home/launcher/LauncherState;
.source "OverviewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/OverviewState$_lancet;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "OverviewState"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1f4

    const/4 v1, 0x4

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getOverviewBackgroundAlpha()F
    .locals 1

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseNoRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseSimpleRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    return v0
.end method

.method public getShortcutMenuLayerAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutMenuLayerScale()F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 55
    sget-object v0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v1, "onExitState"

    invoke-static {v0, v1}, Lcom/miui/home/recents/OverviewState$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 57
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->onExitState(Lcom/miui/home/launcher/Launcher;)V

    .line 59
    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    const-string v1, "action_close_recent"

    .line 60
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 5

    .line 37
    sget-object v0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v1, "onStateEnabled"

    invoke-static {v0, v1}, Lcom/miui/home/recents/OverviewState$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/RecentsView;

    .line 40
    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    .line 41
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled()V

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06018a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RotationHelper;->updateRotationAnimation(I)V

    const v1, 0x7f100024

    .line 48
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 49
    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    const-string v1, "action_open_recent"

    .line 50
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 65
    sget-object v0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v1, "onStateTransitionEnd"

    invoke-static {v0, v1}, Lcom/miui/home/recents/OverviewState$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method

.method public reenter(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    .line 84
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->showStatusBarDelay(ZJ)V

    :cond_0
    return-void
.end method
