.class public Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;
.super Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
.source "TaskStackViewsAlgorithmHorizontal.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private calculateTaskViewCenterYInWindowFraction()F
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ee66666    # 0.45f

    return v0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->isRecentsRecommendViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f0c8b44    # 0.549f

    return v0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method private getPreloadWidth()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getTaskViewOffsetY()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private isRecentsRecommendViewVisible()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->isRecentsRecommendViewVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private laterFriction(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    .line 181
    invoke-virtual {p0, p1, p3}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->afterFrictionValue(FF)F

    move-result p1

    add-float/2addr p1, p2

    :goto_0
    return p1
.end method


# virtual methods
.method protected afterFrictionValue(FF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 175
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 176
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float v0, v0

    mul-float v1, p1, p1

    mul-float v2, v1, p1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v1

    add-float/2addr v2, p1

    mul-float/2addr v0, v2

    mul-float/2addr v0, p2

    return v0
.end method

.method protected calculateGap(II)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mHorizontalGap:I

    return-void
.end method

.method protected calculateMaxScrollP()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected calculateMinScrollP()F
    .locals 2

    .line 67
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mNumStackTasks:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    aget v0, v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 69
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getDeltaPForX(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public calculatePer(FF)F
    .locals 0

    neg-float p1, p1

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const p2, 0x3e4ccccd    # 0.2f

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->afterFrictionValue(FF)F

    move-result p1

    :cond_0
    return p1
.end method

.method protected calculateStackScroll([I[I)F
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 82
    aget p2, p2, v1

    aget p1, p1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method public calculateTaskRadius(FF)F
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    return p1
.end method

.method public calculateTaskRatio(FFFZ)F
    .locals 0

    if-eqz p4, :cond_0

    const p4, 0x3f47ae14    # 0.78f

    mul-float/2addr p2, p4

    .line 145
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getPercentsValue(FFF)F

    move-result p1

    return p1

    :cond_0
    return p1
.end method

.method protected calculateTaskViewOffsetXAndY(I)[I
    .locals 4

    .line 47
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mNumStackTasks:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mHorizontalGap:I

    mul-int/2addr v2, p1

    sub-int/2addr v0, v2

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int p1, v0, p1

    :goto_0
    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getTaskViewOffsetY()I

    move-result p1

    aput p1, v0, v1

    return-object v0
.end method

.method public calculateTaskWidthNew(FF)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p2, v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 139
    invoke-direct {p0, p2, v0, v1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->laterFriction(FFF)F

    move-result p2

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    return p1
.end method

.method public calculateTaskX(FFFF)F
    .locals 2

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->isLandscape()Z

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

    const p1, 0x3f19999a    # 0.6f

    const/high16 p2, 0x3f000000    # 0.5f

    .line 153
    invoke-direct {p0, p5, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->laterFriction(FFF)F

    move-result p1

    const p2, 0x3f59999a    # 0.85f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr p3, p2

    sub-float/2addr p3, p4

    return p3
.end method

.method protected computeTaskStackViewPadding(I)V
    .locals 3

    .line 116
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mWindowRectIgnoreMultiWindowMode:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->calculateTaskViewCenterYInWindowFraction()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 118
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 119
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewPaddingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public getDefaultCenterTaskViewIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
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

    .line 87
    iget p3, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mNumStackTasks:I

    add-int/lit8 p3, p3, -0x1

    invoke-static {p2, p1, p3}, Lcom/miui/home/recents/util/Utilities;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getTaskViewTransform(IFLcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 3

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->calculateTaskViewOffsetXAndY(I)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getXForDeltaP(FF)I

    move-result p2

    add-int/2addr v1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 31
    iput p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 32
    iput p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 33
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 34
    iget-object p2, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 36
    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getPreloadWidth()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, p3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->mTaskStackViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 37
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->getPreloadWidth()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method

.method protected scaleTaskView(Landroid/graphics/RectF;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ef5c28f    # 0.48f

    goto :goto_0

    :cond_0
    const v0, 0x3f0b4396    # 0.544f

    .line 124
    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    return-void
.end method
