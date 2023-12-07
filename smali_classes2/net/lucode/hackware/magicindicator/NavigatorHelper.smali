.class public Lnet/lucode/hackware/magicindicator/NavigatorHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDeselectedItems:Landroid/util/SparseBooleanArray;

.field private mLastIndex:I

.field private mLastPositionOffsetSum:F

.field private mLeavedPercents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

.field private mScrollState:I

.field private mSkimOver:Z

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    return-void
.end method

.method private dispatchOnDeselected(I)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {v0, p1, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onDeselected(II)V

    :cond_0
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private dispatchOnEnter(IFZZ)V
    .locals 2

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mSkimOver:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    iget-object p4, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz p4, :cond_1

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {p4, p1, v0, p2, p3}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onEnter(IIFZ)V

    :cond_1
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private dispatchOnLeave(IFZZ)V
    .locals 3

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mSkimOver:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastIndex:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    add-int/lit8 v2, v0, -0x1

    if-eq p1, v2, :cond_0

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    if-eqz p4, :cond_4

    :cond_2
    iget-object p4, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz p4, :cond_3

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {p4, p1, v0, p2, p3}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onLeave(IIFZ)V

    :cond_3
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private dispatchOnSelected(I)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {v0, p1, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onSelected(II)V

    :cond_0
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    return p0
.end method

.method public getScrollState()I
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    return p0
.end method

.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    return p0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 10

    int-to-float p3, p1

    add-float/2addr p3, p2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastPositionOffsetSum:F

    cmpg-float v0, v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    iget v3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastPositionOffsetSum:F

    cmpl-float v3, p3, v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, p1, 0x1

    cmpl-float v6, p2, v4

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    add-int/lit8 v3, p1, -0x1

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    move v7, v2

    :goto_2
    iget v8, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    if-ge v7, v8, :cond_5

    if-eq v7, p1, :cond_4

    if-ne v7, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_4

    invoke-direct {p0, v7, v5, v0, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    invoke-direct {p0, v3, p2, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    goto :goto_6

    :cond_6
    sub-float/2addr v5, p2

    invoke-direct {p0, v3, v5, v2, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    invoke-direct {p0, p1, v5, v2, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    goto :goto_6

    :cond_7
    sub-float/2addr v5, p2

    invoke-direct {p0, v3, v5, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    invoke-direct {p0, p1, v5, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    goto :goto_6

    :cond_8
    move p1, v2

    :goto_4
    iget p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    if-ge p1, p2, :cond_c

    iget p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    if-ne p1, p2, :cond_9

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnDeselected(I)V

    :cond_a
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_b

    invoke-direct {p0, p1, v5, v2, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    :cond_b
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_c
    iget p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    invoke-direct {p0, p1, v5, v2, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    iget p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnSelected(I)V

    :goto_6
    iput p3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastPositionOffsetSum:F

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    iput v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastIndex:I

    iput p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    iget p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnSelected(I)V

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnDeselected(I)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setNavigatorScrollListener(Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;)V
    .locals 0

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    return-void
.end method

.method public setSkimOver(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mSkimOver:Z

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
