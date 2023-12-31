.class public Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;
.super Lcom/google/android/flexbox/FlexboxLayoutManager;
.source "HotSeatsListContentFoldLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

.field private final mViewWidths:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    .line 37
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setFlexDirection(I)V

    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setJustifyContent(I)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setMaxLine(I)V

    .line 41
    new-instance p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->updateViewWidth()V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getDecoration()Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    return-object p0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 87
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "HotSeatsListContentFoldLayout"

    const-string p2, "HotSeatsListContentFoldLayoutManager error!"

    .line 89
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateViewWidth()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsListCellWidth()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    sub-int v1, v0, v1

    if-gtz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
