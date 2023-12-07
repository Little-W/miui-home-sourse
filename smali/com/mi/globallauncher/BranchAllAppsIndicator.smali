.class public Lcom/mi/globallauncher/BranchAllAppsIndicator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BranchAllAppsIndicator"

.field private static final instance:Lcom/mi/globallauncher/BranchAllAppsIndicator;


# instance fields
.field private mAppsIndicatorCallBack:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawerBounceAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/globallauncher/BranchAllAppsIndicator;

    invoke-direct {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->instance:Lcom/mi/globallauncher/BranchAllAppsIndicator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelDrawerBounceAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private getIBranchAllAppsIndicatorCallBack()Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mAppsIndicatorCallBack:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcom/mi/globallauncher/BranchAllAppsIndicator;
    .locals 1

    sget-object v0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->instance:Lcom/mi/globallauncher/BranchAllAppsIndicator;

    return-object v0
.end method

.method private showDrawerBounceAnimation(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string/jumbo v3, "translationY"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/mi/globallauncher/BranchAllAppsIndicator$1;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$1;-><init>(Lcom/mi/globallauncher/BranchAllAppsIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-interface {p1}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Lcom/mi/globallauncher/-$$Lambda$BranchAllAppsIndicator$dQkD6hY9NzXDnMGzJADHdozekCA;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/-$$Lambda$BranchAllAppsIndicator$dQkD6hY9NzXDnMGzJADHdozekCA;-><init>(Lcom/mi/globallauncher/BranchAllAppsIndicator;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    return-void

    nop

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

    invoke-direct {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getIBranchAllAppsIndicatorCallBack()Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "BranchAllAppsIndicator"

    const-string p1, "changedByBranch: callBack = null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mi/globallauncher/BranchClientImplement;->showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    :cond_2
    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getBranchScreenIndicator()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setAlpha(F)V

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getBranchScreenIndicator()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->setAlpha(F)V

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public isShowNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->showNewFeatureTag(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    xor-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public synthetic lambda$showDrawerBounceAnimation$0$BranchAllAppsIndicator()V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mDrawerBounceAnimation:Landroid/animation/AnimatorSet;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onWallpaperColorChanged(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getIBranchAllAppsIndicatorCallBack()Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    move-result-object p0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0x7f0605f2

    invoke-interface {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleMessage()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mi/globallauncher/BranchAllAppsIndicator;->mAppsIndicatorCallBack:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updateAllAppsIndicator(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->getIBranchAllAppsIndicatorCallBack()Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;

    move-result-object v0

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->cancelDrawerBounceAnimation()V

    if-eqz p1, :cond_1

    const p1, 0x7f0801a3

    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleMessage()Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->requestIndicatorLayout()V

    invoke-direct {p0, v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator;->showDrawerBounceAnimation(Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->getHandleMessage()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {v0}, Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;->requestIndicatorLayout()V

    :cond_2
    :goto_0
    return-void
.end method
