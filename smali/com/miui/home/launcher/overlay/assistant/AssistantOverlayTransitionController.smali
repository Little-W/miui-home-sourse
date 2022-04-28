.class public Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;
.super Lcom/miui/home/launcher/overlay/OverlayTransitionController;
.source "AssistantOverlayTransitionController.java"


# instance fields
.field private mDeviceAdapter:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

.field private mScrolling:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 19
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mDeviceAdapter:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    return-void
.end method


# virtual methods
.method protected initCurrentAnimation(F)Z
    .locals 7

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    :goto_1
    move-object v2, v0

    if-eqz p1, :cond_2

    .line 28
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    move-object v3, v0

    goto :goto_2

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    move-object v3, v0

    goto :goto_2

    .line 32
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    move-object v3, v0

    .line 34
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    iget v0, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;->transitionDuration:I

    int-to-long v4, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return p1
.end method

.method public isScrolling()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    return v0
.end method

.method public isShow()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mDeviceAdapter:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollChanged(F)V

    :cond_0
    return-void
.end method

.method public onScrollEnd(F)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollEnd(F)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    const-string v1, "Launcher.AssistantOverlayTransitionController"

    const-string v2, "onScrollEnd"

    .line 60
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 62
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    .line 63
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 69
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_1

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->cancelPlaybackController()V

    :goto_1
    return-void
.end method

.method public onScrollStart(F)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollStart(F)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    const-string p1, "Launcher.AssistantOverlayTransitionController"

    const-string v0, "onScrollStart"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :goto_0
    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    .line 102
    iget-boolean p2, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz p2, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez p2, :cond_1

    return-void

    .line 108
    :cond_1
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    const/4 p3, 0x1

    if-eq p1, p2, :cond_2

    .line 109
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p1, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p1, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :goto_0
    return-void
.end method
