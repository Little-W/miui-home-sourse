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

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v0, Lcom/miui/home/launcher/pageindicators/-$$Lambda$AllAppsIndicator$wVFqWplHzSGFTXCPQsp0npAC1vU;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/pageindicators/-$$Lambda$AllAppsIndicator$wVFqWplHzSGFTXCPQsp0npAC1vU;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    .line 51
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    .line 53
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const v1, 0x7f11001f

    const/16 v2, 0x51

    const/4 v3, -0x2

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->setCallBack(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V

    .line 55
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

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0a005a

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0198

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleMessage:Landroid/widget/TextView;

    .line 58
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    .line 65
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private checkUpdateAccessibility(Z)V
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getScreenIndicatorPointCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v1, v0, :cond_2

    .line 172
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    .line 174
    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :cond_4
    return-void
.end method

.method private hideAllAppsArrow()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 158
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->checkUpdateAccessibility(Z)V

    return-void
.end method

.method private isScreenViewScrolling()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 205
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isScrollingOrSlidingState()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->isScrollingOrSlidingState()Z

    move-result p0

    if-eqz p0, :cond_1

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

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 128
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    return-void

    .line 131
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    .line 132
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v5, [F

    aput v2, v8, v4

    .line 134
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v4

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    aput v1, v7, v4

    .line 135
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v5

    .line 133
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v5, [F

    aput v2, v8, v4

    .line 138
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v4

    iget-object v2, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mAllAppsIndicator:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    aput v1, v7, v4

    .line 139
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v5

    .line 137
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;-><init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 149
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->checkUpdateAccessibility(Z)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 0

    return-object p0
.end method

.method public getBranchScreenIndicator()Landroid/view/View;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mScreenIndicator:Landroid/view/View;

    return-object p0
.end method

.method public getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    return-object p0
.end method

.method public getHandleContainer()Landroid/widget/LinearLayout;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getHandleMessage()Landroid/widget/TextView;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mHandleMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;->onAttachedToWindow()V

    .line 46
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 189
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showAppView()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->requestLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 215
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setPaintColor(I)V

    .line 219
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->onWallpaperColorChanged(Landroid/content/Context;)V

    return-void
.end method

.method public refreshAllAppsArrow()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    return-void
.end method

.method public refreshAllAppsArrow(Z)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 108
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->changedByBranch(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->hideAllAppsArrow()V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mShowAllAppsArrowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x190

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public requestIndicatorLayout()V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->requestLayout()V

    return-void
.end method

.method public setCaretDrawable(Lcom/miui/home/launcher/pageindicators/CaretDrawable;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public shouldHide()Z
    .locals 2

    .line 194
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->isShowNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 196
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 197
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 198
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 199
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->isScreenViewScrolling()Z

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

.method public updateAllAppsIndicator(Z)V
    .locals 0

    .line 223
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->updateAllAppsIndicator(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object p0

    if-ne p1, p0, :cond_0

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
