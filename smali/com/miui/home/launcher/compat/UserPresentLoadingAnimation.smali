.class public Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.source "UserPresentLoadingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;
    }
.end annotation


# instance fields
.field private mIsLoading:Z

.field private mLastStartedView:Landroid/view/View;

.field private mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field private mScreenDiagonalDistance:I

.field private final mTmpLocation:[I

.field private mWorkspaceLoadingView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x2

    .line 20
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLastStartedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getLastStartedView()Landroid/view/View;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLastStartedView:Landroid/view/View;

    return-object v0
.end method

.method public prepareAnimation()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareAnimation()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLastStartedView:Landroid/view/View;

    return-void
.end method

.method prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public showAnimationAndDismissLoading()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, " Dismiss loading "

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    .line 53
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->showAnimation()V

    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 61
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, " show loading "

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d011c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a014c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->addView(Landroid/view/View;)V

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    :cond_1
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;)V
    .locals 9

    .line 79
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    .line 83
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 86
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 88
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 89
    iget-object v4, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v2, v0

    sub-int/2addr v4, v1

    int-to-float v0, v2

    int-to-float v1, v4

    .line 92
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    mul-int/lit16 v1, v0, 0x1f4

    .line 94
    iget v5, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    div-int/2addr v1, v5

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    const v5, 0x3f19999a    # 0.6f

    add-float/2addr v0, v5

    const v5, 0x3e19999a    # 0.15f

    const/4 v6, 0x0

    if-nez v1, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    neg-int v2, v2

    int-to-float v2, v2

    int-to-float v7, v1

    mul-float/2addr v7, v5

    div-float/2addr v2, v7

    :goto_0
    if-nez v1, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    neg-int v4, v4

    int-to-float v4, v4

    int-to-float v7, v1

    mul-float/2addr v7, v5

    div-float/2addr v4, v7

    .line 99
    :goto_1
    instance-of v5, p1, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;

    if-eqz v5, :cond_4

    .line 100
    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;

    invoke-interface {v5}, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;->needReset()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    :goto_2
    add-float/2addr v2, v5

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, -0x32

    .line 108
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;->sInstance:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v7, 0xfa

    .line 113
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLastStartedView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 121
    :cond_5
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLastStartedView:Landroid/view/View;

    :cond_6
    return-void
.end method
