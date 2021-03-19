.class public Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
.super Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;
.source "AllAppsIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAllAppsIndicator:Landroid/widget/ImageView;

.field private mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

.field private mCurrentAnimator:Landroid/animation/AnimatorSet;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mScreenIndicator:Landroid/view/View;

.field private mShowAllAppsArrowRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lcom/miui/home/launcher/pageindicators/-$$Lambda$AllAppsIndicator$wVFqWplHzSGFTXCPQsp0npAC1vU;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/pageindicators/-$$Lambda$AllAppsIndicator$wVFqWplHzSGFTXCPQsp0npAC1vU;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    .line 31
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    .line 33
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    .line 34
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 35
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    const v1, 0x7f10001e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private hideAllAppsArrow()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private isScreenViewScrolling()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 134
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isScrollingOrSlidingState()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 138
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->isScrollingOrSlidingState()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isWidgetScreenShowing()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 143
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 144
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isWidgetScreenType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$wVFqWplHzSGFTXCPQsp0npAC1vU(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->showAllAppsArrow()V

    return-void
.end method

.method private showAllAppsArrow()V
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 89
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 91
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    .line 92
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 90
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showAppView()V

    :cond_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->requestLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 150
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setPaintColor(I)V

    :cond_1
    return-void
.end method

.method public refreshAllAppsArrow()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    return-void
.end method

.method public refreshAllAppsArrow(Z)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->hideAllAppsArrow()V

    goto :goto_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x190

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public shouldHide()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 124
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 125
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 126
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 127
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->isScreenViewScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->isWidgetScreenShowing()Z

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

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
