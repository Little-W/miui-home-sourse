.class public Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;
.super Lcom/miui/home/recents/views/MenuViewPositionCalculator;
.source "ThreeMenuViewPositionCalculator.java"


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected calcMenuViewPosY()[I
    .locals 8

    .line 74
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->calcPosYWhenPivotYInCenter()[I

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 77
    new-array v0, v4, [I

    .line 78
    iget-object v4, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const v5, 0x3fcccccd    # 1.6f

    iget v6, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v0, v3

    .line 79
    iget-object v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const v4, 0x3fb33333    # 1.4f

    iget v5, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v0, v2

    .line 80
    iget-object v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    goto :goto_0

    .line 82
    :cond_1
    new-array v0, v4, [I

    .line 83
    iget-object v4, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 84
    iget-object v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    iget v5, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v0, v2

    .line 85
    iget-object v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    iget v6, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v6, v6

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    aput v2, v0, v1

    :goto_0
    return-object v0
.end method

.method protected calcPivotX()I
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    :goto_1
    return v1
.end method

.method protected calcPosXByRelativePosition()[I
    .locals 10

    const/4 v0, 0x3

    .line 17
    new-array v1, v0, [I

    .line 18
    iget-object v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 19
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v5

    aput v0, v1, v6

    .line 20
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const v2, 0x3f666666    # 0.9f

    iget v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v1, v4

    goto/16 :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v7, 0xb

    invoke-virtual {v2, v7}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v2

    const v7, 0x3fb33333    # 1.4f

    if-eqz v2, :cond_1

    .line 22
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    sub-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v5

    aput v0, v1, v6

    .line 23
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const v2, 0x3ff33333    # 1.9f

    iget v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v1, v4

    goto/16 :goto_0

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v8, 0x6

    invoke-virtual {v2, v8}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v2

    const v8, 0x3f19999a    # 0.6f

    if-eqz v2, :cond_2

    .line 25
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    sub-int/2addr v0, v2

    aput v0, v1, v6

    .line 26
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v4

    .line 27
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v5

    goto/16 :goto_0

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    const v2, 0x3fcccccd    # 1.6f

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    aput v0, v1, v6

    .line 30
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v1, v4

    .line 31
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v1, v5

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v6

    .line 34
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v4

    .line 35
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    sub-int/2addr v0, v2

    aput v0, v1, v5

    goto :goto_0

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v1, v6

    .line 38
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    sub-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v4

    .line 39
    iget-object v0, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    aput v0, v1, v5

    :cond_5
    :goto_0
    return-object v1
.end method

.method protected calcPosYWhenPivotYInCenter()[I
    .locals 9

    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [I

    .line 52
    iget-object v1, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 53
    aget v1, v0, v2

    int-to-double v3, v1

    iget v1, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v5, v1

    const-wide v7, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v1, v3

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 54
    aget v1, v0, v2

    int-to-double v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v3, v3

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method protected getMenuCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
