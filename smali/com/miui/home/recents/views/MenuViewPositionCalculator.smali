.class public abstract Lcom/miui/home/recents/views/MenuViewPositionCalculator;
.super Ljava/lang/Object;
.source "MenuViewPositionCalculator.java"


# instance fields
.field protected mCanChangeMenuPositionWhenCovered:Z

.field protected mMenuSize:I

.field protected mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

.field private mMenuViews:[Landroid/view/View;

.field protected mRecentsViewRect:Landroid/graphics/Rect;

.field protected mTaskViewVisibleRect:Landroid/graphics/Rect;

.field protected mVerticalMinMarginToBorder:I


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/miui/home/recents/util/RelativePosition;

    invoke-direct {v0}, Lcom/miui/home/recents/util/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    .line 24
    array-length v0, p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 27
    iput-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViews:[Landroid/view/View;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params\' length must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private boundMenuViewInHorizontal([I)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    sub-int/2addr v0, v1

    const/16 v1, 0x14

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 115
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 116
    aget v3, p1, v2

    invoke-static {v3, v1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calcMenuViewRelativeToTaskViewPositionInVertical()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosYWhenPivotYInCenter()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    aget v1, v0, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    :goto_0
    return-void
.end method

.method private calcPivotY()I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    :goto_0
    return v0
.end method

.method private calcPosX(Z)[I
    .locals 6

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosXByRelativePosition()[I

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->boundMenuViewInHorizontal([I)V

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    move v1, p1

    .line 92
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 93
    aget v2, v0, v1

    iget-object v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    aget v2, v0, v1

    iget v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    sub-int/2addr v3, v5

    if-lt v2, v3, :cond_1

    :cond_0
    aget v2, v0, v1

    iget-object v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    add-int/2addr v3, v5

    if-le v2, v3, :cond_2

    aget v2, v0, v1

    iget v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    add-int/2addr v3, v5

    if-le v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    if-nez v2, :cond_4

    .line 99
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->clearPosition(I)V

    .line 101
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    goto :goto_2

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/util/RelativePosition;->clearPosition(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    .line 106
    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosX(Z)[I

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private layoutMenuView(Landroid/view/View;IIII)V
    .locals 0

    sub-int/2addr p4, p2

    int-to-float p4, p4

    .line 60
    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotX(F)V

    sub-int/2addr p5, p3

    int-to-float p4, p5

    .line 61
    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    .line 62
    iget p4, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    add-int p5, p2, p4

    add-int/2addr p4, p3

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected abstract calcMenuViewPosY()[I
.end method

.method protected abstract calcPivotX()I
.end method

.method protected abstract calcPosXByRelativePosition()[I
.end method

.method protected abstract calcPosYWhenPivotYInCenter()[I
.end method

.method protected abstract getMenuCount()I
.end method

.method public init(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mRecentsViewRect:Landroid/graphics/Rect;

    .line 33
    iput-object p2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mTaskViewVisibleRect:Landroid/graphics/Rect;

    .line 34
    iput p3, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuSize:I

    .line 35
    iput p4, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mVerticalMinMarginToBorder:I

    .line 36
    iget-object p1, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RelativePosition;->resetPosition()V

    return-void
.end method

.method public layoutMenuItem()V
    .locals 11

    .line 45
    invoke-direct {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcMenuViewRelativeToTaskViewPositionInVertical()V

    .line 46
    invoke-direct {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPivotY()I

    move-result v6

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcMenuViewPosY()[I

    move-result-object v7

    .line 49
    iget-boolean v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mCanChangeMenuPositionWhenCovered:Z

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPosX(Z)[I

    move-result-object v8

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->calcPivotX()I

    move-result v9

    const-string v0, "MenuViewPositionCalculator"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMenuViewRelativeToTaskViewPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move v10, v0

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->getMenuCount()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViews:[Landroid/view/View;

    aget-object v1, v0, v10

    aget v2, v8, v10

    aget v3, v7, v10

    move-object v0, p0

    move v4, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->layoutMenuView(Landroid/view/View;IIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPosInHorizontal(IZ)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mMenuViewRelativeToTaskViewPosition:Lcom/miui/home/recents/util/RelativePosition;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RelativePosition;->setPosition(I)V

    .line 41
    iput-boolean p2, p0, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->mCanChangeMenuPositionWhenCovered:Z

    return-void
.end method
