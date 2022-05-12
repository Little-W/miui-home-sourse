.class public Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.source "UserPresentLoadingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;,
        Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;
    }
.end annotation


# instance fields
.field private mAnimItemCount:I

.field private final mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mIsLoading:Z

.field private mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

.field private mScreenDiagonalDistance:I

.field private final mTmpLocation:[I

.field private mWorkspaceLoadingView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x2

    .line 27
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    .line 143
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;-><init>(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$006(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)I
    .locals 1

    .line 26
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    return-object p0
.end method


# virtual methods
.method public prepareLoadingAnimation(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;)V
    .locals 4

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->prepareAnimation()V

    .line 54
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;->onAnimationFinish()V

    :cond_0
    return-void
.end method

.method prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 44
    instance-of v0, p1, Lcom/miui/home/launcher/interfaces/UserPresentLoadingAnimIgnore;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/interfaces/UserPresentLoadingAnimIgnore;

    invoke-interface {p1}, Lcom/miui/home/launcher/interfaces/UserPresentLoadingAnimIgnore;->needIgnore()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimItemCount:I

    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mPreparedScreenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimationListener:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;->onAnimationFinish()V

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showAnimation()V

    return-void
.end method

.method public showAnimationAndDismissLoading()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, " Dismiss loading "

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    .line 64
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->showAnimation()V

    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 79
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

    .line 80
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, " show loading "

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0143

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mWorkspaceLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->addView(Landroid/view/View;)V

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mLoadingAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mIsLoading:Z

    :cond_1
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;)V
    .locals 8

    .line 98
    iget v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mScreenDiagonalDistance:I

    .line 102
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 105
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 107
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 108
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

    .line 111
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v0

    mul-int/lit16 v1, v0, 0x1f4

    .line 113
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

    .line 118
    :goto_1
    instance-of v5, p1, Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;

    if-eqz v5, :cond_4

    .line 119
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

    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    :goto_2
    add-float/2addr v2, v5

    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 122
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, -0x32

    .line 127
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;->sInstance:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long v0, v0

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
