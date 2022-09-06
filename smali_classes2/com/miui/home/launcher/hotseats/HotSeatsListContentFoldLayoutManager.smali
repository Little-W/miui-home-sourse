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

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setFlexDirection(I)V

    const/4 p1, 0x2

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setJustifyContent(I)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->setMaxLine(I)V

    .line 36
    new-instance p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->updateViewWidth()V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getDecoration()Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mDecoration:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    return-object v0
.end method

.method public updateViewWidth()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsListCellWidth()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->mViewWidths:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
