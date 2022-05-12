.class public Lcom/mi/globallauncher/BranchAllAppsIndicator;
.super Ljava/lang/Object;
.source "BranchAllAppsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;
    }
.end annotation


# static fields
.field private static final instance:Lcom/mi/globallauncher/BranchAllAppsIndicator;


# instance fields
.field private callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

.field private mDrawerBounceAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/mi/globallauncher/BranchAllAppsIndicator;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->instance:Lcom/mi/globallauncher/BranchAllAppsIndicator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelDrawerBounceAnimation()V
    .locals 1

    .line 137
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;
    .locals 1

    .line 30
    sget-object v0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->instance:Lcom/mi/globallauncher/BranchAllAppsIndicator;

    return-object v0
.end method

.method public static synthetic lambda$showDrawerBounceAnimation$0(Lcom/mi/globallauncher/BranchAllAppsIndicator;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showDrawerBounceAnimation(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V
    .locals 5

    .line 103
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->cancelDrawerBounceAnimation()V

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 108
    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "translationY"

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    .line 110
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    .line 113
    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 114
    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/mi/globallauncher/BranchAllAppsIndicator$1;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$1;-><init>(Lcom/mi/globallauncher/BranchAllAppsIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 127
    new-instance p1, Lcom/mi/globallauncher/-$$Lambda$BranchAllAppsIndicator$dQkD6hY9NzXDnMGzJADHdozekCA;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/-$$Lambda$BranchAllAppsIndicator$dQkD6hY9NzXDnMGzJADHdozekCA;-><init>(Lcom/mi/globallauncher/BranchAllAppsIndicator;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public changedByBranch(Lcom/miui/home/launcher/Launcher;)Z
    .locals 4

    .line 43
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 44
    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setVisibility(I)V

    .line 45
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 55
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getBranchScreenIndicator()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 56
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setAlpha(F)V

    .line 57
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 48
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getBranchScreenIndicator()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 49
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setAlpha(F)V

    .line 50
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    return v1
.end method

.method public isShowNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    .line 68
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    xor-int/2addr v1, p1

    :cond_0
    return v1
.end method

.method public onWallpaperColorChanged(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    if-eqz v0, :cond_0

    const v1, 0x7f0603eb

    .line 78
    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleMessage()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    return-void
.end method

.method public updateAllAppsIndicator(Z)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0800ba

    .line 89
    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {v1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleMessage()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->requestIndicatorLayout()V

    .line 92
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-direct {p0, p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->showDrawerBounceAnimation(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleMessage()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->callBack:Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->requestIndicatorLayout()V

    .line 97
    invoke-direct {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->cancelDrawerBounceAnimation()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
