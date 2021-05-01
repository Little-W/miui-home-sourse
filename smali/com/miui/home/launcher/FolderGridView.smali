.class public Lcom/miui/home/launcher/FolderGridView;
.super Landroid/widget/GridView;
.source "FolderGridView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DragController$LocationCalibration;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private mDownIcon:Landroid/view/View;

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

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    .line 45
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->usingDarkScrollBar:Z

    const/16 v1, 0xff

    .line 52
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    .line 55
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    .line 416
    new-instance p2, Lcom/miui/home/launcher/FolderGridView$4;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/FolderGridView$4;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    .line 466
    new-instance p2, Lcom/miui/home/launcher/FolderGridView$5;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/FolderGridView$5;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setFocusable(Z)V

    .line 87
    new-instance p2, Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    .line 88
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    .line 89
    iget-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 91
    iget-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x18

    .line 92
    iput p1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderGridView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->reorderItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderGridView;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    return p0
.end method

.method private appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 8

    .line 443
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->disableSaveWhenDatasetChanged(Z)V

    .line 447
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->saveBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->contains(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->getLastCellX()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 453
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v5, :cond_2

    .line 454
    iget-object v7, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v6, v7, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_2
    if-nez v0, :cond_3

    add-int v7, v3, v5

    add-int/2addr v7, v1

    .line 456
    iput v7, v6, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 457
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    .line 461
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 462
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->addAll(Ljava/util/Collection;)V

    .line 463
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

    .line 517
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 518
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 519
    iget-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 520
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

    .line 521
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    cmpg-float v7, v5, v3

    if-gez v7, :cond_0

    .line 522
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

    .line 527
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-eq v2, p1, :cond_2

    .line 528
    iput-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private getLastCellX()I
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getReorderCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    return v0
.end method

.method private isItemInfoAccepted(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 668
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private makePositionSnapShot()V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 368
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 369
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 370
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 371
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 372
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 373
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
    .locals 2

    .line 476
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private reorderItems()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 425
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    .line 426
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 427
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByInsert(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_2
    return-void
.end method

.method private restoreBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;

    if-nez v0, :cond_1

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 347
    iget v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->cellX:I

    iput v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 348
    iget v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->cellY:I

    iput v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 349
    iget-wide v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->container:J

    iput-wide v2, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 350
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyIconView:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 351
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyForParent()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyForParent:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_3

    .line 352
    :cond_2
    iget-object v2, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyIconView:Landroid/view/View;

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderGridView$BackupDataForDragging;->mBuddyForParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private saveBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderGridView$3;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/FolderGridView$3;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 337
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

    .line 658
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 659
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 660
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
    const/4 p1, 0x1

    return p1
.end method

.method public addDragOverItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method

.method public afterDragStart()V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 720
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    if-eq v2, v1, :cond_0

    .line 721
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 722
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 723
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v2, v0, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    iget v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v3, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByIndex(II)V

    .line 725
    :cond_0
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 0

    .line 714
    iput p1, p0, Lcom/miui/home/launcher/FolderGridView;->mDragStartedIndex:I

    .line 715
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    return-void
.end method

.method public calculateHeight()I
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v0

    :goto_0
    int-to-double v0, v0

    .line 98
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

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v3

    sub-int/2addr v0, v2

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .line 710
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    return v1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 748
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 634
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    .line 635
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

    .line 636
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 637
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
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

    .line 641
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 644
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/FolderGridView;->mEdgeAlpha:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getBottomFadingEdgeStrength()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 646
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

    .line 619
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 624
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 625
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v1

    .line 626
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 627
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v1, v3

    if-le v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    sub-int/2addr v0, v1

    .line 628
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const p1, 0x7f100064

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    .line 606
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 612
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 613
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getVisionOffset([I)V
    .locals 2

    .line 695
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 696
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 697
    instance-of v1, v0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz v1, :cond_0

    .line 698
    check-cast v0, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIgnoreCancelEvent()Z
    .locals 1

    .line 758
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    return v0
.end method

.method public offset([FLcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 433
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->appendDragObjectForDragEnter(Lcom/miui/home/launcher/DragObject;)V

    const v0, 0x7f100061

    .line 434
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(I)V

    .line 435
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->reorderItems()V

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100057

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    iget v5, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 439
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderUpdateLayoutMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/FolderUpdateLayoutMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->disableSaveWhenDatasetChanged(Z)V

    .line 537
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 538
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 539
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->restoreBackupDataForDragging(Lcom/miui/home/launcher/DragObject;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDataForDragIn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastHit:Landroid/view/View;

    .line 544
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 545
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 546
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->isDropSucceeded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 549
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->removeAllDrags()V

    goto :goto_1

    .line 553
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutsAdapter;->mDragOverItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 554
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 556
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p1, Lcom/miui/home/launcher/ShortcutsAdapter;->mFirstDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 557
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 484
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
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

    .line 489
    iget v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    if-eq v0, v3, :cond_3

    .line 490
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 491
    iput v3, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 494
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

    .line 495
    iget v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 496
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 497
    iput v2, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mConfirmAutoScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 501
    :cond_2
    iput v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAutoScrollDirection:I

    .line 502
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->removeAutoScroll()V

    .line 505
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->checkNearestViewByDrag(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 506
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mStayConfirm:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v0, v4, v5}, Lcom/miui/home/launcher/FolderGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 509
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100057

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    iget v5, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 731
    iput-object p2, p0, Lcom/miui/home/launcher/FolderGridView;->mBackupDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 196
    iget-wide v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const-string v3, "folder"

    .line 199
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {v3, v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
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

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getLastCellX()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 208
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutsAdapter;->mDroppingDragViews:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
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

    .line 210
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v6, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 212
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v7

    rem-int/2addr v6, v7

    if-ne v6, v5, :cond_3

    .line 213
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    goto :goto_1

    .line 215
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->layoutChildren()V

    .line 220
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 223
    new-instance v7, Lcom/miui/home/launcher/FolderGridView$1;

    invoke-direct {v7, v0, v2}, Lcom/miui/home/launcher/FolderGridView$1;-><init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v8

    if-nez v6, :cond_5

    .line 232
    invoke-virtual {v8}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    move-object v6, v0

    .line 234
    :cond_5
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 235
    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    .line 237
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 238
    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 242
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 243
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 244
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 245
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    .line 246
    new-array v10, v9, [F

    .line 247
    iget-object v11, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v11}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v11

    invoke-static {v0, v11, v10, v5, v4}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v11

    .line 248
    aget v12, v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    .line 249
    aget v13, v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    .line 250
    aget v10, v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v10, v14

    if-nez v3, :cond_b

    .line 253
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    new-instance v11, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v12

    float-to-int v10, v10

    invoke-direct {v11, v4, v4, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v11}, Lcom/miui/home/launcher/DragLayer;->setClipForDragging(Landroid/graphics/Rect;)V

    move v3, v4

    .line 256
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_9

    .line 257
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 258
    iget-object v11, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 259
    instance-of v11, v10, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v11, :cond_7

    move-object v11, v10

    check-cast v11, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v11}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 260
    invoke-interface {v11}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;->updateAnimateTarget(Landroid/view/View;)V

    .line 262
    :cond_7
    iget-object v11, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 267
    :cond_9
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 268
    new-array v3, v9, [I

    .line 269
    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 271
    iget-object v6, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 272
    aget v11, v3, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/home/launcher/ItemInfo;

    iget v12, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v13

    rem-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getHorizontalSpacing()I

    move-result v13

    add-int/2addr v13, v8

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-float v11, v11

    .line 273
    aget v12, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getFirstVisiblePosition()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v14

    div-int/2addr v13, v14

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/home/launcher/ItemInfo;

    iget v14, v14, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v15

    div-int/2addr v14, v15

    sub-int/2addr v13, v14

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v14

    add-int/2addr v14, v7

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    int-to-float v12, v12

    .line 275
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/home/launcher/DragView;

    new-array v13, v9, [F

    aput v11, v13, v4

    aput v12, v13, v5

    invoke-virtual {v10, v13}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget([F)V

    goto :goto_3

    .line 277
    :cond_a
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_6

    .line 280
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

    .line 281
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v6

    div-int/2addr v3, v6

    add-int/2addr v3, v5

    .line 283
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

    .line 284
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/home/launcher/ItemInfo;

    iget v14, v14, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 285
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v16

    rem-int v16, v14, v16

    sub-int v15, v15, v16

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v15

    rem-int v15, v14, v15

    .line 287
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getColumnWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getHorizontalSpacing()I

    move-result v17

    add-int v16, v16, v17

    mul-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getColumnWidth()I

    move-result v16

    sub-int v4, v16, v8

    int-to-float v4, v4

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v4, v16

    add-float/2addr v15, v4

    mul-float/2addr v15, v11

    add-float/2addr v15, v12

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v4

    div-int v4, v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v18

    add-int v18, v7, v18

    mul-int v4, v4, v18

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v4, v13

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v18

    div-int v14, v14, v18

    sub-int v14, v3, v14

    sub-int/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v18

    add-int v18, v7, v18

    mul-int v14, v14, v18

    add-int/2addr v14, v7

    int-to-float v14, v14

    mul-float/2addr v14, v11

    sub-float v14, v10, v14

    .line 293
    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 295
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/home/launcher/DragView;

    invoke-virtual {v14, v11}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 296
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/DragView;

    const/4 v14, 0x2

    new-array v5, v14, [F

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v11

    mul-float v14, v14, v18

    div-float v14, v14, v16

    sub-float/2addr v15, v14

    const/4 v14, 0x0

    aput v15, v5, v14

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v18

    div-float v15, v15, v16

    sub-float/2addr v4, v15

    const/4 v15, 0x1

    aput v4, v5, v15

    .line 296
    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget([F)V

    move v4, v14

    const/4 v5, 0x1

    goto/16 :goto_4

    .line 301
    :cond_d
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mItemsForDropping:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/FolderGridView;->scrollToLast()V

    .line 304
    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_f

    .line 305
    iget-object v3, v0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 308
    :cond_f
    iget-object v1, v0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->saveContentPosition()V

    .line 310
    :cond_10
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->finishPending()V

    const/4 v1, 0x1

    return v1
.end method

.method public onDropCompleted()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 380
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 381
    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 383
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 384
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_3

    .line 385
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 386
    iget-object p4, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    const-wide/16 v0, 0x15e

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 387
    iget-object p4, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 388
    iget p4, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ne p4, v2, :cond_0

    iget p4, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq p4, v2, :cond_3

    .line 389
    :cond_0
    new-instance p4, Landroid/view/animation/TranslateAnimation;

    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p3, v3

    int-to-float p3, p3

    invoke-direct {p4, v2, p5, p3, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 391
    invoke-virtual {p4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 392
    invoke-virtual {p2, p4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_2

    .line 397
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getHorizontalSpacing()I

    move-result v2

    add-int/2addr p4, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr p4, v2

    neg-int p4, p4

    int-to-float p4, p4

    .line 398
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p3, p4, p5, v2, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 399
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 400
    invoke-virtual {p2, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-gt p1, p3, :cond_3

    .line 404
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    .line 405
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    neg-int p4, p4

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getVerticalSpacing()I

    move-result v2

    sub-int/2addr p4, v2

    int-to-float p4, p4

    invoke-direct {p3, p5, p5, p4, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 406
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 407
    invoke-virtual {p2, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 412
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result p1

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredHeight()I

    move-result p2

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-le p2, p1, :cond_0

    if-eqz v0, :cond_0

    .line 113
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/FolderGridView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 564
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 568
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_1

    .line 570
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 571
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 572
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 573
    iget-object v6, p0, Lcom/miui/home/launcher/FolderGridView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    iput-object v5, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcon:Landroid/view/View;

    .line 575
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v3}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 581
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcon:Landroid/view/View;

    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v3, :cond_3

    .line 585
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->folmeUp()V

    :cond_3
    const/4 v1, 0x0

    .line 587
    iput-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mDownIcon:Landroid/view/View;

    .line 589
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 590
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->confirmClick()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/FolderGridView;->pointToPosition(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 591
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->getScaleY()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_6

    move-object p1, p0

    .line 593
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    .line 594
    instance-of v1, p1, Lcom/miui/home/launcher/Folder;

    if-eqz v1, :cond_5

    .line 595
    check-cast p1, Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->performClick()Z

    :cond_6
    return v0
.end method

.method public prepareLayoutAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mLastPosMap:Ljava/util/HashMap;

    .line 763
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 684
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderGridView;->makePositionSnapShot()V

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 688
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->detachViewFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 689
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderGridView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public scrollToLast()V
    .locals 1

    .line 315
    new-instance v0, Lcom/miui/home/launcher/FolderGridView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderGridView$2;-><init>(Lcom/miui/home/launcher/FolderGridView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 35
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 125
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 129
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->clearDisappearingChildren()V

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapter must be:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIgnoreCancelEvent(Z)V
    .locals 0

    .line 754
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderGridView;->mIgnoreCancelEvent:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method
