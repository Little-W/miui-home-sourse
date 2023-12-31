.class public Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;
.super Ljava/lang/Object;
.source "AllAppsSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateListener;
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 52
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector;

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method private cancelAnimationControllers()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    .line 330
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    return-void
.end method

.method private getSwipeDirection()I
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 124
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object p0

    if-eq p0, v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    return v1
.end method

.method private reinitCurrentAnimation(ZZ)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-nez v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    if-eq p1, p2, :cond_3

    :cond_2
    if-ne v0, p1, :cond_4

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 155
    :cond_4
    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mStartProgress:F

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->initCurrentAnimation()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    .line 160
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    const/4 p0, 0x1

    return p0
.end method

.method private resetCurrentAnimation(ZZF)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->reinitCurrentAnimation(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iput p3, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisplacementShift:F

    .line 205
    iget-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCanBlockFling:Z

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/FlingBlockCheck;->blockFling()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canCancel()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isIdleState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 289
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

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->canTouchControllerInterceptTouchEvent(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    .line 313
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isDrawerModeEnable()Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method protected getShiftRange()F
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    return p0
.end method

.method protected getTargetState(Lcom/miui/home/launcher/LauncherState;Z)Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 334
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 335
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    return-object p0

    .line 336
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, p0, :cond_1

    if-nez p2, :cond_1

    .line 337
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    return-object p0

    :cond_1
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 8

    .line 343
    invoke-virtual {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v5, v1

    .line 345
    iget-object v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    move-object v7, p0

    .line 346
    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    .line 347
    iget-object v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    mul-float/2addr v1, v0

    .line 348
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    mul-float/2addr p0, v0

    sub-float/2addr p0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public synthetic lambda$onDragEnd$0$AllAppsSwipeController(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 73
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    return v2

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisallowIntercept:Z

    if-eqz v0, :cond_1

    return v2

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    .line 81
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    return v2

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    move v3, v1

    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->getSwipeDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 96
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    return v2

    :cond_4
    move v3, v2

    .line 100
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v4, v0, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 104
    :cond_5
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_6

    return v2

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 109
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->isAlreadyScrolled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mNoIntercept:Z

    return v2

    .line 114
    :cond_7
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(FF)Z
    .locals 5

    .line 186
    iget v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    iget v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisplacementShift:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    .line 187
    iget v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mStartProgress:F

    add-float/2addr v0, v1

    .line 188
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->updateProgress(F)V

    .line 189
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

    .line 191
    invoke-direct {p0, v3, v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->resetCurrentAnimation(ZZF)V

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 193
    invoke-direct {p0, v4, v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->resetCurrentAnimation(ZZF)V

    goto :goto_1

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/FlingBlockCheck;->onEvent()V

    .line 198
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onDrag(F)V

    return v4
.end method

.method public onDragEnd(FZ)V
    .locals 10

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {v2}, Lcom/miui/home/launcher/util/FlingBlockCheck;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    move p2, v1

    .line 226
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v3

    .line 227
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    .line 228
    invoke-interface {v4, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    if-eqz p2, :cond_4

    .line 231
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_3

    .line 232
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    .line 235
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, v4, p2

    if-lez p2, :cond_5

    .line 237
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    :goto_1
    if-eqz v2, :cond_6

    .line 244
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    if-ne p2, v2, :cond_6

    .line 245
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v0

    .line 247
    :goto_2
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    const-wide/16 v5, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ne p2, v4, :cond_8

    cmpl-float v4, v3, v8

    if-ltz v4, :cond_7

    move v4, v8

    goto :goto_3

    :cond_7
    mul-float/2addr v7, p1

    .line 253
    iget v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    mul-float/2addr v7, v4

    add-float/2addr v7, v3

    invoke-static {v7, v9, v8}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 256
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v3, v8, v3

    .line 255
    invoke-static {p1, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v5

    int-to-long v2, v2

    mul-long/2addr v5, v2

    goto :goto_3

    .line 261
    :cond_8
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    cmpg-float v4, v3, v9

    if-gtz v4, :cond_9

    move v4, v9

    move v8, v4

    goto :goto_3

    :cond_9
    mul-float/2addr v7, p1

    .line 268
    iget v4, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mProgressMultiplier:F

    mul-float/2addr v7, v4

    add-float/2addr v7, v3

    invoke-static {v7, v9, v8}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v4

    .line 271
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v9

    .line 270
    invoke-static {p1, v3}, Lcom/miui/home/launcher/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v5

    int-to-long v2, v2

    mul-long/2addr v5, v2

    move v8, v9

    .line 275
    :goto_3
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    new-instance v3, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$Q1m7xa_9G5QqCAKM-QaPtcSAIwY;

    invoke-direct {v3, p0, p2}, Lcom/miui/home/launcher/uioverrides/-$$Lambda$AllAppsSwipeController$Q1m7xa_9G5QqCAKM-QaPtcSAIwY;-><init>(Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 278
    iget-object p2, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v4, v2, v1

    aput v8, v2, v0

    .line 279
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 280
    invoke-virtual {p2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    invoke-static {p1}, Lcom/miui/home/launcher/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 283
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 285
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onDragEnd()V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->cancelAppToHomeAnim()V

    .line 167
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mToState:Lcom/miui/home/launcher/LauncherState;

    .line 171
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->cancelAnimationControllers()V

    .line 172
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->wasInitialTouchPositive()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->reinitCurrentAnimation(ZZ)Z

    const/4 p1, 0x0

    .line 173
    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisplacementShift:F

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->pause()V

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mStartProgress:F

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFromState:Lcom/miui/home/launcher/LauncherState;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCanBlockFling:Z

    .line 179
    iget-object p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mFlingBlockCheck:Lcom/miui/home/launcher/util/FlingBlockCheck;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/FlingBlockCheck;->unblockFling()V

    .line 181
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onDragStart()V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->cancelAnimationControllers()V

    return-void
.end method

.method public onStateTransitionStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 320
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->cancelAnimationControllers()V

    .line 321
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 322
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne p1, p0, :cond_0

    const-string p0, "swipe"

    .line 323
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 66
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method protected updateProgress(F)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    return-void
.end method
