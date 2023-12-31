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
.field private final mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

.field private final mViewWidths:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setFlexDirection(I)V

    const/4 p1, 0x2

    .line 36
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setJustifyContent(I)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setMaxLine(I)V

    .line 38
    new-instance p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    .line 39
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

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    return-object p0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 79
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

    .line 81
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateViewWidth()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsListCellWidth()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x40

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
