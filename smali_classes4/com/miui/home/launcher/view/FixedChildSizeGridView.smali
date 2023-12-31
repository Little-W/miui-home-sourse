.class public Lcom/miui/home/launcher/view/FixedChildSizeGridView;
.super Landroid/widget/FrameLayout;
.source "FixedChildSizeGridView.java"


# instance fields
.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnNum:I

.field private mFoldGap:I

.field private mMiddleGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 48
    iget p3, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    div-int p4, p1, p3

    .line 49
    rem-int p3, p1, p3

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 51
    iget p5, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    add-int/lit8 p5, p5, -0x1

    sub-int p3, p5, p3

    .line 55
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p5

    invoke-virtual {p5}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 56
    iget p5, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    mul-int/2addr p5, p3

    add-int/lit8 p3, p3, 0x1

    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mFoldGap:I

    mul-int/2addr v0, v1

    add-int/2addr p5, v0

    div-int/lit8 p3, p3, 0x3

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mMiddleGap:I

    goto :goto_1

    .line 58
    :cond_1
    iget p5, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    mul-int/2addr p5, p3

    add-int/lit8 p3, p3, 0x1

    div-int/lit8 p3, p3, 0x2

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mMiddleGap:I

    :goto_1
    mul-int/2addr p3, v0

    add-int/2addr p5, p3

    .line 60
    iget p3, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mMiddleGap:I

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    add-int/2addr p3, v0

    mul-int/2addr p3, p4

    .line 61
    iget p4, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    add-int/2addr p4, p5

    add-int/2addr v0, p3

    invoke-virtual {p2, p5, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    div-int/2addr p2, v0

    iget v0, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    iget v1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mMiddleGap:I

    add-int/2addr v1, v0

    mul-int/2addr p2, v1

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 38
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setColumnNum(I)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mColumnNum:I

    return-void
.end method

.method public setLayoutSize(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildWidth:I

    .line 29
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mChildHeight:I

    .line 30
    iput p3, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mMiddleGap:I

    .line 31
    iput p4, p0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->mFoldGap:I

    return-void
.end method
