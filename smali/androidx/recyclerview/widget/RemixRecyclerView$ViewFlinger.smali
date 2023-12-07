.class Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;
.super Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RemixRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field mCurrentFlingVelocityX:I

.field mCurrentFlingVelocityY:I

.field private mEatRunOnAnimationRequest:Z

.field private mHasReachEdgeBeforeFling:Z

.field mInterimTarget:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field mOverScroller:Lmiuix/overscroller/widget/OverScroller;

.field private mReSchedulePostAnimationCallback:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/RemixRecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RemixRecyclerView;)V
    .locals 2

    iput-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterimTarget:Z

    new-instance v0, Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RemixRecyclerView;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RemixRecyclerView;->getHeight()I

    move-result p2

    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, p4

    add-float/2addr p4, p0

    if-lez p3, :cond_2

    const/high16 p0, 0x447a0000    # 1000.0f

    int-to-float p1, p3

    div-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v3

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_3
    const/16 p1, 0x7d0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private internalPostOnAnimation()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RemixRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 11

    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v2, v3, :cond_0

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Lmiuix/overscroller/widget/OverScroller;

    iget-object v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RemixRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v4}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p1

    float-to-int p1, p1

    neg-int p1, p1

    :cond_1
    move v5, p1

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-static {p2}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result p2

    float-to-int p2, p2

    neg-int p2, p2

    :cond_2
    move v6, p2

    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz p2, :cond_3

    move v0, p1

    :cond_3
    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x2

    :cond_4
    const/4 p2, -0x1

    if-ne v0, v1, :cond_6

    if-lez v6, :cond_5

    move p2, p1

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RemixRecyclerView;->canScrollVertically(I)Z

    move-result p2

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHasReachEdgeBeforeFling:Z

    goto :goto_0

    :cond_6
    if-ne v0, p1, :cond_8

    if-lez v5, :cond_7

    move p2, p1

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RemixRecyclerView;->canScrollHorizontally(I)Z

    move-result p2

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHasReachEdgeBeforeFling:Z

    :cond_8
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    :goto_0
    return-void
.end method

.method resetFlingPosition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RemixRecyclerView;->consumePendingUpdateOperations()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v5

    iget-object v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v6}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v6

    if-ne v6, v2, :cond_1

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    :cond_1
    iget v6, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v4, v6

    iget v7, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v13, v5, v7

    iput v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    iput v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v1

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v2

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RemixRecyclerView;->getRootView()Landroid/view/View;

    move-result-object v5

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_0
    if-eqz v4, :cond_4

    instance-of v7, v4, Lmiuix/core/view/NestedCurrentFling;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lmiuix/core/view/NestedCurrentFling;

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v8}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v8

    iget-object v9, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v9}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v9

    invoke-interface {v7, v8, v9}, Lmiuix/core/view/NestedCurrentFling;->onNestedCurrentFling(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v7, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v10, v7, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RemixRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aget v4, v4, v1

    sub-int/2addr v6, v4

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aget v4, v4, v2

    sub-int/2addr v13, v4

    :cond_5
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RemixRecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_6
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_9

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v1

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aput v1, v4, v2

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v7, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RemixRecyclerView;->scrollStep(II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aget v4, v4, v1

    iget-object v7, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aget v7, v7, v2

    sub-int/2addr v6, v4

    sub-int/2addr v13, v7

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RemixRecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_8

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_2

    :cond_8
    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_2

    :cond_9
    move v4, v1

    move v7, v4

    :cond_a
    :goto_2
    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RemixRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RemixRecyclerView;->invalidate()V

    :cond_b
    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v1

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aput v1, v8, v2

    iget-object v14, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    const/16 v19, 0x0

    const/16 v20, 0x1

    iget-object v8, v14, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v8

    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RemixRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aget v8, v8, v1

    sub-int/2addr v6, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RemixRecyclerView;->mReusableIntPair:[I

    aget v8, v8, v2

    sub-int/2addr v13, v8

    if-nez v4, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RemixRecyclerView;->dispatchOnScrolled(II)V

    :cond_d
    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-static {v8}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$000(Landroidx/recyclerview/widget/RemixRecyclerView;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RemixRecyclerView;->invalidate()V

    :cond_e
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    move-result v8

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    move-result v9

    if-ne v8, v9, :cond_f

    move v8, v2

    goto :goto_3

    :cond_f
    move v8, v1

    :goto_3
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v9

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    move-result v10

    if-ne v9, v10, :cond_10

    move v9, v2

    goto :goto_4

    :cond_10
    move v9, v1

    :goto_4
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_13

    if-nez v8, :cond_11

    if-eqz v6, :cond_12

    :cond_11
    if-nez v9, :cond_13

    if-eqz v13, :cond_12

    goto :goto_5

    :cond_12
    move v8, v1

    goto :goto_6

    :cond_13
    :goto_5
    move v8, v2

    :goto_6
    iget-object v9, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-eqz v9, :cond_14

    move v9, v2

    goto :goto_7

    :cond_14
    move v9, v1

    :goto_7
    if-nez v9, :cond_1f

    if-eqz v8, :cond_1f

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_19

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    if-gez v6, :cond_15

    neg-int v4, v3

    goto :goto_8

    :cond_15
    if-lez v6, :cond_16

    move v4, v3

    goto :goto_8

    :cond_16
    move v4, v1

    :goto_8
    if-gez v13, :cond_17

    neg-int v3, v3

    goto :goto_9

    :cond_17
    if-lez v13, :cond_18

    goto :goto_9

    :cond_18
    move v3, v1

    :goto_9
    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/RemixRecyclerView;->absorbGlows(II)V

    :cond_19
    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1b

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    move-result v3

    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartY()I

    move-result v5

    if-le v3, v5, :cond_1a

    move v4, v2

    :cond_1a
    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->canScrollVertically(I)Z

    move-result v3

    :goto_a
    xor-int/2addr v3, v2

    goto :goto_b

    :cond_1b
    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    move-result v3

    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartX()I

    move-result v5

    if-le v3, v5, :cond_1c

    move v4, v2

    :cond_1c
    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    goto :goto_a

    :cond_1d
    move v3, v1

    :goto_b
    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$100(Landroidx/recyclerview/widget/RemixRecyclerView;)Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v4

    if-ne v4, v2, :cond_1e

    iget-boolean v4, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mHasReachEdgeBeforeFling:Z

    if-nez v4, :cond_1e

    if-eqz v3, :cond_1e

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    sget v4, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    invoke-static {v3, v4}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    :cond_1e
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_20

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RemixRecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    goto :goto_c

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->postOnAnimation()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RemixRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v3, :cond_20

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RemixRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    iget-object v5, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3, v5, v4, v7}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_20
    :goto_c
    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    :cond_21
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v3, :cond_22

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->internalPostOnAnimation()V

    goto :goto_d

    :cond_22
    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setScrollState(I)V

    iget-object v3, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RemixRecyclerView;->stopNestedScroll(I)V

    iput v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    iput v1, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    :goto_d
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    iget-boolean p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterimTarget:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    instance-of p3, p3, Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz p3, :cond_4

    const p3, 0x3f99999a    # 1.2f

    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    check-cast v2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    iget v2, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v2, v2

    mul-float/2addr v2, p3

    iget-object v3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RemixRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    check-cast v3, Landroidx/recyclerview/widget/LinearSmoothScroller;

    iget v3, v3, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    int-to-float p3, p1

    cmpl-float p3, v2, p3

    if-nez p3, :cond_4

    int-to-float p3, p2

    cmpl-float p3, v3, p3

    if-nez p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    move p3, v1

    :goto_0
    iput-boolean p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterimTarget:Z

    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_5

    iput-object p4, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance p3, Lmiuix/overscroller/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RemixRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, p4}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object p3, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->setScrollState(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v6, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityX:I

    iget v7, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mCurrentFlingVelocityY:I

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lmiuix/overscroller/widget/OverScroller;->startScrollByFling(IIIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_6

    iget-object p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RemixRecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RemixRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    return-void
.end method
