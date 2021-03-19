.class public Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;
.super Lcom/miui/home/recents/views/MenuViewPositionCalculator;
.source "FourMenuViewPositionCalculator.java"


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected calcMenuViewPosY()[I
    .locals 11

    .line 79
    iget-object v0, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->calcPosYWhenPivotYInCenter()[I

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    const/4 v2, 0x3

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x0

    const/4 v6, 0x4

    const v7, 0x3f333333    # 0.7f

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 82
    new-array v0, v6, [I

    .line 83
    iget-object v6, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v9, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    sub-float/2addr v6, v9

    float-to-int v6, v6

    aput v6, v0, v1

    .line 84
    aget v6, v0, v1

    int-to-float v6, v6

    iget v9, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    sub-float/2addr v6, v9

    float-to-int v6, v6

    aput v6, v0, v5

    .line 85
    aget v5, v0, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    float-to-int v3, v5

    aput v3, v0, v8

    .line 86
    aget v1, v0, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    goto :goto_0

    .line 88
    :cond_1
    new-array v0, v6, [I

    .line 89
    iget-object v6, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const v9, 0x3e99999a    # 0.3f

    iget v10, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    sub-float/2addr v6, v10

    float-to-int v6, v6

    aput v6, v0, v8

    .line 90
    aget v6, v0, v8

    int-to-float v6, v6

    iget v9, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    sub-float/2addr v6, v9

    float-to-int v4, v6

    aput v4, v0, v5

    .line 91
    aget v4, v0, v8

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v3, v4

    aput v3, v0, v1

    .line 92
    aget v1, v0, v8

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    :goto_0
    return-object v0
.end method

.method protected calcPivotX()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    :goto_1
    return v1
.end method

.method protected calcPosXByRelativePosition()[I
    .locals 12

    const/4 v0, 0x4

    .line 17
    new-array v0, v0, [I

    .line 18
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v7, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, v0, v4

    aput v1, v0, v2

    .line 20
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v5

    aput v1, v0, v6

    goto/16 :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const/high16 v7, 0x3fc00000    # 1.5f

    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v4

    aput v1, v0, v2

    .line 23
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v2, 0x3fe66666    # 1.8f

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v5

    aput v1, v0, v6

    goto/16 :goto_0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f99999a    # 1.2f

    if-eqz v1, :cond_2

    .line 25
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v7, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, v0, v6

    .line 26
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v7, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, v0, v5

    .line 27
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v4

    .line 28
    aget v1, v0, v6

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    goto/16 :goto_0

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const v10, 0x3fb33333    # 1.4f

    if-eqz v1, :cond_3

    .line 30
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v8, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v6

    .line 31
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v5

    .line 32
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v4

    .line 33
    aget v1, v0, v6

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    goto/16 :goto_0

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v7, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, v0, v2

    .line 36
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v6

    .line 37
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 38
    aget v1, v0, v5

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    goto :goto_0

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v8, 0x9

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v8, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    sub-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v2

    .line 41
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v6

    .line 42
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 43
    aget v1, v0, v5

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected calcPosYWhenPivotYInCenter()[I
    .locals 5

    const/4 v0, 0x4

    .line 55
    new-array v0, v0, [I

    .line 56
    iget-object v1, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 57
    aget v1, v0, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 58
    aget v1, v0, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 59
    aget v1, v0, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method protected getMenuCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
