.class public Lcom/miui/home/launcher/touch/FeedSwipeController;
.super Ljava/lang/Object;
.source "FeedSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;
.implements Lcom/miui/home/launcher/touch/SwipeDetector$Listener;
.implements Lcom/miui/home/launcher/util/LauncherStateSwitch;
.implements Lcom/miui/home/launcher/util/SwipeTouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;
    }
.end annotation


# instance fields
.field protected mAtomicAnim:Landroid/animation/AnimatorSet;

.field private mBlockFling:Z

.field private mBlockFlingTime:J

.field private mCanBlockFling:Z

.field protected mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field protected final mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

.field private mDisallowIntercept:Z

.field private mDisplacementShift:F

.field protected mFromState:Lcom/miui/home/launcher/LauncherState;

.field private mIsFeedAnim:Z

.field private mIsNestScrollStart:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNoIntercept:Z

.field private mProgressMultiplier:F

.field private mStartProgress:F

.field protected mToState:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 37
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static boundToRange(FFF)F
    .locals 0

    .line 441
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private cancelAnimationControllers()V
    .locals 1

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsFeedAnim:Z

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    return-void
.end method

.method private changeState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, v0, :cond_0

    .line 350
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    sget-object v0, Lcom/miui/newhome/view/gestureview/NewHomeState;->SCROLL_TO_HIDE:Lcom/miui/newhome/view/gestureview/NewHomeState;

    invoke-virtual {p1, v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->changeState(Lcom/miui/newhome/view/gestureview/NewHomeState;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    sget-object v0, Lcom/miui/newhome/view/gestureview/NewHomeState;->SCROLL_TO_SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    invoke-virtual {p1, v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->changeState(Lcom/miui/newhome/view/gestureview/NewHomeState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getRemainingAtomicDuration()J
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 404
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    .line 405
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mAtomicAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 409
    invoke-virtual {v3}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private getSwipeDirection()I
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 166
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    if-eq v2, v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    return v1
.end method

.method private hideFeed(Z)V
    .locals 11

    .line 556
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initAutoAnim(Lcom/miui/home/launcher/LauncherState;)V

    .line 558
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result v5

    if-eqz p1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    .line 560
    invoke-static {p1, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v7, v0

    .line 562
    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/miui/home/launcher/touch/FeedSwipeController;->startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V

    return-void
.end method

.method private initAutoAnim(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 577
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 578
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    const/4 p1, 0x0

    .line 579
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    .line 580
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initCurrentAnimation()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    .line 581
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 582
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    return-void
.end method

.method public static synthetic lambda$startAnim$0(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public static synthetic lambda$startAnim$1(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V

    .line 337
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onDragEnd(FZZLjava/lang/Runnable;)V
    .locals 10

    .line 246
    iget-object p3, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    move p2, v0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    .line 254
    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    if-eqz p2, :cond_4

    .line 258
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    :goto_1
    move-object v3, p2

    goto :goto_3

    :cond_4
    if-nez p4, :cond_6

    .line 263
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, v2, p2

    if-lez p2, :cond_5

    .line 265
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    :goto_2
    move-object v3, p2

    goto :goto_3

    .line 267
    :cond_6
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    move-object v3, p2

    :goto_3
    if-eqz v1, :cond_7

    .line 274
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne v3, p2, :cond_7

    .line 275
    invoke-static {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->blockedFlingDurationFactor(F)I

    move-result p3

    .line 277
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const-wide/16 v1, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ne v3, p2, :cond_9

    cmpl-float p2, v0, v5

    if-ltz p2, :cond_8

    move-wide v6, v1

    move v4, v5

    goto :goto_4

    :cond_8
    mul-float/2addr v4, p1

    .line 283
    iget p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    mul-float/2addr v4, p2

    add-float/2addr v4, v0

    invoke-static {v4, v6, v5}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result p2

    .line 286
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v5, v0

    .line 285
    invoke-static {p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    int-to-long v6, p3

    mul-long/2addr v0, v6

    move v4, p2

    move-wide v6, v0

    goto :goto_4

    .line 289
    :cond_9
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    cmpg-float p2, v0, v6

    if-gtz p2, :cond_a

    move v4, v6

    move v5, v4

    move-wide v6, v1

    goto :goto_4

    :cond_a
    mul-float/2addr v4, p1

    .line 295
    iget p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    mul-float/2addr v4, p2

    add-float/2addr v4, v0

    invoke-static {v4, v6, v5}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result p2

    .line 298
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v6

    .line 297
    invoke-static {p1, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    int-to-long v4, p3

    mul-long/2addr v0, v4

    move v4, p2

    move v5, v6

    move-wide v6, v0

    :goto_4
    move-object v2, p0

    move v8, p1

    move-object v9, p4

    .line 301
    invoke-direct/range {v2 .. v9}, Lcom/miui/home/launcher/touch/FeedSwipeController;->startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V

    return-void
.end method

.method private reinitCurrentAnimation(ZZ)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-nez v0, :cond_0

    .line 184
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, p2, :cond_3

    :cond_2
    if-ne v0, p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 197
    :cond_4
    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 198
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initCurrentAnimation()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    .line 202
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    const/4 p1, 0x1

    return p1
.end method

.method private showFeed(Z)V
    .locals 11

    .line 566
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->initAutoAnim(Lcom/miui/home/launcher/LauncherState;)V

    .line 568
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->boundToRange(FFF)F

    move-result v5

    if-eqz p1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    .line 570
    invoke-static {p1, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v7, v0

    .line 572
    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/miui/home/launcher/touch/FeedSwipeController;->startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V

    return-void
.end method

.method private startAnim(Lcom/miui/home/launcher/LauncherState;FFJFLjava/lang/Runnable;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p7}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    if-nez p7, :cond_0

    .line 333
    iget-object p7, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    new-instance v0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$vvfnAOToMbaWQXwg3iNZzbFPyNc;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$vvfnAOToMbaWQXwg3iNZzbFPyNc;-><init>(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {p7, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    new-instance v1, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;

    invoke-direct {v1, p0, p1, p7}, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;-><init>(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 340
    :goto_0
    iget-object p7, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p7}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p7

    const/4 v0, 0x2

    .line 341
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-virtual {p7, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 342
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getRemainingAtomicDuration()J

    move-result-wide p2

    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p0, p7, p2, p3, p6}, Lcom/miui/home/launcher/touch/FeedSwipeController;->updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JF)V

    .line 343
    iget-object p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 344
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->start()V

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->changeState(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method


# virtual methods
.method public autoShowHideFeed(ZZ)V
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isLauncherNormalState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 516
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-eq v0, p1, :cond_2

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p1, :cond_2

    .line 517
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->showFeed(Z)V

    goto :goto_0

    .line 520
    :cond_1
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p1, :cond_2

    .line 521
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->hideFeed(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public blockFling()V
    .locals 2

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFlingTime:J

    return-void
.end method

.method public canCancel()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isIdleState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isLauncherNormalState()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 480
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v0, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "FeedSwipeController"

    const-string v0, "shouldContainerScroll false"

    .line 482
    invoke-static {p1, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    const-string v0, "FeedSwipeController"

    const-string v2, "ClassNotFoundException"

    .line 486
    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v1
.end method

.method protected getShiftRange()F
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedTransController;->getShiftRange()F

    move-result v0

    return v0
.end method

.method protected getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;
    .locals 1

    .line 492
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 493
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    return-object p1

    .line 494
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 495
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    return-object p1

    :cond_1
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 8

    .line 501
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v5, v1

    const/4 v1, 0x1

    .line 503
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsFeedAnim:Z

    .line 504
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    move-object v7, p0

    .line 505
    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 506
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherState;->getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    mul-float/2addr v1, v0

    .line 507
    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    iget-object v3, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherState;->getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v2, v1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v2

    return v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    return v0
.end method

.method public isFeedAnim()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsFeedAnim:Z

    return v0
.end method

.method public isLauncherNormalState()Z
    .locals 10

    .line 527
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v2

    .line 532
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    .line 533
    iget-object v3, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    .line 534
    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v4

    .line 535
    iget-object v5, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v5

    .line 536
    iget-object v6, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v6

    const-string v7, "FeedSwipeController"

    .line 537
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "touchState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " scrolling : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " normalEditing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " WidgetThumbnailViewShowing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " UninstallDialogShowing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isMinusScreenShowing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 540
    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 546
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 547
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFreeStyleExists()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v0, "FeedSwipeController"

    const-string v2, "can not use"

    .line 549
    invoke-static {v0, v2}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isMiniusOneScreenShow()Z
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 80
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisallowIntercept:Z

    if-eqz v0, :cond_1

    return v2

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 87
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    .line 89
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    return v2

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    move v3, v1

    goto :goto_0

    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->getSwipeDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 104
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    :cond_4
    move v3, v2

    :goto_0
    const-string v4, "FeedSwipeController"

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN-> directions To Detect Scroll: 1=POSITIVE 2=NEGATIVE 3=BOTH "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v4, v0, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 114
    :cond_5
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_6

    return v2

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 119
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->isAlreadyScrolled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    .line 125
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 127
    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->isViewPagerScorll()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 128
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z

    return v2

    .line 131
    :cond_8
    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->isAppBarLayoutScroll()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 134
    :cond_9
    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/miui/newhome/view/gestureview/NewHomeView;->getNewHomeState()Lcom/miui/newhome/view/gestureview/NewHomeState;

    move-result-object v0

    sget-object v3, Lcom/miui/newhome/view/gestureview/NewHomeState;->SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    if-ne v0, v3, :cond_a

    const-string v0, "FeedSwipeController"

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feed intercept newhomeView show mIsNestScrollStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " action->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mNoIntercept:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    :cond_a
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    if-nez v0, :cond_b

    const-string v0, "FeedSwipeController"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feed intercept FeedSwipeController mCurrentAnimation != null&&mIsNestScrollStart false --action->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    return v1

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v1, "FeedSwipeController"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feed intercept FeedSwipeController mDetector DraggingOrSettling --action->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v0, :cond_d

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    :cond_d
    return v0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDrag(FF)Z
    .locals 4

    .line 360
    iget p2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mProgressMultiplier:F

    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    sub-float v0, p1, v0

    mul-float/2addr p2, v0

    .line 361
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    add-float/2addr p2, v0

    .line 362
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->updateProgress(F)V

    .line 363
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    .line 365
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 366
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    .line 367
    iget-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    if-eqz p1, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->blockFling()V

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    .line 372
    invoke-direct {p0, v3, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 373
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    .line 374
    iget-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    if-eqz p1, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->blockFling()V

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onEvent()V

    :cond_3
    :goto_1
    return v3
.end method

.method public onDragEnd(FZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 393
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZZLjava/lang/Runnable;)V

    return-void
.end method

.method public onDragEnd(FZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZZLjava/lang/Runnable;)V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 2

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 210
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 211
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    const/4 p1, 0x0

    .line 213
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->pause()V

    .line 216
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mStartProgress:F

    .line 218
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->unblockFling()V

    return-void
.end method

.method public onEvent()V
    .locals 4

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFlingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    :cond_0
    return-void
.end method

.method public onNestScrolling(F)Z
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDrag(FF)Z

    move-result p1

    return p1
.end method

.method public onStartNestScroll()V
    .locals 3

    .line 227
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 229
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, v0, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->reinitCurrentAnimation(ZZ)Z

    const/4 v1, 0x0

    .line 231
    iput v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisplacementShift:F

    .line 232
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCanBlockFling:Z

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->unblockFling()V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public onStopNestScroll(FZ)V
    .locals 2

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onDragEnd(FZZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 422
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->cancelAnimationControllers()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mDisallowIntercept:Z

    return-void
.end method

.method public setStartNestedScroll(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mIsNestScrollStart:Z

    return-void
.end method

.method public unblockFling()V
    .locals 2

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFling:Z

    const-wide/16 v0, 0x0

    .line 455
    iput-wide v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mBlockFlingTime:J

    return-void
.end method

.method protected updateProgress(F)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    return-void
.end method

.method protected updateSwipeCompleteAnimation(Landroid/animation/ValueAnimator;JF)V
    .locals 0

    .line 416
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 417
    invoke-static {p4}, Lcom/miui/home/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
