.class public Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;
.super Lcom/google/android/flexbox/FlexboxLayoutManager;
.source "HotSeatsListContentLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

.field private final mContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

.field private mContentWidth:I

.field private final mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTotalOffset:I

.field private final mViewWidths:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->setFlexDirection(I)V

    const/4 p1, 0x2

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->setJustifyContent(I)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->setMaxLine(I)V

    .line 45
    invoke-static {p2}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 46
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    .line 47
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    .line 48
    new-instance p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->updateViewWidth()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;Landroid/view/View;)F
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->getItemOffset(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method private getItemOffset(Landroid/view/View;)F
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContentWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mTotalOffset:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentWidth()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {v3}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItemViewType(I)I

    move-result v3

    .line 96
    iget-object v4, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method getDecoration()Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;

    return-object v0
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 125
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 129
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 130
    instance-of v2, v1, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 131
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->getItemOffset(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 132
    check-cast v1, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setTargetScale(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateOffsetIfNeed()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->getContentWidth()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    if-le v1, v0, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mTotalOffset:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContentWidth:I

    if-eq v2, v1, :cond_2

    .line 113
    :cond_1
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mTotalOffset:I

    .line 114
    iput v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContentWidth:I

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mContent:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->invalidateItemDecorations()V

    :cond_2
    return-void
.end method

.method public updateViewWidth()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsListCellWidth()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
