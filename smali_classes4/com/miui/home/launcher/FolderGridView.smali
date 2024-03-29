.class public Lcom/miui/home/launcher/FolderGridView;
.super Landroid/widget/GridView;
.source "FolderGridView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;,
        Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field private mAutoScrollDirection:I

.field private mBackupDataForDragIn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/DragView;",
            "Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupDragObject:Lcom/miui/home/launcher/DragObject;

.field private mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

.field mConfirmAutoScroll:Ljava/lang/Runnable;

.field private mDownIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragStartedIndex:I

.field private mEdgeAlpha:I

.field private mEdgePaint:Landroid/graphics/Paint;

.field private mIgnoreCancelEvent:Z

.field private mItemsForDropping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Lcom/miui/home/launcher/DragView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHit:Landroid/view/View;

.field private mLastPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRect:Landroid/graphics/Rect;

.field private mStayConfirm:Ljava/lang/Runnable;

.field private mTmpRect:Landroid/graphics/Rect;

.field private usingDarkScrollBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    .line 46
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->usingDarkScrollBar:Z

    const/16 v1, 0xff

    .line 53
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    .line 56
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    .line 396
    new-instance p2, Lcom/miui/home/launcher/FolderGridView$3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/FolderGridView$3;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    .line 446
    new-instance p2, Lcom/miui/home/launcher/FolderGridView$4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/FolderGridView$4;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setFocusable(Z)V

    .line 83
    new-instance p2, Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    .line 84
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    .line 85
    iget-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setCountAndHorizontalSpacing(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600eb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 87
    iget-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x18

    .line 88
    iput p1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    .line 89
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->reorderItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderGridView;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 8

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->disableSaveWhenDatasetChanged(Z)V

    .line 427
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->saveBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->contains(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->getLastCellX()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v5, :cond_2

    .line 434
    iget-object v7, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v6, v7, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_2
    if-nez v0, :cond_3

    add-int v7, v3, v5

    add-int/2addr v7, v1

    .line 436
    iput v7, v6, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 437
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 441
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 442
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->addAll(Ljava/util/Collection;)V

    .line 443
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->layoutChildren()V

    return-void
.end method

.method private checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v2

    move-object v2, v1

    move v1, v0

    .line 497
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 498
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 499
    iget-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 500
    iget-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v6, p1, Lcom/miui/home/launcher/DragObject;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v9, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget v10, p1, Lcom/miui/home/launcher/DragObject;->y:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v5, v5

    .line 501
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    cmpg-float v7, v5, v3

    if-gez v7, :cond_0

    .line 502
    iget-object v7, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v7, v6}, Lcom/miui/home/launcher/ShortcutsAdapter;->enableReorder(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v4

    move v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 507
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-eq v2, p1, :cond_2

    .line 508
    iput-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private getLastCellX()I
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getLastItemCellXSafe()I

    move-result p0

    return p0
.end method

.method private isItemInfoAccepted(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 655
    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq p0, v0, :cond_1

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x12

    if-eq p0, v1, :cond_1

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p1, 0x11

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private makePositionSnapShot()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 363
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 364
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 365
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 367
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 368
    iget-object v3, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeAutoScroll()V
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reorderItems()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 405
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performSqueezePosition(Landroid/view/View;)V

    .line 406
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByInsert(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_2
    return-void
.end method

.method private restoreBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;

    if-nez v0, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 343
    iget v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->cellX:I

    iput v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 344
    iget v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->cellY:I

    iput v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 345
    iget-wide v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->container:J

    iput-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 346
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyIconView:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 347
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyForParent()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyForParent:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_3

    .line 348
    :cond_2
    iget-object v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyIconView:Landroid/view/View;

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyForParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 350
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private saveBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderGridView$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/FolderGridView$2;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 645
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 646
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 647
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/FolderGridView;->isItemInfoAccepted(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public addDragOverItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz p0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method

.method public afterDragStart()V
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 708
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    if-eq v2, v1, :cond_0

    .line 709
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 710
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 711
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v2, v0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    iget v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v3, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByIndex(II)V

    .line 713
    :cond_0
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 0

    .line 702
    iput p1, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    .line 703
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    return-void
.end method

.method public calculateHeight()I
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v0

    :goto_0
    int-to-double v0, v0

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v2, :cond_1

    move v0, v2

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result p0

    sub-int/2addr v0, v2

    mul-int/2addr p0, v0

    add-int/2addr v1, p0

    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 0

    .line 698
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    return v1

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 744
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 621
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 622
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 623
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 624
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getTopFadingEdgeStrength()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 631
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getBottomFadingEdgeStrength()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 633
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 606
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 611
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 612
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v1

    .line 613
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 614
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v1, v3

    if-le v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    sub-int/2addr v0, v1

    .line 615
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p0, v2

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const p1, 0x7f11006f

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .line 593
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 599
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 600
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result p0

    sub-int/2addr v0, p0

    neg-int p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getVisionOffset([I)V
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 685
    instance-of v0, p0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz v0, :cond_0

    .line 686
    check-cast p0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isIgnoreCancelEvent()Z
    .locals 0

    .line 754
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    return p0
.end method

.method public synthetic lambda$scrollToLast$0$FolderGridView()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->smoothScrollToPos(I)V

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 5

    .line 413
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V

    const v0, 0x7f11006c

    .line 414
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(I)V

    .line 415
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->reorderItems()V

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f110062

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/FolderUpdateLayoutMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/FolderUpdateLayoutMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->disableSaveWhenDatasetChanged(Z)V

    .line 517
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 518
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 519
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->restoreBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    .line 524
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 525
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->isDropSucceeded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 529
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 531
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->removeAllDrags()V

    goto :goto_1

    .line 533
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 534
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 536
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p1, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 537
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 464
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_1

    .line 469
    iget v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    if-eq v0, v3, :cond_3

    .line 470
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 471
    iput v3, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 474
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getTranslationY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 475
    iget v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 476
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 477
    iput v2, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 478
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 481
    :cond_2
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 482
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 485
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v0, v4, v5}, Lcom/miui/home/launcher/FolderGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f110062

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 488
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 719
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 192
    iget-wide v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 195
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "folder"

    .line 193
    invoke-static {v4, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget v3, v1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_4

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getLastCellX()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 204
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v6

    iget-object v7, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v7}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v6, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 208
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v7

    rem-int/2addr v6, v7

    if-ne v6, v5, :cond_3

    .line 209
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->layoutChildren()V

    .line 216
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 219
    new-instance v7, Lcom/miui/home/launcher/FolderGridView$1;

    invoke-direct {v7, v0, v2}, Lcom/miui/home/launcher/FolderGridView$1;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v8

    if-nez v6, :cond_5

    .line 228
    invoke-virtual {v8}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    move-object v6, v0

    .line 230
    :cond_5
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 231
    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    .line 233
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 234
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 238
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 239
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 240
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 241
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    new-array v10, v9, [F

    .line 243
    iget-object v11, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v11}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v11

    invoke-static {v0, v11, v10, v5, v4}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v11

    .line 244
    aget v12, v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    .line 245
    aget v13, v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    .line 246
    aget v14, v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    .line 247
    aget v10, v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v15, v11

    add-float/2addr v10, v15

    if-nez v3, :cond_b

    .line 250
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v3

    new-instance v7, Landroid/graphics/Rect;

    float-to-int v8, v12

    float-to-int v11, v13

    float-to-int v12, v14

    float-to-int v10, v10

    invoke-direct {v7, v8, v11, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/miui/home/launcher/widget/DragContainerLayout;->setDragDrawClipRect(Landroid/graphics/Rect;)V

    .line 251
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    new-instance v7, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v8

    invoke-direct {v7, v4, v4, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v7}, Lcom/miui/home/launcher/DragLayer;->setClipForDragging(Landroid/graphics/Rect;)V

    .line 254
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_9

    .line 255
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 256
    iget-object v7, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 257
    instance-of v7, v3, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v7, :cond_7

    move-object v7, v3

    check-cast v7, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v7}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 258
    invoke-interface {v7}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;->updateAnimateTarget(Landroid/view/View;)V

    .line 260
    :cond_7
    iget-object v7, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 265
    :cond_9
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_e

    new-array v3, v9, [I

    .line 267
    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 269
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 270
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/DragView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragView;->remove()V

    goto :goto_3

    .line 272
    :cond_a
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_6

    .line 275
    :cond_b
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v14, v13

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v15

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v9

    invoke-direct {v6, v4, v14, v15, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/DragLayer;->setClipForDragging(Landroid/graphics/Rect;)V

    .line 276
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v6

    div-int/2addr v3, v6

    add-int/2addr v3, v5

    .line 278
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/home/launcher/ItemInfo;

    iget v14, v14, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 280
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v17

    rem-int v17, v14, v17

    sub-int v15, v15, v17

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v15

    rem-int v15, v14, v15

    .line 282
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getColumnWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getHorizontalSpacing()I

    move-result v18

    add-int v17, v17, v18

    mul-int v15, v15, v17

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getColumnWidth()I

    move-result v17

    sub-int v4, v17, v8

    int-to-float v4, v4

    const/high16 v17, 0x40000000    # 2.0f

    div-float v4, v4, v17

    add-float/2addr v15, v4

    mul-float/2addr v15, v11

    add-float/2addr v15, v12

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v4

    div-int v4, v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v19

    add-int v19, v7, v19

    mul-int v4, v4, v19

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v4, v13

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v19

    div-int v14, v14, v19

    sub-int v14, v3, v14

    sub-int/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v19

    add-int v19, v7, v19

    mul-int v14, v14, v19

    add-int/2addr v14, v7

    int-to-float v14, v14

    mul-float/2addr v14, v11

    sub-float v14, v10, v14

    .line 288
    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 290
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/home/launcher/DragView;

    invoke-virtual {v14, v11}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 291
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/DragView;

    const/4 v14, 0x2

    new-array v5, v14, [F

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v11

    mul-float v14, v14, v19

    div-float v14, v14, v17

    sub-float/2addr v15, v14

    const/4 v14, 0x0

    aput v15, v5, v14

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v19

    div-float v15, v15, v17

    sub-float/2addr v4, v15

    const/4 v15, 0x1

    aput v4, v5, v15

    .line 291
    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget([F)V

    move v4, v14

    const/4 v5, 0x1

    goto/16 :goto_4

    .line 296
    :cond_d
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->scrollToLast()V

    .line 299
    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_f

    .line 300
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 303
    :cond_f
    iget-object v0, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->saveContentPosition()V

    .line 305
    :cond_10
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->finishPending()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDropCompleted()V
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 185
    new-instance v0, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 732
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 375
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 376
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 377
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 378
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 379
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 380
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 381
    iget-object p4, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 382
    iget-object p4, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 383
    iget p4, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p5

    if-ne p4, p5, :cond_0

    iget p4, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p5

    if-eq p4, p5, :cond_1

    .line 384
    :cond_0
    new-instance p4, Landroid/view/animation/TranslateAnimation;

    iget p5, p3, Landroid/graphics/Rect;->left:I

    .line 385
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float p5, p5

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-direct {p4, p5, v0, p3, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x15e

    .line 386
    invoke-virtual {p4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 387
    invoke-virtual {p2, p4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->setCountAndHorizontalSpacing2()V

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result p1

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredHeight()I

    move-result p2

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-le p2, p1, :cond_0

    if-eqz v0, :cond_0

    .line 109
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/FolderGridView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 544
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_2

    .line 550
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 551
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 552
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 553
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 554
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    if-nez v6, :cond_0

    .line 555
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    .line 557
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v6}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 567
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 568
    instance-of v4, v3, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v4, :cond_4

    .line 569
    check-cast v3, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemIcon;->folmeUp()V

    goto :goto_1

    .line 572
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    const/4 v1, 0x0

    .line 574
    iput-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcons:Ljava/util/List;

    .line 576
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 577
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->confirmClick()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/FolderGridView;->pointToPosition(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v1, p1, :cond_9

    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 578
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getScaleY()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_9

    .line 580
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_9

    .line 581
    instance-of p1, p0, Lcom/miui/home/launcher/Folder;

    if-eqz p1, :cond_8

    .line 582
    check-cast p0, Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->performClick()Z

    :cond_9
    return v0
.end method

.method public prepareLayoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 758
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 759
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 672
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 676
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->detachViewFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderGridView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public scrollToLast()V
    .locals 1

    .line 310
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$FolderGridView$iE6iQXXFPCsUBl1k1j3dKeEU4kk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderGridView$iE6iQXXFPCsUBl1k1j3dKeEU4kk;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 121
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 125
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->clearDisappearingChildren()V

    return-void

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapter must be:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCountAndHorizontalSpacing(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    const-string v0, "folder_counts"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setNumColumns(I)V

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCountAndHorizontalSpacing2()V
    .locals 3

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    const-string v0, "folder_counts"

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setNumColumns(I)V

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIgnoreCancelEvent(Z)V
    .locals 0

    .line 750
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public smoothScrollToPos(I)V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setSelection(I)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->smoothScrollToPosition(I)V

    :goto_0
    return-void
.end method
