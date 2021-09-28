.class public Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;
.super Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.source "TaskStackViewsAlgorithmVertical.java"


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mVerticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method private calculateTaskWidthPercentNew(F)F
    .locals 2

    const v0, -0x404669ad    # -1.4499f

    mul-float/2addr v0, p1

    const v1, 0x3f7ff972    # 0.9999f

    add-float/2addr v0, v1

    const v1, 0x3f3ff972    # 0.7499f

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getPreloadHeight()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method


# virtual methods
.method protected afterFrictionValue(FF)F
    .locals 3

    div-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 215
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, p1

    mul-float/2addr v1, p2

    return v1
.end method

.method protected calculateGap(II)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 122
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:I

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 124
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:I

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isLandscapeVisually()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentsTaskViewHeaderHeight:I

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    goto :goto_2

    :cond_2
    :goto_1
    const-wide p1, 0x3fe999999999999aL    # 0.8

    .line 128
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mRecentsTaskViewHeaderHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    :goto_2
    return-void
.end method

.method protected calculateMaxScrollP()F
    .locals 2

    .line 106
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    .line 107
    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    .line 108
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

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 107
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected calculateMinScrollP()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public calculatePer(FF)F
    .locals 0

    neg-float p1, p1

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 162
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method protected calculateStackScroll([I[I)F
    .locals 2

    .line 113
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

    .line 116
    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    return p1
.end method

.method public calculateTaskRadius(FF)F
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public calculateTaskRatio(FFFZ)F
    .locals 0

    if-eqz p4, :cond_0

    const p2, 0x3f99999a    # 1.2f

    .line 173
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPercentsValue(FFF)F

    move-result p1

    return p1

    :cond_0
    return p1
.end method

.method protected calculateTaskViewOffsetXAndY(I)[I
    .locals 8

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [I

    .line 50
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 51
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 57
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    goto :goto_0

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 60
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mHorizontalGap:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    :goto_0
    const/4 v5, 0x0

    move v6, v2

    move v2, v1

    move v1, v5

    :goto_1
    if-ge v1, p1, :cond_4

    if-nez v1, :cond_2

    .line 65
    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mIsRtlLayout:Z

    if-nez v7, :cond_1

    .line 66
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v2, v7

    goto :goto_2

    .line 68
    :cond_1
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mFirstTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_2

    :cond_2
    if-le v2, v6, :cond_3

    .line 74
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_2

    .line 76
    :cond_3
    iget v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v2, v7

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-gt v2, v6, :cond_6

    .line 79
    iget-boolean v7, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mIsRtlLayout:Z

    if-eqz v7, :cond_5

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    aput v3, v0, v5

    .line 84
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    sub-int/2addr v2, p1

    aput v2, v0, v1

    goto :goto_4

    :cond_6
    :goto_3
    aput v4, v0, v5

    .line 81
    iget p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mVerticalGap:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    sub-int/2addr v6, p1

    aput v6, v0, v1

    :goto_4
    return-object v0
.end method

.method public calculateTaskWidthNew(FF)F
    .locals 0

    .line 167
    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskWidthPercentNew(F)F

    move-result p2

    mul-float/2addr p1, p2

    return p1
.end method

.method public calculateTaskX(FFFF)F
    .locals 2

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-float/2addr p2, p1

    return p2

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_1

    div-float/2addr p1, p3

    mul-float/2addr p4, p1

    sub-float/2addr p2, p4

    return p2

    :cond_1
    return v0
.end method

.method public calculateTaskY(FFFFF)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p2, p5, p1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p5, p1

    .line 186
    invoke-virtual {p0, p5, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->afterFrictionValue(FF)F

    move-result p2

    add-float p5, p2, p1

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p5

    mul-float/2addr p1, p3

    sub-float/2addr p1, p4

    return p1
.end method

.method protected computeTaskStackViewPadding(I)V
    .locals 5

    if-gtz p1, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isLandscapeVisually()Z

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const v0, 0x3ea3d70a    # 0.32f

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_2
    if-gt p1, v2, :cond_3

    const v0, 0x3f1eb852    # 0.62f

    goto :goto_0

    :cond_3
    const v0, 0x3f0ccccd    # 0.55f

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 150
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    if-gt p1, v2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    :goto_1
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDefaultCenterTaskViewIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetTaskViewIndex(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    const/4 p1, 0x0

    .line 101
    iget p3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    add-int/lit8 p3, p3, -0x1

    invoke-static {p2, p1, p3}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_0

    goto :goto_0

    .line 27
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

    .line 28
    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 29
    iput v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 31
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

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    .line 34
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mNumStackTasks:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    aget v0, p1, v2

    :goto_2
    aput v0, p1, v2

    .line 35
    aget v0, p1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr p2, v3

    sub-float/2addr v0, p2

    float-to-int p2, v0

    aput p2, p1, v1

    .line 37
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    aget v0, p1, v2

    int-to-float v0, v0

    aget p1, p1, v1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 39
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

    .line 40
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->getPreloadHeight()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method

.method protected scaleTaskView(Landroid/graphics/RectF;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getTaskViewScale(Landroid/content/Context;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 156
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 157
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    return-void
.end method
