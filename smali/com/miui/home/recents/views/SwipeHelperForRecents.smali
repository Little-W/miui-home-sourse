.class public Lcom/miui/home/recents/views/SwipeHelperForRecents;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;
    }
.end annotation


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

.field private mCurrView:Landroid/view/View;

.field private mCurrentAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private mInitialTouchPos:F

.field private mLockOrUnlockTaskViewDistance:F

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private mSwipeDirection:I

.field private mTaskViewHeaderVisibleDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

.field private mTaskViewLockDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 58
    iput v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->SWIPE_ESCAPE_VELOCITY:F

    const/16 v0, 0x12c

    .line 59
    iput v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 60
    iput v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0xfa0

    .line 61
    iput v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->MAX_DISMISS_VELOCITY:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mMinSwipeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    iput v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mMaxSwipeProgress:F

    .line 81
    iput v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTranslation:F

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    .line 99
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    .line 100
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDensityScale:F

    .line 102
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mPagingTouchSlop:F

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070214

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mFalsingThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;ZF)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDisableHwLayers:Z

    return p0
.end method

.method private adjustTransDelta(F)F
    .locals 6

    .line 530
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    iget-object v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, v0

    .line 535
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    neg-float v1, v1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    div-float/2addr p1, v0

    float-to-double v2, p1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    .line 538
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr v1, p1

    move p1, v1

    goto :goto_1

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;

    if-eqz v0, :cond_3

    .line 541
    invoke-virtual {v0}, Lcom/miui/home/recents/views/VerticalSwipe;->getCurTransY()F

    move-result p1

    :cond_3
    :goto_1
    return p1
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 358
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V

    return-void
.end method

.method private dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
    .locals 7

    .line 377
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-nez v5, :cond_2

    .line 382
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_1

    if-eqz p6, :cond_2

    :cond_1
    iget v6, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-ne v6, v3, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-nez v5, :cond_4

    .line 385
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_3

    if-eqz p6, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    move p6, v3

    goto :goto_2

    :cond_4
    move p6, v2

    .line 388
    :goto_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v5, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v5

    if-gez v1, :cond_5

    .line 389
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result p2

    cmpg-float p2, p2, v4

    if-gez p2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_5
    cmpg-float p2, p2, v4

    if-gez p2, :cond_6

    move v2, v3

    :cond_6
    :goto_3
    if-nez v2, :cond_8

    if-nez p6, :cond_8

    if-eqz v6, :cond_7

    goto :goto_4

    .line 397
    :cond_7
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getNewPosForDismissChild(Landroid/view/View;)F

    move-result p2

    goto :goto_5

    .line 395
    :cond_8
    :goto_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getNewPosForDismissChild(Landroid/view/View;)F

    move-result p2

    neg-float p2, p2

    .line 400
    :goto_5
    iget-boolean p6, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDisableHwLayers:Z

    if-nez p6, :cond_9

    const/4 p6, 0x2

    const/4 v1, 0x0

    .line 401
    invoke-virtual {p1, p6, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 403
    :cond_9
    new-instance p6, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;

    invoke-direct {p6, p0, p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;-><init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;Z)V

    .line 409
    invoke-virtual {p0, p1, p2, p6}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long p6, p4, v0

    if-lez p6, :cond_b

    .line 415
    invoke-virtual {p2, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 417
    :cond_b
    new-instance p4, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;

    invoke-direct {p4, p0, p1, p3}, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;-><init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->prepareDismissAnimation(Landroid/view/View;Ljava/lang/Object;)V

    .line 439
    iget-object p3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 622
    iget v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private getMaxVelocity()F
    .locals 2

    .line 626
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->MAX_DISMISS_VELOCITY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getNewPosForDismissChild(Landroid/view/View;)F
    .locals 1

    .line 362
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1

    .line 125
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_0
    return p1
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1

    .line 121
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    :goto_0
    return p1
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result p1

    div-float/2addr p2, p1

    .line 196
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 197
    iget p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mMinSwipeProgress:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mMaxSwipeProgress:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    .line 133
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    :goto_0
    return p1
.end method

.method private getViewSize(Landroid/view/View;)F
    .locals 1

    .line 182
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    return p1
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5

    .line 217
    new-instance v0, Landroid/graphics/RectF;

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 217
    invoke-static {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 231
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 232
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 233
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    .line 234
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 231
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 656
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iget v3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mInitialTouchPos:F

    sub-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->isLockOrUnlockTaskViewSwipe(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 657
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->swipedFastEnough()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->isSwipedFarEnoughForDismiss()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->isScaleSmallEnoughForDismiss()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    .line 659
    invoke-interface {p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private isLockOrUnlockTaskViewSwipe(F)Z
    .locals 2

    .line 663
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isScaleSmallEnoughForDismiss()Z
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$snapChild$0(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;ZF)V
    .locals 1

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSnappingChild:Z

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 461
    iget-object p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {p2, p1, p3}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->onChildSnappedBack(Landroid/view/View;F)V

    const/4 p1, 0x0

    .line 462
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrentAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_1

    const/high16 v0, 0x41200000    # 10.0f

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 167
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_2

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 171
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private snapChild(Landroid/view/View;F)V
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 453
    instance-of v1, p1, Lcom/miui/home/recents/views/TaskView;

    if-nez v1, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    iget v3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;

    invoke-direct {v5, p0, p1, v0, p2}, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;-><init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;ZF)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSnapAnim(Lcom/miui/home/recents/views/TaskView;ZLjava/lang/Runnable;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 467
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->prepareSnapBackAnimation(Landroid/view/View;Ljava/lang/Object;)V

    .line 468
    iput-boolean v4, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSnappingChild:Z

    .line 469
    iput-object p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrentAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1

    .line 205
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 207
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    .line 212
    invoke-static {p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 138
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 140
    sget-object p2, Lcom/miui/home/launcher/anim/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method protected getEscapeVelocity()F
    .locals 2

    .line 630
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1

    .line 177
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    return p1
.end method

.method protected getSwipeFarEnoughDistance()F
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getViewSize(Landroid/view/View;)F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1

    .line 129
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    :goto_0
    return p1
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    .line 634
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->SWIPE_ESCAPE_VELOCITY:F

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1

    .line 152
    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->createScaleDismissAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_1

    .line 155
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-object p1
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isSwipedFarEnoughForDismiss()Z
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getSwipeFarEnoughDistance()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDownUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    .line 324
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 325
    iget v3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mInitialTouchPos:F

    sub-float/2addr v0, v3

    .line 326
    iget v3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mPerpendicularInitialTouchPos:F

    sub-float/2addr v2, v3

    .line 327
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 328
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    iget-object v2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->checkToBeginDrag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    iget-object v2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 331
    iput-boolean v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDragging:Z

    .line 332
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mInitialTouchPos:F

    .line 333
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTranslation:F

    goto/16 :goto_0

    .line 341
    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDragging:Z

    .line 342
    iput-boolean v2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDragging:Z

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    .line 344
    iput-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;

    .line 345
    iput-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTaskViewLockDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

    .line 346
    iput-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTaskViewHeaderVisibleDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

    if-eqz p1, :cond_2

    return v1

    .line 249
    :pswitch_2
    iput-boolean v2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    .line 250
    iput-boolean v2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDragging:Z

    .line 251
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSnappingChild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrentAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 255
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->onDownUpdate(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mInitialTouchPos:F

    .line 261
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mPerpendicularInitialTouchPos:F

    .line 262
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTranslation:F

    .line 263
    iget p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    if-ne p1, v1, :cond_2

    .line 264
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getViewSize(Landroid/view/View;)F

    move-result p1

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mLockOrUnlockTaskViewDistance:F

    .line 265
    new-instance p1, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;

    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mLockOrUnlockTaskViewDistance:F

    const v1, -0x800001

    invoke-direct {p1, p0, v1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;-><init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;FF)V

    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTaskViewLockDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

    .line 280
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_1

    .line 281
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 282
    new-instance v0, Lcom/miui/home/recents/views/VerticalSwipe;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v2, p1}, Lcom/miui/home/recents/views/VerticalSwipe;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;

    .line 284
    :cond_1
    new-instance p1, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;-><init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;FF)V

    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTaskViewHeaderVisibleDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

    .line 350
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDragging:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;FF)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 547
    iget-boolean v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDragging:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    :cond_0
    return v1

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 568
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mInitialTouchPos:F

    sub-float/2addr p1, v0

    .line 569
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 570
    invoke-direct {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getFalsingThreshold()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 571
    iput-boolean v2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;

    if-eqz v0, :cond_3

    .line 574
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/VerticalSwipe;->calculate(F)V

    .line 575
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v1, :cond_3

    .line 576
    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 577
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 578
    iget-object v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/VerticalSwipe;->getCurAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 579
    iget-object v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/VerticalSwipe;->getCurScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 580
    iget-object v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVerticalSwipe:Lcom/miui/home/recents/views/VerticalSwipe;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/VerticalSwipe;->getCurScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 583
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->adjustTransDelta(F)F

    move-result p1

    .line 584
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTaskViewLockDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

    if-eqz v0, :cond_4

    .line 585
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/InOutRangeDetector;->onChange(F)V

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTaskViewHeaderVisibleDetector:Lcom/miui/home/recents/util/InOutRangeDetector;

    if-eqz v0, :cond_5

    .line 588
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/InOutRangeDetector;->onChange(F)V

    .line 590
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTranslation:F

    add-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->setTranslation(Landroid/view/View;F)V

    .line 591
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mTranslation:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->onMoveUpdate(Landroid/view/View;FF)V

    goto :goto_1

    .line 596
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_1

    .line 599
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-direct {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getMaxVelocity()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 600
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 602
    iget-object v3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    iget-object v4, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->onDragEnd(Landroid/view/View;)V

    .line 603
    iget-object v3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v4

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v3

    if-nez v3, :cond_8

    .line 604
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 606
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->dismissChild(Landroid/view/View;F)V

    goto :goto_0

    .line 609
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCallback:Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 610
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->snapChild(Landroid/view/View;F)V

    :goto_0
    const/4 p1, 0x0

    .line 612
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    .line 614
    :cond_8
    iput-boolean v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDragging:Z

    :cond_9
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mDisableHwLayers:Z

    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mSwipeDirection:I

    return-void
.end method

.method protected swipedFastEnough()Z
    .locals 5

    .line 667
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 668
    iget-object v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 669
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->getEscapeVelocity()F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    return v3
.end method
