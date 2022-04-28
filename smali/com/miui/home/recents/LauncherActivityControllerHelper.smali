.class public final Lcom/miui/home/recents/LauncherActivityControllerHelper;
.super Ljava/lang/Object;
.source "LauncherActivityControllerHelper.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/recents/ActivityControlHelper<",
        "Lcom/miui/home/launcher/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/LauncherActivityControllerHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;JLjava/util/function/Consumer;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->createActivityControllerInternal(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;JLjava/util/function/Consumer;)V

    return-void
.end method

.method private createActivityControllerInternal(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;JLjava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Lcom/miui/home/launcher/LauncherState;",
            "J",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/anim/AnimatorPlaybackController;",
            ">;)V"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p2, v0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 133
    invoke-direct {p0, v1, p1, v0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->playScaleDownAnim(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;)V

    const-wide/16 v2, 0x2

    mul-long/2addr p3, v2

    .line 135
    invoke-virtual {v1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 136
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/animation/Animator;

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 137
    new-instance v2, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p3, p4, v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLcom/miui/home/launcher/util/LauncherStateSwitch;)V

    .line 140
    new-instance p3, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;

    invoke-direct {p3, p1, v2, v0, p2}, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {v2, p3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 144
    invoke-interface {p5, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private getVisibleLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isLauncherDialogShowing()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 59
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 60
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$createActivityControllerInternal$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method private playScaleDownAnim(Landroid/animation/AnimatorSet;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;)V
    .locals 9

    .line 152
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/RecentsView;

    .line 154
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/miui/home/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/miui/home/recents/views/TaskView;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getScaleX()F

    move-result v1

    .line 163
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 165
    invoke-virtual {p2, v3}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    .line 166
    invoke-virtual {p2, v3}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    const/4 v4, 0x0

    .line 167
    invoke-virtual {p2, v4}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    .line 168
    new-instance v5, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 169
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v6

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Lcom/miui/home/recents/views/RecentsView;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/miui/home/recents/views/TaskViewThumbnail;Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 170
    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/RecentsView;->setScaleX(F)V

    .line 171
    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/RecentsView;->setScaleY(F)V

    .line 172
    invoke-virtual {p2, v2}, Lcom/miui/home/recents/views/RecentsView;->setTranslationY(F)V

    .line 174
    invoke-virtual {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceRect()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 175
    invoke-virtual {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceRect()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    .line 176
    invoke-virtual {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr p3, v1

    .line 177
    invoke-virtual {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 178
    invoke-virtual {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 179
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p3, v6, v0

    const/4 v7, 0x1

    aput v3, v6, v7

    invoke-static {p2, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 180
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v5, [F

    aput p3, v8, v0

    aput v3, v8, v7

    invoke-static {p2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 183
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v5, [F

    aput v1, v6, v0

    aput v4, v6, v7

    invoke-static {p2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 185
    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x3

    .line 188
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v0

    aput-object p3, v1, v7

    aput-object p2, v1, v5

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/miui/home/recents/LauncherInitListenerEx;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/LauncherInitListenerEx;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public getCreatedActivity()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVisibleRecentsView()Landroid/view/View;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getVisibleRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getVisibleLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVisibleRecentsViewIgnoringWinFocus()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getCreatedActivity()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic prepareRecentsUI(Lcom/miui/home/launcher/BaseActivity;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
    .locals 0

    .line 44
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->prepareRecentsUI(Lcom/miui/home/launcher/Launcher;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;

    move-result-object p1

    return-object p1
.end method

.method public prepareRecentsUI(Lcom/miui/home/launcher/Launcher;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "ZZ",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/anim/AnimatorPlaybackController;",
            ">;)",
            "Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p2

    .line 102
    iget-boolean p3, p2, Lcom/miui/home/launcher/LauncherState;->disableRestore:Z

    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherStateManager;->getRestState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p2

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/LauncherStateManager;->setRestState(Lcom/miui/home/launcher/LauncherState;)V

    .line 107
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 112
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 113
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    iput-boolean p3, v0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsIgnoreRecentsLaunchAnimationEnd:Z

    .line 114
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p3

    iput-boolean v0, p3, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsIgnoreRecentsLaunchAnimationEnd:Z

    .line 117
    new-instance p3, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/miui/home/recents/LauncherActivityControllerHelper$1;-><init>(Lcom/miui/home/recents/LauncherActivityControllerHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Ljava/util/function/Consumer;)V

    return-object p3
.end method

.method public switchToRecentsIfVisible()Z
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->getVisibleLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "homekey"

    .line 88
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->isAnimInPlayBack()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "LauncherActivityControllerHelper"

    const-string v1, "switchToRecentsIfVisible: don\'t switch to recents, launcher state transition animation is in playback"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method
