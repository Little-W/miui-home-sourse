.class public Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
.super Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;
.source "AllAppsIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;


# instance fields
.field private mAllAppsIndicator:Landroid/widget/ImageView;

.field private mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

.field private mCurrentAnimator:Landroid/animation/AnimatorSet;

.field private mHandleContainer:Landroid/widget/LinearLayout;

.field private mHandleMessage:Landroid/widget/TextView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mScreenIndicator:Landroid/view/View;

.field private mShowAllAppsArrowRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/miui/home/launcher/pageindicators/-$$Lambda$AllAppsIndicator$wVFqWplHzSGFTXCPQsp0npAC1vU;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/pageindicators/-$$Lambda$AllAppsIndicator$wVFqWplHzSGFTXCPQsp0npAC1vU;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    .line 38
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    .line 40
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const v1, 0x7f10001f

    const/16 v2, 0x51

    const/4 v3, -0x2

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->setCallBack(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d0023

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0050

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0a012e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleMessage:Landroid/widget/TextView;

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private hideAllAppsArrow()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 135
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private isScreenViewScrolling()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 164
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isScrollingOrSlidingState()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 168
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

.method public static synthetic lambda$wVFqWplHzSGFTXCPQsp0npAC1vU(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->showAllAppsArrow()V

    return-void
.end method

.method private showAllAppsArrow()V
    .locals 9

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 109
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 110
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    aput v2, v8, v5

    .line 112
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v5

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    aput v1, v7, v5

    .line 113
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v4

    .line 111
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    aput v2, v8, v5

    .line 116
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v5

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    aput v1, v7, v5

    .line 117
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v4

    .line 115
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 0

    return-object p0
.end method

.method public getBranchScreenIndicator()Landroid/view/View;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    return-object v0
.end method

.method public getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    return-object v0
.end method

.method public getHandleContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHandleMessage()Landroid/widget/TextView;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showAppView()V

    :cond_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->requestLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 174
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setPaintColor(I)V

    .line 178
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->onWallpaperColorChanged(Landroid/content/Context;)V

    return-void
.end method

.method public refreshAllAppsArrow()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    return-void
.end method

.method public refreshAllAppsArrow(Z)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 92
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->changedByBranch(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->hideAllAppsArrow()V

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x190

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public requestIndicatorLayout()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->requestLayout()V

    return-void
.end method

.method public setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public shouldHide()Z
    .locals 2

    .line 153
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->isShowNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 155
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 156
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 157
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 158
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->isScreenViewScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateAllAppsIndicator(Z)V
    .locals 1

    .line 182
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->updateAllAppsIndicator(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 83
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
