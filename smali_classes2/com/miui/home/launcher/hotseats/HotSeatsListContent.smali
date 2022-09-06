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

.field private mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

.field private mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

.field private mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

.field private final mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private final mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 63
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 64
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 65
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 66
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 72
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 73
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$6GxzEXSeVx4vydyI1h8AARCDrVY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$6GxzEXSeVx4vydyI1h8AARCDrVY;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;-><init>(Ljava/util/function/Supplier;)V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    .line 74
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$76X-zAPBqhg7rdGkiPUGpaOsoFs;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$76X-zAPBqhg7rdGkiPUGpaOsoFs;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/function/BooleanSupplier;)V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    .line 75
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-direct {p2, v0, v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeatsList;Landroid/view/View$OnLongClickListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    .line 76
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setAdapter(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    .line 77
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-direct {p2, p1, p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentPadLayoutManager;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-direct {p2, p1, p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentPadLayoutManager;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    :goto_0
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->getDecoration()Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 81
    new-instance p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    invoke-direct {p1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0xc8

    .line 85
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v0, 0x96

    .line 86
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p2, 0x80

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p2, 0x100

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    const/16 p2, 0x40

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method private findInsertPosition(I)I
    .locals 5

    .line 486
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 488
    instance-of v2, v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    if-eqz v2, :cond_0

    .line 489
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 490
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 491
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 492
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 493
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->updateRectInRtlLayout(Z)V

    .line 494
    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    check-cast v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    .line 495
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getTargetScale()F

    move-result v0

    .line 494
    invoke-static {v2, v0}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 496
    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    .line 497
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->getItemCount()I

    move-result v0

    .line 496
    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v1

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 502
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->canDropOver(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 504
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

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUserActive()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$setMamlIconPresent$1(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 180
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->updateDrawableState(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private layoutImmediately()V
    .locals 0

    .line 361
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method private onDrag(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 384
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findInsertPosition(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 386
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->hasOutlineItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateOutlineItem(I)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addOutlineItem(Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-ne v0, p1, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    return-void
.end method

.method private resolveRightfulItemInfo(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/ItemInfo;
    .locals 3

    .line 344
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
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

.method private updateRectInRtlLayout(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 513
    sget-object p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 514
    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 515
    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->RECT:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->isSeatsFull()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 412
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->dragAction:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    return v1

    .line 415
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 153
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V

    const/4 p3, 0x0

    .line 154
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    .line 156
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 157
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 158
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    .line 159
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finishLoading()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->onRecommendUpdate()V

    return-void
.end method

.method public getAllItemList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 187
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 190
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 191
    move-object v5, v3

    check-cast v5, Lcom/miui/home/launcher/ShortcutIcon;

    .line 192
    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v5

    :goto_1
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 194
    iget-wide v3, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v3, v3, v6

    if-nez v3, :cond_1

    .line 195
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
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

    .line 476
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

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingAddItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_2

    .line 109
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

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 1

    .line 425
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

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 256
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 257
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

    .line 297
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 298
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p1

    return p1
.end method

.method public isSeatsFull()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->isFull()Z

    move-result v0

    return v0
.end method

.method public keepDataConsistent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->refreshSearchIcon()V

    if-eqz p1, :cond_0

    const-string v0, "Launcher.HotSeatsListContent"

    .line 165
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

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateItemIcons(Ljava/util/List;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onConfigChangeUpdateRecommend()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 521
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 522
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigChangeUpdateRecommend()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->onRecommendUpdate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 527
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 528
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onDetachedFromWindow()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setCantAddToLauncherDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->updateFolderMessageWhenDrag(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 366
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onDrag(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    .line 397
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 398
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result p1

    if-nez p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->onDrag(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 6

    .line 304
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 305
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->resolveRightfulItemInfo(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->hasOutlineItem()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Workspace;->removeShortcuts(Ljava/util/List;)V

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->replaceOutline(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
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

    .line 317
    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 319
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-static {v2, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    .line 324
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 325
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 326
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v2, :cond_2

    .line 327
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 329
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 330
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 331
    instance-of p1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_3

    .line 332
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

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeOutlineItem()V

    .line 286
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->isIconNotFindOrRemoved(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;

    move-result-object v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onFinishInflate()V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->requestUpdateRecommendTasks()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 446
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 447
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return v2

    .line 450
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_9

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 454
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    goto :goto_0

    .line 458
    :cond_6
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mDraggingEnterItem:Lcom/miui/home/launcher/ItemInfo;

    move v1, v3

    :goto_0
    if-eq v1, v3, :cond_7

    .line 462
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->setCantAddToLauncherDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V

    .line 464
    :cond_7
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mInnerDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 465
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 467
    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 539
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mLayoutManager:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;->updateViewWidth()V

    .line 540
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyDataSetChanged()V

    const-string p1, "Launcher.HotSeatsListContent"

    .line 541
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "view height: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refreshSearchIcon()V

    return-void
.end method

.method public removeAllItemIcons()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->clear()V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 207
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 208
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 209
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->requestUpdateRecommendTasksWhenItemsChange(Lcom/miui/home/launcher/ItemInfo;)V

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mPendingRemoveItem:Lcom/miui/home/launcher/ItemInfo;

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 213
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->layoutImmediately()V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 264
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

    .line 238
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

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 241
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_2

    .line 242
    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 246
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

.method public setMamlIconPresent()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getAllItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$3dqVLM8MsoxrPZQm9W0j4ifbeks;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContent$3dqVLM8MsoxrPZQm9W0j4ifbeks;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 3

    .line 277
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScaleY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.HotSeatsListContent"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->clear()V

    return-void
.end method

.method public updateDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 172
    instance-of v0, p1, Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    const-string v0, "present"

    .line 173
    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateIconSize()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateIconWhenInstall(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v1, :cond_1

    instance-of v1, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 223
    check-cast p1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 224
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public updateItemInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    const-string v0, "Launcher.HotSeatsListContent"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItemInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateItemInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V

    .line 233
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemInfoList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method
