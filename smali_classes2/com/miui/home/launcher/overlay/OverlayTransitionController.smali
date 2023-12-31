.class public abstract Lcom/miui/home/launcher/overlay/OverlayTransitionController;
.super Ljava/lang/Object;
.source "OverlayTransitionController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
.implements Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;
.implements Lcom/miui/home/launcher/util/LauncherStateSwitch;


# instance fields
.field protected isTargetOpenOverlay:Z

.field private mAlpha:F

.field protected mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field private mScale:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    .line 94
    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    .line 18
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public canCancel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract initCurrentAnimation(F)Z
.end method

.method public isOverlayAttached()Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onScrollChanged(F)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 36
    iget-boolean v2, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->isTargetOpenOverlay:Z

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    sub-float v2, v1, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    return-void
.end method

.method public onScrollEnd(F)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onOverlayScrollEnd()V

    return-void
.end method

.method public onScrollStart(F)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->initCurrentAnimation(F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->isTargetOpenOverlay:Z

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->pause()V

    :goto_0
    return-void
.end method

.method protected abstract reset()V
.end method

.method public setAlphaAndScale(FF)V
    .locals 1

    .line 107
    iget v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setAlphaAndScale(FF)V

    .line 113
    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    .line 114
    iput p2, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    return-void
.end method

.method public setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->reset()V

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    :cond_0
    return-void
.end method

.method public showOverlay(Z)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :cond_0
    return-void
.end method
