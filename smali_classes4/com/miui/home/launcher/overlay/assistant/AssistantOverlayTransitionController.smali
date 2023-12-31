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

    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    goto :goto_2

    .line 32
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_2

    .line 34
    :goto_3
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
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    return p0
.end method

.method public isShow()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mDeviceAdapter:Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onScrollChanged(F)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollChanged(F)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    sub-float/2addr p1, v2

    mul-float/2addr p1, v1

    sub-float p1, v3, p1

    .line 58
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v2

    mul-float/2addr p1, v1

    sub-float p1, v3, p1

    const v0, 0x3f733333    # 0.95f

    .line 60
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 61
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setScaleX(F)V

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setScaleY(F)V

    return-void
.end method

.method public onScrollEnd(F)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollEnd(F)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    const-string v1, "Launcher.AssistantOverlayTransitionController"

    const-string v2, "onScrollEnd"

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    .line 75
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 76
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x3f733333    # 0.95f

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 85
    :cond_2
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v2, :cond_3

    .line 86
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->cancelPlaybackController()V

    .line 90
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Workspace;->setScaleX(F)V

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setScaleY(F)V

    return-void
.end method

.method public onScrollStart(F)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollStart(F)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mScrolling:Z

    const-string p0, "Launcher.AssistantOverlayTransitionController"

    const-string p1, "onScrollStart"

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setScaleX(F)V

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 116
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p0, v1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p0, v1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :goto_0
    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    .line 124
    iget-boolean p2, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz p2, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez p2, :cond_1

    return-void

    .line 130
    :cond_1
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    const/4 p3, 0x1

    if-eq p1, p2, :cond_2

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p0, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    invoke-interface {p0, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :goto_0
    return-void
.end method
