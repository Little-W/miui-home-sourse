.class public Lcom/miui/home/launcher/hotseats/HotSeatsListContent;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HotSeatsListContent.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/hotseats/HotSeatsContent;


# static fields
.field private static final RECT:Landroid/graphics/Rect;


# instance fields
.field private final mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

.field private mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

.field private mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

.field private mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

.field private mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

.field private final mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private final mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 398
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 56
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 57
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 58
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 63
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$6GxzEXSeVx4vydyI1h8AARCDrVY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$6GxzEXSeVx4vydyI1h8AARCDrVY;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;-><init>(Ljava/util/function/Supplier;)V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    .line 65
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$76X-zAPBqhg7rdGkiPUGpaOsoFs;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$76X-zAPBqhg7rdGkiPUGpaOsoFs;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/function/BooleanSupplier;)V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    .line 66
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-direct {p2, v0, v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeatsList;Landroid/view/View$OnLongClickListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    .line 67
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setAdapter(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    .line 68
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-direct {p2, p1, p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->getDecoration()Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 72
    new-instance p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    invoke-direct {p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xc8

    .line 76
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v0, 0x96

    .line 77
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p2, 0x80

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p2, 0x100

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method private findInsertPosition(I)I
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 407
    instance-of v2, v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    if-eqz v2, :cond_0

    .line 408
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 409
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 410
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 411
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 412
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    check-cast v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    .line 413
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getTargetScale()F

    move-result v0

    .line 412
    invoke-static {v2, v0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 414
    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    .line 415
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->getItemCount()I

    move-result v0

    .line 414
    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v1

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 420
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUserActive()Z

    move-result v0

    return v0
.end method

.method private layoutImmediately()V
    .locals 0

    .line 291
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method private onDrag(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 307
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findInsertPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->hasOutlineItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateOutlineItem(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addOutlineItem(Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resolveRightfulItemInfo(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/ItemInfo;
    .locals 3

    .line 274
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->isSeatsFull()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 332
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->dragAction:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    return v1

    .line 335
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 143
    iget-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p3}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    const/4 p3, 0x0

    .line 144
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 146
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 147
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 148
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finishLoading()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->onRecommendUpdate()V

    return-void
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 395
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method getHotSeatsItemsIncludeDragging()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_2

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getItemInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-object v0
.end method

.method public getUserPresentAnimationChildList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 196
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isIconNotFindOrRemoved(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 228
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p1

    return p1
.end method

.method public isSeatsFull()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->isFull()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 431
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 432
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigChangeUpdateRecommend()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->onRecommendUpdate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 437
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 438
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onDetachedFromWindow()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    .line 210
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 296
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    .line 298
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onDrag(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 320
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    .line 321
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onDrag(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 6

    .line 234
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 235
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->resolveRightfulItemInfo(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->hasOutlineItem()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Workspace;->removeShortcuts(Ljava/util/List;)V

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->replaceOutline(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    iget-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    const-string v2, "dock"

    .line 247
    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 249
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v2, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    .line 254
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 255
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 256
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 259
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 260
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 261
    instance-of p1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_3

    .line 262
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    .line 216
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->isIconNotFindOrRemoved(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 366
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 367
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return v2

    .line 370
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_9

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 374
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    goto :goto_0

    .line 378
    :cond_6
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    move v1, v3

    :goto_0
    if-eq v1, v3, :cond_7

    .line 382
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 386
    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 449
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->updateViewWidth()V

    .line 450
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 106
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refreshSearchIcon()V

    return-void
.end method

.method public removeAllItemIcons()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->clear()V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 167
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 172
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->removeCache(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public removeShortcuts(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 180
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_2

    .line 181
    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 185
    :cond_2
    instance-of v3, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    iget-wide v4, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->clear()V

    return-void
.end method

.method public updateIconSize()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItemInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->refreshSearchIcon()V

    if-eqz p1, :cond_0

    const-string v0, "Launcher.HotSeats"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotSeats ListView addItemList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateItemIcons(Ljava/util/List;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onConfigChangeUpdateRecommend()V

    return-void
.end method
