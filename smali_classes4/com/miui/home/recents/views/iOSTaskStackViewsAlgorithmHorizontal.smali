.class public Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;
.super Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.source "TaskStackViewsAlgorithmHorizontal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;
    }
.end annotation


# instance fields
.field private mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private calculateTaskViewCenterYInWindowFraction()F
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewCenterYInWindowFractionForLandscape()F

    move-result p0

    return p0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewCenterYInWindowFraction()F

    move-result p0

    return p0
.end method

.method private getPreloadWidth()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getTaskViewOffsetY()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-int p0, p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private laterFriction(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    .line 193
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->afterFrictionValue(FF)F

    move-result p0

    add-float p1, p2, p0

    :goto_0
    return p1
.end method


# virtual methods
.method protected afterFrictionValue(FF)F
    .locals 3

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 187
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 188
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p0, p0

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    mul-float/2addr p0, p2

    return p0
.end method

.method protected calculateGap(II)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->isLandscapeVisually()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getHorizontalGapInWindowFraction(Z)F

    move-result p2

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mHorizontalGap:F

    return-void
.end method

.method protected calculateMaxScrollP()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected calculateMinScrollP()F
    .locals 3

    .line 87
    iget v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mNumStackTasks:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    aget v0, v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 89
    iget-object v1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->getDeltaPForX(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public calculatePer(FF)F
    .locals 0

    neg-float p1, p1

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const p2, 0x3e4ccccd    # 0.2f

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->afterFrictionValue(FF)F

    move-result p1

    :cond_0
    return p1
.end method

.method protected calculateStackScroll([I[I)F
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 102
    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public calculateTaskRatio(FFFZ)F
    .locals 0

    if-eqz p4, :cond_0

    :cond_0
    return p1
.end method

.method protected calculateTaskViewOffsetXAndY(I)[I
    .locals 4

    .line 58
    iget v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mNumStackTasks:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->getTransXForCenterTask()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-int/lit8 v3, p1, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object p1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 64
    invoke-direct {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->getTaskViewOffsetY()I

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method

.method public calculateTaskWidthNew(FF)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 154
    invoke-direct {p0, p2, v0, v0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->laterFriction(FFF)F

    move-result p0

    const p2, 0x3f19999a    # 0.6f

    mul-float/2addr p0, p2

    sub-float/2addr v0, p0

    mul-float/2addr p1, v0

    return p1
.end method

.method public calculateTaskX(FFFF)F
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->isUseDistanceForTaskX()Z

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

    .line 169
    invoke-direct {p0, p5, p1, p2}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->laterFriction(FFF)F

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

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->isLandscapeVisually()Z

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->calculateTaskViewCenterYInWindowFraction()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    .line 127
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 128
    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {v2, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getLeftPaddingInWindowFraction(Z)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 130
    iget-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {v2, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getRightPaddingInWindowFraction(Z)F

    move-result p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 131
    iget-object p1, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->computePaddingForFloatingIfNeed(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDefaultCenterTaskViewIndex()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTargetTaskViewIndex(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p3, 0x1

    :goto_0
    const/4 p1, 0x0

    .line 107
    iget p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mNumStackTasks:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p2, p1, p0}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p0

    return p0
.end method

.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 12

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    const v5, 0x44870000    # 1080.0f

    div-float v11, v10, v5

    const v5, 0x3fa00000    # 1.25f

    mul-float/2addr v11, v5

    const v0, 0x1

    const v5, 0x42000000    # 32.0f

    invoke-virtual {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->isLandscapeVisually()Z

    move-result v9

    neg-int v7, p1

    int-to-float v7, v7

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 40
    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->getXForDeltaP(FF)I

    move-result p2

    add-int/2addr v1, p2

    iget-object v3, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v5, v3, v6

    if-ltz v5, :cond_0

    move v3, v6

    :cond_0
    const v6, 0x40800000    # 4.0f

    if-eqz v9, :cond_1

    const v6, 0x41000000    # 8.0f

    :cond_1
    mul-float v4, v3, v6

    neg-float v4, v4

    move v2, v3

    move v3, v7

    int-to-float v1, v1

    sub-float v5, v1, v4

    move v8, v5

    const v7, 0x45ba0000    # 5952.0f

    mul-float/2addr v7, v11

    float-to-double v10, v7

    float-to-double v5, v5

    div-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v10, v5, v5

    mul-double/2addr v10, v5

    float-to-double v5, v8

    mul-double v5, v5, v10

    double-to-float v6, v5

    if-eqz v9, :cond_2

    const v7, 0x41278000    # 10.46875f

    div-float/2addr v6, v7

    :cond_2
    cmpg-float v10, v6, v0

    if-gez v10, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    :cond_3
    add-float v1, v4, v6

    const v7, 0x406e0000    # 3.71875f

    if-eqz v9, :cond_4

    const v7, 0x40f00000    # 7.5f

    :cond_4
    mul-float v4, v2, v7

    add-float/2addr v1, v4

    cmpg-float v6, v1, v0

    if-lez v6, :cond_6

    const v7, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v7

    const v7, 0x41400000    # 12.0f

    if-eqz v9, :cond_5

    const v7, 0x41800000    # 16.0f

    :cond_5
    mul-float v5, v2, v7

    invoke-virtual {p0, v1, v5}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->afterFrictionValue(FF)F

    move-result v1

    :cond_6
    move v4, v8

    const v8, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v0

    if-lez v6, :cond_7

    const v7, 0x42400000    # 48.0f

    mul-float v5, v2, v7

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->afterFrictionValue(FF)F

    move-result v4

    div-float v4, v4, v5

    add-float/2addr v8, v4

    :cond_7
    if-eqz v9, :cond_8

    const v7, 0x3d500000    # 0.05078125f

    sub-float/2addr v8, v7

    :cond_8
    iput v8, p3, Lcom/miui/home/recents/views/TaskViewTransform;->headerData:F

    const v7, 0x3f800000    # 1.0f

    iput v7, p3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    iput v3, p3, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iput v7, p3, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 44
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskViewRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v7, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p2, v7, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentsTaskViewHeaderHeight:I

    int-to-float v2, v2

    add-float/2addr p2, v2

    iput p2, v7, Landroid/graphics/RectF;->top:F

    const p2, 0x3f4ccccc    # 0.79999995f

    mul-float/2addr v8, p2

    invoke-static {v7, v8}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    iget p2, v7, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentsTaskViewHeaderHeight:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iput p2, v7, Landroid/graphics/RectF;->top:F

    .line 45
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    iget v6, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mNumStackTasks:I

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_9

    const v5, 0x3d866000

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    :cond_9
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    const v3, 0x3c800000    # 0.015625f

    mul-float v3, v10, v3

    sub-float/2addr p1, v3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-virtual {p2, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 47
    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const v2, 0x1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->getPreloadWidth()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_a

    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 48
    invoke-direct {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->getPreloadWidth()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_a

    move v0, v2

    .line 47
    :cond_a
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    return-void
.end method

.method public initRecentLayoutConfig()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isNeedInnerTaskScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskInnerHorizonalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskInnerHorizonalLayoutConfig;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    goto :goto_1

    .line 81
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskOuterHorizonalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskOuterHorizonalLayoutConfig;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/home/recents/layoutconfig/TaskHorizonalLayoutConfig;

    invoke-direct {v0}, Lcom/miui/home/recents/layoutconfig/TaskHorizonalLayoutConfig;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    :goto_1
    return-void
.end method

.method protected scaleTaskView(Landroid/graphics/RectF;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewScaleForLandscape()F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/iOSTaskStackViewsAlgorithmHorizontal;->mRecentLayoutConfig:Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;

    invoke-interface {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;->getTaskViewScale()F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    :goto_0
    return-void
.end method
