.class public final Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;
.super Lcom/miui/home/recents/views/MenuViewPositionCalculator;
.source "FiveMenuViewPositionCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->Companion:Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator$Companion;

    return-void
.end method

.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 1

    const-string v0, "menuViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected calcMenuViewPosY()[I
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->calcPosYWhenPivotYInCenter()[I

    move-result-object p0

    move-object v0, p0

    goto/16 :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    if-eqz v0, :cond_1

    new-array v0, v6, [I

    .line 99
    iget-object v6, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    const v7, 0x3fab645a    # 1.339f

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v0, v2

    .line 100
    iget-object v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const v6, 0x3fdb645a    # 1.714f

    iget v7, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sub-float/2addr v2, v7

    float-to-int v2, v2

    aput v2, v0, v3

    .line 101
    iget-object v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const v3, 0x3fa49ba6    # 1.286f

    iget v6, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, v0, v1

    .line 102
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const v2, 0x3e24dd2f    # 0.161f

    iget v3, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v4

    .line 103
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v5

    goto :goto_0

    :cond_1
    new-array v0, v6, [I

    .line 107
    iget-object v6, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const v7, 0x3ead9168    # 0.339f

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    aput v6, v0, v5

    .line 108
    iget-object v5, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    const v6, 0x3f36c8b4    # 0.714f

    iget v7, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v0, v4

    .line 109
    iget-object v4, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const v5, 0x3e926e98    # 0.286f

    iget v6, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v0, v1

    .line 110
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const v4, 0x3f56c8b4    # 0.839f

    iget v5, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v3

    .line 111
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v2

    :goto_0
    return-object v0
.end method

.method protected calcPivotX()I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    goto :goto_1

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method protected calcPosXByRelativePosition()[I
    .locals 15

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 12
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v7, 0x3e374bc7    # 0.179f

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v4

    .line 14
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v7, 0x3f08f5c3    # 0.535f

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    add-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v6

    .line 15
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v7, 0x3f49374c    # 0.786f

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v7

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v5

    .line 16
    aget p0, v0, v6

    aput p0, v0, v3

    .line 17
    aget p0, v0, v4

    aput p0, v0, v2

    goto/16 :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v7, 0x3f96e979    # 1.179f

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    sub-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v4

    .line 21
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v7, 0x3fc47ae1    # 1.535f

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    sub-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v6

    .line 22
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v7, 0x3fe49ba6    # 1.786f

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v7

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v5

    .line 23
    aget p0, v0, v6

    aput p0, v0, v3

    .line 24
    aget p0, v0, v4

    aput p0, v0, v2

    goto/16 :goto_0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const v7, 0x3eb6c8b4    # 0.357f

    const v8, 0x3f36c8b4    # 0.714f

    const v9, 0x3e926e98    # 0.286f

    const/high16 v10, 0x3f900000    # 1.125f

    if-eqz v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v11, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v1, v11

    float-to-int v1, v1

    aput v1, v0, v5

    .line 28
    aget v1, v0, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v10

    sub-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v3

    .line 29
    aget v1, v0, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    .line 30
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v6

    .line 31
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v7

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v4

    goto/16 :goto_0

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v1, v6}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    const v11, 0x3fadb22d    # 1.357f

    const v12, 0x3fdb645a    # 1.714f

    const v13, 0x3fa49ba6    # 1.286f

    if-eqz v1, :cond_3

    .line 34
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v7, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v13

    sub-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, v0, v5

    .line 35
    aget v1, v0, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v10

    add-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v3

    .line 36
    aget v1, v0, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    .line 37
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v6

    .line 38
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v11

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v4

    goto/16 :goto_0

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v14, 0xc

    invoke-virtual {v1, v14}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v11, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v1, v11

    float-to-int v1, v1

    aput v1, v0, v2

    .line 42
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v3

    .line 43
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 44
    aget v1, v0, v5

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v6

    .line 45
    aget v1, v0, v6

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v10

    sub-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v4

    goto :goto_0

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Lcom/miui/home/recents/util/RelativePosition;->isPosition(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v7, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    sub-float/2addr v1, v7

    float-to-int v1, v1

    aput v1, v0, v2

    .line 49
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v3

    .line 50
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 51
    aget v1, v0, v5

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v6

    .line 52
    aget v1, v0, v6

    int-to-float v1, v1

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v10

    add-float/2addr v1, p0

    float-to-int p0, v1

    aput p0, v0, v4

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected calcPosYWhenPivotYInCenter()[I
    .locals 14

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 60
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CETUS:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v7

    .line 62
    aget v1, v0, v7

    int-to-double v8, v1

    iget v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v10, v1

    const-wide v12, 0x3ff28f5c28f5c28fL    # 1.16

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v1, v8

    aput v1, v0, v6

    .line 63
    aget v1, v0, v6

    int-to-double v8, v1

    iget v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v10, v1

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v1, v8

    aput v1, v0, v3

    .line 64
    aget v1, v0, v7

    int-to-double v3, v1

    iget v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v6, v1

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    double-to-int v1, v3

    aput v1, v0, v5

    .line 65
    aget v1, v0, v5

    int-to-double v3, v1

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v5, p0

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    double-to-int p0, v3

    aput p0, v0, v2

    return-object v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v8, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v1, v8

    float-to-int v1, v1

    aput v1, v0, v7

    .line 69
    aget v1, v0, v7

    int-to-double v8, v1

    iget v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v10, v1

    const-wide v12, 0x3ff30a3d70a3d70aL    # 1.19

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v1, v8

    aput v1, v0, v6

    .line 70
    aget v1, v0, v6

    int-to-double v8, v1

    iget v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v10, v1

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v1, v8

    aput v1, v0, v3

    .line 71
    aget v1, v0, v7

    int-to-double v3, v1

    iget v1, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v6, v1

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    double-to-int v1, v3

    aput v1, v0, v5

    .line 72
    aget v1, v0, v5

    int-to-double v3, v1

    iget p0, p0, Lcom/miui/home/recents/views/FiveMenuViewPositionCalculator;->mMenuSize:I

    int-to-double v5, p0

    mul-double/2addr v5, v12

    add-double/2addr v3, v5

    double-to-int p0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method protected getMenuCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getVerticalMinMarginToBorder()I
    .locals 0

    .line 119
    invoke-super {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getVerticalMinMarginToBorder()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method
