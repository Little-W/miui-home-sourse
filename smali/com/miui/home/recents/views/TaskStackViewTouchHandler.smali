.class Lcom/miui/home/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;


# static fields
.field private static final OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field private mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mDownScrollP:F

.field private mDownX:F

.field private mDownY:F

.field private mFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mInterceptedBySwipeHelper:Z

.field private mIsCancelAnimations:Z

.field private mIsScrolling:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastScrollP:F

.field private mLastY:F

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field private mOldStackScroll:F

.field private mOverscrollSize:I

.field mRecentsTaskLockDistance:I

.field private mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

.field private mScrollDirection:I

.field mScrollTouchSlop:I

.field private mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

.field private mSnappingChild:Z

.field private mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field private mSwipeHelperAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetStackScroll:F

.field private mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

.field private mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 66
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    .line 67
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e333333    # 0.175f

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 69
    new-instance v0, Lcom/miui/home/recents/util/FreePathInterpolator;

    invoke-direct {v0, v7}, Lcom/miui/home/recents/util/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskStackViewScroller;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    .line 98
    new-instance v0, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 113
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 114
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 115
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 116
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    const p2, 0x7f070207

    .line 117
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 118
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    const p2, 0x7f0701f4

    .line 119
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    const p2, 0x7f0701f6

    .line 120
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mRecentsTaskLockDistance:I

    .line 122
    new-instance p2, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;

    invoke-direct {p2, p0, p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler$1;-><init>(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    .line 164
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->setDisableHardwareLayers(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/TaskStackViewTouchHandler;)Lcom/miui/home/recents/views/TaskStackView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object p0
.end method

.method private calcTargetStackScroll(FLcom/miui/home/recents/views/TaskView;)F
    .locals 2

    .line 600
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p2

    .line 602
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    .line 603
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getNearestMotionlessScrollP(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getScrollPGap()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    if-ge p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sub-int/2addr v0, p2

    int-to-float p2, v0

    .line 606
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 607
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getScrollPGap()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    return p1

    :cond_1
    return p1
.end method

.method private canStartScroll(FF)Z
    .locals 3

    .line 259
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 260
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 262
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private cancelNonDismissTaskAnimations()Z
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 236
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 238
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->cancelTransformAnimation()V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "TaskStackViewTouchHandler"

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelNonDismissTaskAnimations, anim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    instance-of v3, v2, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_2

    .line 247
    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_2

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    return v1
.end method

.method private findSameTopPositionTaskView(Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 795
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 797
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 798
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-eq v2, p1, :cond_0

    .line 799
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findViewAtPoint(FF)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v3, p1, p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->isTouchPointInView(FFLcom/miui/home/recents/views/TaskView;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getDeltaP(FFFFLcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)F
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p5, p1, p3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(FF)F

    move-result p1

    return p1

    .line 270
    :cond_0
    invoke-virtual {p5, p2, p4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(FF)F

    move-result p1

    return p1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 285
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    return v8

    .line 289
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 290
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v9

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 388
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 389
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 390
    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    if-ne v1, v3, :cond_2

    if-nez v0, :cond_1

    move v2, v8

    .line 393
    :cond_1
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 394
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    .line 395
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    .line 396
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 397
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 399
    :cond_2
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 319
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 320
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 321
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    .line 322
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    .line 323
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 324
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 325
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 459
    :pswitch_3
    iput-boolean v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 460
    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 461
    invoke-virtual {v6, v2}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setIsScrolling(Z)V

    .line 462
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_3

    .line 463
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 465
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_3

    .line 329
    :pswitch_4
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 332
    :cond_4
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move v0, v2

    .line 334
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 335
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 336
    iget-boolean v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v0, :cond_7

    .line 337
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 338
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 340
    invoke-direct {v6, v1, v0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->canStartScroll(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 341
    invoke-virtual {v6, v8}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setIsScrolling(Z)V

    .line 344
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 346
    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 349
    :cond_6
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 352
    :cond_7
    iget-boolean v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v0, :cond_c

    .line 353
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    move-object/from16 v0, p0

    move v4, v11

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->getDeltaP(FFFFLcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)F

    move-result v0

    .line 356
    iget v1, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 357
    iget v2, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 358
    iget v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    add-float/2addr v3, v0

    cmpg-float v0, v3, v1

    if-ltz v0, :cond_8

    cmpl-float v0, v3, v2

    if-lez v0, :cond_9

    .line 360
    :cond_8
    invoke-static {v3, v1, v2}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result v0

    sub-float/2addr v3, v0

    .line 362
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x40155555

    div-float/2addr v1, v2

    .line 363
    sget-object v4, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 364
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v1, v2

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    .line 368
    :cond_9
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->canExitRecentsWhenScrollOverThreshold()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 369
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getExitRecentOverscrollThreshold()F

    move-result v0

    .line 370
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    neg-float v0, v0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_a

    cmpg-float v1, v3, v0

    if-gez v1, :cond_a

    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    sub-float v1, v11, v1

    cmpl-float v1, v1, v10

    if-lez v1, :cond_a

    .line 371
    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/views/TaskStackView;->performHapticFeedback(I)Z

    .line 372
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    iget-object v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 374
    :cond_a
    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_b

    cmpl-float v0, v3, v0

    if-lez v0, :cond_b

    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    sub-float v0, v11, v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_b

    .line 375
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startCancelDragExitRecentsAnim(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 379
    :cond_b
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 380
    iput v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    .line 383
    :cond_c
    iput v11, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 384
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 403
    :pswitch_5
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 404
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 405
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v0, v3, :cond_e

    .line 408
    :cond_d
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move v0, v2

    .line 411
    :cond_e
    iget-object v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    .line 412
    iget-object v4, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    .line 413
    iget-boolean v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v5, :cond_12

    .line 414
    iget-object v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 415
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDirection:I

    if-nez v5, :cond_f

    goto :goto_0

    :cond_f
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskStackViewScroller;->animateBoundScroll(I)V

    goto/16 :goto_2

    .line 417
    :cond_10
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v15, v5

    .line 418
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v5

    if-nez v5, :cond_11

    .line 424
    iget v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v7, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v8, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v9, v7, v8}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 426
    iget v7, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v8, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v11, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v9, v8, v11}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    move v8, v10

    goto :goto_1

    .line 429
    :cond_11
    iget v5, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    iget v7, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v8, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v9, v7, v8}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 431
    iget v7, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    iget v8, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v11, v9, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v9, v8, v11}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    move v8, v7

    move v7, v10

    move v10, v5

    move v5, v7

    .line 435
    :goto_1
    iget-object v11, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget v12, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v13, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v14, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    float-to-int v5, v5

    float-to-int v7, v7

    float-to-int v9, v10

    float-to-int v8, v8

    iget v10, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v8

    move/from16 v23, v10

    invoke-virtual/range {v11 .. v23}, Lcom/miui/home/recents/views/TaskStackViewScroller;->fling(FFFIIIIIIIII)V

    .line 442
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    goto :goto_2

    .line 445
    :cond_12
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    if-nez v0, :cond_13

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v6, v0, v3}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(FF)V

    goto :goto_2

    .line 449
    :cond_13
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v3, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchMoveOrUpAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 452
    :goto_2
    iput-boolean v2, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 453
    iput v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 454
    invoke-virtual {v6, v2}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->setIsScrolling(Z)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto :goto_3

    .line 295
    :pswitch_6
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 296
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 298
    iput-boolean v8, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 300
    :cond_14
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    .line 305
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mLastY:F

    .line 306
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 307
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 308
    iget v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    iget v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    invoke-direct {v6, v0, v1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(FF)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 310
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewTouchDownAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 314
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 315
    iget-object v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 469
    :goto_3
    iget-boolean v0, v6, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isScrollDirectionY()Z
    .locals 2

    .line 172
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logf()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    check-cast v0, Lcom/miui/home/recents/views/TaskStackViewStack;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewStack;->fakeEventWithDelay()V

    return-void
.end method

.method private maybeHideRecentsFromBackgroundTap(FF)V
    .locals 2

    .line 476
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 477
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mDownY:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 478
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "clickEmptySpace"

    .line 486
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/messages/HideRecentsEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1, v1}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZ)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 479
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    if-eqz p1, :cond_2

    .line 480
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_2
    return-void
.end method

.method private updateTaskViewTransforms(F)V
    .locals 10

    .line 731
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 734
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 735
    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 737
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v5, v4}, Lcom/miui/home/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    .line 741
    :cond_0
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    if-ltz v4, :cond_3

    .line 748
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_1

    .line 755
    :cond_2
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 756
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskViewTransform;

    .line 758
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {v6, v5}, Lcom/miui/home/recents/views/TaskViewTransform;->copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V

    .line 760
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget-object v6, v6, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v7, v5, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v8, v4, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v7, v8}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 762
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget v7, v5, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v8, v4, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v9, v5, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, v6, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 765
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget v7, v5, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iget v4, v4, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iget v5, v5, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v7, v4

    iput v7, v6, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 768
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    sget-object v6, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v4, v3, v5, v6}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v3, "TaskStackViewTouchHandler"

    .line 749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTaskViewTransforms error, taskIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  mCurrentTaskTransforms.size() = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 750
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  mCurrentTaskTransforms.size() = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 751
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 749
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 2

    .line 522
    move-object v0, p1

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 523
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 525
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkToBeginDrag(Landroid/view/View;)Z
    .locals 0

    .line 714
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->startDrag()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 773
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 774
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 775
    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 776
    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr v3, p3

    .line 777
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(FF)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOldStackScroll()F
    .locals 1

    .line 614
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    return v0
.end method

.method public getScaledDismissSize()F
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSnappingChild()Z
    .locals 1

    .line 684
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2

    .line 540
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    const/high16 v0, 0x41200000    # 10.0f

    .line 543
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 545
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSwipeAnim(Lcom/miui/home/recents/views/TaskView;Z)V

    .line 547
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->startDismissTaskAnim()V

    .line 549
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->findSameTopPositionTaskView(Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    :cond_0
    const/4 v0, 0x0

    .line 553
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 555
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 557
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 559
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public onChildDismissedEnd(Landroid/view/View;)V
    .locals 5

    .line 638
    move-object v0, p1

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 640
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskViewHeader;->resetViewState()V

    const/4 v1, 0x1

    .line 643
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 645
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 647
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/home/recents/messages/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/views/TaskView;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 652
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 653
    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendRemoveTaskEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public onChildDismissedStart()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScrollP(F)Z

    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 2

    .line 663
    move-object p2, p1

    check-cast p2, Lcom/miui/home/recents/views/TaskView;

    const/4 v0, 0x1

    .line 666
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 668
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskView;->setTouchEnabled(Z)V

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    .line 676
    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    .line 677
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, p2}, Lcom/miui/home/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 678
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 679
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 680
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1

    .line 693
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 694
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSwipeCancelAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 696
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewHeader;->startResetTaskAnim()V

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onDragEnd(Landroid/view/View;)V
    .locals 3

    .line 565
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSameTopPositionTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 571
    :cond_0
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    .line 574
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 579
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 582
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 584
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    .line 587
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 588
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    invoke-direct {p0, v2, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->calcTargetStackScroll(FLcom/miui/home/recents/views/TaskView;)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getBoundedScroll(F)F

    move-result p1

    .line 587
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getNearestMotionlessScrollP(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    .line 591
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 594
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->getLayoutTaskTransforms(FLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->logf()V

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 209
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_1

    return v1

    .line 213
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 219
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 223
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method recycleVelocityTracker()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public resetIsSnappingChild()V
    .locals 1

    const/4 v0, 0x0

    .line 688
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSnappingChild:Z

    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->onScrollStart()V

    .line 281
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mScrollDirection:I

    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->setSwipeDirection(I)V

    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;F)Z
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->isScrollDirectionY()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 623
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 622
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
