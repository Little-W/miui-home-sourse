.class public Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;
.super Lcom/miui/home/recents/views/TaskStackViewScroller;
.source "TaskStackViewHorizontalScroller.java"


# instance fields
.field private mFlingDownX:F

.field private mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    .line 16
    new-instance p1, Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-direct {p1}, Lcom/miui/home/recents/util/PhysicalScroller;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    return-void
.end method

.method private adjustEndScrollPix(F)F
    .locals 3

    .line 34
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(FF)F

    move-result p1

    add-float/2addr v0, p1

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->getNearestMotionlessScrollP(F)F

    move-result p1

    .line 36
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method animateBoundScroll(I)V
    .locals 11

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->getStackScroll()F

    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->getBoundedStackScroll(F)F

    move-result v0

    .line 78
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    .line 81
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result p1

    int-to-float p1, p1

    .line 82
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    float-to-double v9, p1

    move-wide v5, v9

    move-wide v7, v9

    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/util/PhysicalScroller;->startAnim(DDDDD)V

    .line 83
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mScrollerCallback:Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;

    check-cast p1, Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    :cond_0
    return-void
.end method

.method computeScroll()Z
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/PhysicalScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/PhysicalScroller;->getPosition()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(FF)F

    move-result v0

    .line 92
    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->setDeltaStackScroll(FF)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fling(FFFIIIIIIIII)V
    .locals 13

    move-object v0, p0

    move v1, p1

    .line 25
    iput v1, v0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    move v1, p2

    .line 26
    iput v1, v0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    move/from16 v1, p4

    int-to-double v1, v1

    move/from16 v3, p6

    int-to-double v3, v3

    .line 28
    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/recents/util/PhysicalScroller;->getEndPosition(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 29
    invoke-direct {p0, v5}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->adjustEndScrollPix(F)F

    move-result v5

    .line 30
    iget-object v6, v0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    float-to-double v7, v5

    move/from16 v5, p8

    int-to-double v9, v5

    move/from16 v5, p9

    int-to-double v11, v5

    move-object p1, v6

    move-wide p2, v1

    move-wide/from16 p4, v3

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    invoke-virtual/range {p1 .. p11}, Lcom/miui/home/recents/util/PhysicalScroller;->startAnim(DDDDD)V

    return-void
.end method

.method public getNearestMotionlessScrollP(F)F
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getScrollPGap()F

    move-result v0

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    rem-float/2addr v1, v0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v2, :cond_0

    sub-float/2addr p1, v1

    div-float v2, v0, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    add-float/2addr p1, v1

    div-float v2, v0, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    sub-float/2addr p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public scrollToNearestMotionlessPosition()V
    .locals 12

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->getStackScroll()F

    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->getNearestMotionlessScrollP(F)F

    move-result v1

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    .line 66
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownScrollP:F

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v0

    int-to-float v0, v0

    .line 67
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mFlingDownX:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    float-to-double v10, v0

    move-wide v6, v10

    move-wide v8, v10

    invoke-virtual/range {v1 .. v11}, Lcom/miui/home/recents/util/PhysicalScroller;->startAnim(DDDDD)V

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mScrollerCallback:Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;

    check-cast v0, Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->invalidate()V

    :cond_0
    return-void
.end method

.method stopScroller()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/PhysicalScroller;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;->mPhysicalScroller:Lcom/miui/home/recents/util/PhysicalScroller;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/PhysicalScroller;->stopScroll()V

    :cond_0
    return-void
.end method
