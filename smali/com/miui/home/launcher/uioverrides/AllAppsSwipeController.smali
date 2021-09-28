.class public Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;
.super Ljava/lang/Object;
.source "AllAppsSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/touch/SwipeDetector$Listener;
.implements Lcom/miui/home/launcher/util/LauncherStateSwitch;
.implements Lcom/miui/home/launcher/util/SwipeTouchController;


# instance fields
.field private mCanBlockFling:Z

.field private mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field private final mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

.field private mDisallowIntercept:Z

.field private mDisplacementShift:F

.field private mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

.field private mFromState:Lcom/miui/home/launcher/LauncherState;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNoIntercept:Z

.field private mProgressMultiplier:F

.field private mStartProgress:F

.field private mToState:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 49
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    return-void
.end method

.method private cancelAnimationControllers()V
    .locals 2

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    return-void
.end method

.method private getSwipeDirection()I
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 120
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    if-eq v2, v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    return v1
.end method

.method public static synthetic lambda$onDragEnd$0(Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method private reinitCurrentAnimation(ZZ)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-nez v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, p2, :cond_3

    :cond_2
    if-ne v0, p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 151
    :cond_4
    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 152
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mStartProgress:F

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->initCurrentAnimation()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    .line 156
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    const/4 p1, 0x1

    return p1
.end method

.method private resetCurrentAnimation(ZZF)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->reinitCurrentAnimation(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iput p3, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisplacementShift:F

    .line 200
    iget-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCanBlockFling:Z

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/FlingBlockCheck;->blockFling()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canCancel()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isIdleState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->canTouchControllerInterceptTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method protected getShiftRange()F
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v0

    return v0
.end method

.method protected getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;
    .locals 1

    .line 318
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 319
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    return-object p1

    .line 320
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 321
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    return-object p1

    :cond_1
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 8

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v5, v1

    .line 329
    iget-object v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    move-object v7, p0

    .line 330
    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 331
    iget-object v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    mul-float/2addr v1, v0

    .line 332
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    iget-object v3, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v2, v1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v2

    return v0
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 69
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    return v2

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisallowIntercept:Z

    if-eqz v0, :cond_1

    return v2

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    .line 77
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    return v2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    move v3, v1

    goto :goto_0

    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getSwipeDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    return v2

    :cond_4
    move v3, v2

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v4, v0, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 100
    :cond_5
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_6

    return v2

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->isAlreadyScrolled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    return v2

    .line 110
    :cond_7
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p1

    return p1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDrag(FF)Z
    .locals 5

    .line 181
    iget v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    iget v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisplacementShift:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    .line 182
    iget v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mStartProgress:F

    add-float/2addr v0, v1

    .line 183
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->updateProgress(F)V

    .line 184
    iget v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisplacementShift:F

    sub-float v1, p1, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 186
    invoke-direct {p0, v3, v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->resetCurrentAnimation(ZZF)V

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 188
    invoke-direct {p0, v4, v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->resetCurrentAnimation(ZZF)V

    goto :goto_1

    .line 190
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/FlingBlockCheck;->onEvent()V

    .line 193
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onDrag(F)V

    return v4
.end method

.method public onDragEnd(FZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {v2}, Lcom/miui/home/launcher/util/FlingBlockCheck;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    move p2, v1

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v3

    .line 219
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    .line 220
    invoke-interface {v4, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    if-eqz p2, :cond_3

    .line 223
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_2

    .line 224
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    .line 227
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, v4, p2

    if-lez p2, :cond_4

    .line 229
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    :goto_1
    if-eqz v2, :cond_5

    .line 236
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne p2, v2, :cond_5

    .line 237
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v0

    .line 239
    :goto_2
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const-wide/16 v5, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ne p2, v4, :cond_7

    cmpl-float v4, v3, v8

    if-ltz v4, :cond_6

    move v4, v8

    goto :goto_3

    :cond_6
    mul-float/2addr v7, p1

    .line 245
    iget v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    mul-float/2addr v7, v4

    add-float/2addr v7, v3

    invoke-static {v7, v9, v8}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 248
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v3, v8, v3

    .line 247
    invoke-static {p1, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v5

    int-to-long v2, v2

    mul-long/2addr v5, v2

    goto :goto_3

    .line 253
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    cmpg-float v4, v3, v9

    if-gtz v4, :cond_8

    move v4, v9

    move v8, v4

    goto :goto_3

    :cond_8
    mul-float/2addr v7, p1

    .line 260
    iget v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    mul-float/2addr v7, v4

    add-float/2addr v7, v3

    invoke-static {v7, v9, v8}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 263
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v9

    .line 262
    invoke-static {p1, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v5

    int-to-long v2, v2

    mul-long/2addr v5, v2

    move v8, v9

    .line 267
    :goto_3
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    new-instance v3, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$Q1m7xa_9G5QqCAKM-QaPtcSAIwY;

    invoke-direct {v3, p0, p2}, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$Q1m7xa_9G5QqCAKM-QaPtcSAIwY;-><init>(Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 270
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p2

    const/4 v2, 0x2

    .line 271
    new-array v2, v2, [F

    aput v4, v2, v1

    aput v8, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 272
    invoke-virtual {p2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    invoke-static {p1}, Lcom/miui/home/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 275
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 277
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onDragEnd()V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 2

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 166
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->cancelAnimationControllers()V

    .line 167
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->reinitCurrentAnimation(ZZ)Z

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisplacementShift:F

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->pause()V

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mStartProgress:F

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCanBlockFling:Z

    .line 174
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/FlingBlockCheck;->unblockFling()V

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onDragStart()V

    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 304
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->cancelAnimationControllers()V

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 306
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    const-string p1, "swipe"

    .line 307
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 55
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method protected updateProgress(F)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method
