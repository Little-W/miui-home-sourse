.class public Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;
.super Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.source "TaskStackViewsAlgorithmVertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mPaddingRatio:F

.field private mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

.field private mVerticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method private getPreloadHeight()I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private laterFriction(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    .line 242
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->afterFrictionValue(FF)F

    move-result p0

    add-float p1, p2, p0

    :goto_0
    return p1
.end method


# virtual methods
.method protected afterFrictionValue(FF)F
    .locals 2

    div-float/2addr p1, p2

    const/high16 p0, 0x3f800000    # 1.0f

    .line 237
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p1, p0, p0

    mul-float v0, p1, p0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, p1

    add-float/2addr v0, p0

    mul-float/2addr v0, p2

    return v0
.end method

.method protected calculateGap(II)V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 152
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    mul-float/2addr p2, v2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:F

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 154
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    mul-float/2addr p2, v2

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:F

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide p1, 0x3fe999999999999aL    # 0.8

    .line 158
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentsTaskViewHeaderHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    goto :goto_1

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-interface {p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getVerticalGapFraction()F

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentsTaskViewHeaderHeight:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    :goto_1
    return-void
.end method

.method protected calculateMaxScrollP()F
    .locals 2

    .line 136
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    .line 137
    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    .line 138
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 137
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method protected calculateMinScrollP()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calculatePer(FF)F
    .locals 0

    neg-float p0, p1

    div-float/2addr p0, p2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 183
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method protected calculateStackScroll([I[I)F
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 146
    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public calculateTaskRatio(FFFZ)F
    .locals 0

    return p1
.end method

.method protected calculateTaskViewOffsetXAndY(I)[I
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 68
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 71
    iget v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:F

    iget v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 77
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 80
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr v5, v3

    const/4 v3, 0x0

    move v6, v2

    move v2, v1

    move v1, v3

    :goto_1
    if-ge v1, p1, :cond_4

    if-nez v1, :cond_2

    .line 85
    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mIsRtlLayout:Z

    if-nez v7, :cond_1

    .line 86
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_3

    .line 88
    :cond_1
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_2

    :cond_2
    if-le v2, v6, :cond_3

    .line 94
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_2
    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_4

    .line 96
    :cond_3
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    :goto_3
    float-to-int v7, v7

    add-int/2addr v2, v7

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-gt v2, v6, :cond_6

    .line 99
    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mIsRtlLayout:Z

    if-eqz v7, :cond_5

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    aput v4, v0, v3

    .line 104
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    sub-int/2addr v2, p0

    aput v2, v0, v1

    goto :goto_6

    :cond_6
    :goto_5
    aput v5, v0, v3

    .line 101
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    sub-int/2addr v6, p0

    aput v6, v0, v1

    :goto_6
    return-object v0
.end method

.method public calculateTaskWidthNew(FF)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 189
    invoke-direct {p0, p2, v0, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->laterFriction(FFF)F

    move-result p0

    const p2, 0x3f19999a    # 0.6f

    mul-float/2addr p0, p2

    sub-float/2addr v0, p0

    mul-float/2addr p1, v0

    return p1
.end method

.method public calculateTaskX(FFFF)F
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isUseDistanceForTaskX()Z

    move-result p0

    if-eqz p0, :cond_0

    sub-float/2addr p2, p1

    return p2

    :cond_0
    const/4 p0, 0x0

    cmpl-float v0, p3, p0

    if-eqz v0, :cond_1

    div-float/2addr p1, p3

    mul-float/2addr p4, p1

    sub-float/2addr p2, p4

    return p2

    :cond_1
    return p0
.end method

.method public calculateTaskY(FFFFF)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, 0x40000000    # 2.0f

    .line 213
    invoke-direct {p0, p5, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->laterFriction(FFF)F

    move-result p0

    const p2, 0x3f59999a    # 0.85f

    mul-float/2addr p0, p2

    sub-float/2addr p1, p0

    mul-float/2addr p3, p1

    sub-float/2addr p3, p4

    return p3
.end method

.method protected computeTaskStackViewPadding(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getTopRatio(ZI)F

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    invoke-interface {v1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;->getBottomRatio()F

    move-result v1

    .line 169
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 170
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-gt p1, v2, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    :goto_0
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 171
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 172
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 173
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->computePaddingForFloatingIfNeed(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDefaultCenterTaskViewIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTargetTaskViewIndex(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const/4 p1, 0x0

    .line 131
    iget p0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p2, p1, p0}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p0

    return p0
.end method

.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    :goto_0
    iput v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 46
    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 47
    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 49
    iget-object v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    .line 52
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getTransXForCenterTask()I

    move-result v0

    goto :goto_2

    :cond_2
    aget v0, p1, v2

    :goto_2
    aput v0, p1, v2

    .line 53
    aget v0, p1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr p2, v3

    sub-float/2addr v0, p2

    float-to-int p2, v0

    aput p2, p1, v1

    .line 55
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    aget v0, p1, v2

    int-to-float v0, v0

    aget p1, p1, v1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 57
    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPreloadHeight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 58
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPreloadHeight()I

    move-result p0

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 57
    :goto_3
    invoke-virtual {p3, v1}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    return-void
.end method

.method public initRecentLayoutConfig()V
    .locals 1

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutWhenLandscapeConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutWhenLandscapeConfig;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutConfig;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    goto :goto_2

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;

    .line 121
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewPaddingRatio(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mPaddingRatio:F

    return-void
.end method

.method protected scaleTaskView(Landroid/graphics/RectF;)V
    .locals 0

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewScale(Landroid/content/Context;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    return-void
.end method
