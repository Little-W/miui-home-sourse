.class public Lcom/miui/home/launcher/view/FixedChildSizeGridView;
.super Landroid/widget/FrameLayout;
.source "FixedChildSizeGridView.java"


# instance fields
.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnNum:I

.field private mFoldGapLarge:I

.field private mGap:I

.field private mGapEdge:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 50
    iget p3, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    div-int p4, p1, p3

    .line 51
    rem-int p3, p1, p3

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 53
    iget p5, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    add-int/lit8 p5, p5, -0x1

    sub-int p3, p5, p3

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 58
    iget p5, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mGapEdge:I

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    mul-int/2addr v0, p3

    add-int/2addr p5, v0

    add-int/lit8 p3, p3, 0x1

    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mFoldGapLarge:I

    mul-int/2addr v0, v1

    add-int/2addr p5, v0

    div-int/lit8 p3, p3, 0x3

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mGap:I

    mul-int/2addr p3, v0

    add-int/2addr p5, p3

    .line 59
    iget p3, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    add-int/2addr v0, p3

    mul-int/2addr v0, p4

    goto :goto_1

    .line 61
    :cond_1
    iget p5, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mGapEdge:I

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    mul-int/2addr v0, p3

    add-int/2addr p5, v0

    add-int/lit8 p3, p3, 0x1

    div-int/lit8 p3, p3, 0x2

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mGap:I

    mul-int/2addr p3, v0

    add-int/2addr p5, p3

    .line 62
    iget p3, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    add-int/2addr v0, p3

    mul-int/2addr v0, p4

    .line 64
    :goto_1
    iget p3, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    add-int/2addr p3, p5

    iget p4, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    add-int/2addr p4, v0

    invoke-virtual {p2, p5, v0, p3, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    div-int/2addr p2, v0

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    iget v1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mGap:I

    add-int/2addr v1, v0

    mul-int/2addr p2, v1

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 40
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setChildSize(II)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703e7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mGapEdge:I

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mGap:I

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703e8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mFoldGapLarge:I

    return-void
.end method

.method public setColumnNum(I)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    return-void
.end method
