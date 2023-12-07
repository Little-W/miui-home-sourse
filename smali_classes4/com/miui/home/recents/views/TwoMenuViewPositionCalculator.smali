.class public Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;
.super Lcom/miui/home/recents/views/MenuViewPositionCalculator;
.source "TwoMenuViewPositionCalculator.java"


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected calcMenuViewPosY()[I
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->calcPosYWhenPivotYInCenter()[I

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [I

    .line 71
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const v5, 0x3f333333    # 0.7f

    iget v6, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v0, v3

    .line 72
    aget v1, v0, v3

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v4

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 75
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const v5, 0x3e99999a    # 0.3f

    iget v6, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v0, v4

    .line 76
    aget v1, v0, v4

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v3

    :goto_0
    return-object v0
.end method

.method protected calcPivotX()I
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget v0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    goto :goto_1

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method protected calcPosXByRelativePosition()[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 18
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v4, 0x3f4ccccd    # 0.8f

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v2

    aput p0, v0, v3

    goto/16 :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v4, 0x3fe66666    # 1.8f

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v2

    aput p0, v0, v3

    goto/16 :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v1, :cond_2

    .line 23
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v3

    .line 24
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v2

    goto :goto_0

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const/high16 v5, 0x3fc00000    # 1.5f

    if-eqz v1, :cond_3

    .line 26
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v6, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v0, v3

    .line 27
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v5

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v2

    goto :goto_0

    .line 28
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v3

    .line 30
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v2

    goto :goto_0

    .line 31
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v6, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v0, v3

    .line 33
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v2

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected calcPosYWhenPivotYInCenter()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 46
    iget-object v1, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 47
    aget v1, v0, v2

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/TwoMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p0, v2

    sub-float/2addr v1, p0

    float-to-int p0, v1

    const/4 v1, 0x0

    aput p0, v0, v1

    return-object v0
.end method

.method protected getMenuCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
