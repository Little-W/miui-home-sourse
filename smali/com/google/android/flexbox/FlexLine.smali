.class public Lcom/google/android/flexbox/FlexLine;
.super Ljava/lang/Object;


# instance fields
.field mAnyItemsHaveFlexGrow:Z

.field mAnyItemsHaveFlexShrink:Z

.field mBottom:I

.field mCrossSize:I

.field mDividerLengthInMainSize:I

.field mFirstIndex:I

.field mGoneItemCount:I

.field mIndicesAlignSelfStretch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mItemCount:I

.field mLastIndex:I

.field mLeft:I

.field mMainSize:I

.field mMaxBaseline:I

.field mRight:I

.field mSumCrossSizeBefore:I

.field mTop:I

.field mTotalFlexGrow:F

.field mTotalFlexShrink:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mTop:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mRight:I

    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCrossSize()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    return p0
.end method

.method public getItemCountNotGone()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget p0, p0, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v0, p0

    return v0
.end method

.method updatePositionFromView(Landroid/view/View;IIII)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget v1, p0, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    iget p2, p0, Lcom/google/android/flexbox/FlexLine;->mTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexLine;->mTop:I

    iget p2, p0, Lcom/google/android/flexbox/FlexLine;->mRight:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexLine;->mRight:I

    iget p2, p0, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p5

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    return-void
.end method
