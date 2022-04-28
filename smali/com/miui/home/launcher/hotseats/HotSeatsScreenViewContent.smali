.class public Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;
.super Lcom/miui/home/launcher/ScreenView;
.source "HotSeatsScreenViewContent.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/hotseats/HotSeatsContent;


# instance fields
.field private mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

.field private mInsertPos:I

.field private mLastPlaceHolder:I

.field private mLastReplacedPos:I

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mReplacedPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 57
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 275
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 276
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 71
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 p1, 0xa

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setScreenTransitionType(I)I

    const/4 p1, 0x3

    .line 73
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setScreenLayoutMode(I)V

    const/16 p1, 0x2a30

    .line 74
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setMaximumSnapVelocity(I)V

    return-void
.end method

.method private addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZ)V
    .locals 3

    .line 510
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 511
    instance-of v0, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDragController:Lcom/miui/home/launcher/DragController;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    :goto_0
    if-ge v1, v0, :cond_3

    .line 519
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 520
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/launcher/ItemInfo;

    iget p3, p3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt p3, p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, p2

    .line 526
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    .line 527
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    .line 528
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private disableNextAutoLayoutAnimation()V
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 149
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 150
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 151
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getScreenList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 176
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 179
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getSeatPosByX(II)I
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenLayoutX(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeCurrentGap()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 421
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result v1

    div-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 420
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getSeatWidth(I)I
    .locals 3

    .line 409
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildScreenMeasureWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 410
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeMaxGap()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildScreenMeasureWidth()I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private getVisibleScreenCount()I
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    .line 356
    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result p1

    .line 346
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p1, :cond_0

    iget-wide p1, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isSeatsFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layoutImmediately()V
    .locals 0

    .line 506
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method private pushDragItem(Lcom/miui/home/launcher/DragObject;)I
    .locals 4

    .line 463
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 465
    iput v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    goto :goto_2

    .line 467
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 468
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 469
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 470
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/FolderIcon;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v1, -0x3

    goto :goto_2

    .line 474
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result v0

    .line 475
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenLayoutX(I)I

    move-result v3

    sub-int/2addr p1, v3

    .line 476
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeCurrentGap()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 477
    iget p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 478
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 479
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    :cond_5
    :goto_2
    return v1
.end method

.method private removeCellBackground()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 442
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method private setChildVisible(II)V
    .locals 1

    .line 453
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setReplacedViewVisible()V
    .locals 3

    .line 446
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 447
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 448
    iput v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    :cond_0
    return-void
.end method

.method private setupCellBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/miui/home/launcher/CellBackground;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 427
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    const v1, 0x7f0800e8

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 335
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    const/4 v0, 0x1

    .line 487
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 493
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 494
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZ)V

    return-object p1

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->layoutImmediately()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 583
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 586
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public finishLoading()V
    .locals 4

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 165
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 166
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setEnableAutoLayoutAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Lcom/miui/home/launcher/hotseats/HotSeatsList;Ljava/util/List;)V

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

    .line 591
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getItemMoveDescription(I)Ljava/lang/String;
    .locals 3

    .line 458
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const p1, 0x7f100075

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

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

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 567
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 568
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isSeatsFull()Z
    .locals 2

    .line 187
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigChangeUpdateRecommend()V
    .locals 0

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 325
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 326
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 327
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Lcom/miui/home/launcher/hotseats/HotSeatsList;Ljava/util/List;)V

    .line 330
    :cond_0
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setupCellBackground(Landroid/graphics/Bitmap;)V

    .line 270
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 271
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    .line 272
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 316
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 320
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 286
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 291
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 292
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    if-eq v0, v1, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    .line 295
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    .line 299
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 304
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    if-eq v0, v1, :cond_4

    .line 305
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 306
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 307
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 308
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 14

    .line 211
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 215
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 220
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 221
    iget-wide v3, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_2

    const-string v3, "dock"

    .line 223
    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 225
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-static {v3, v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    .line 228
    iget v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_2

    .line 230
    :cond_3
    iget v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 231
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    if-eqz v2, :cond_5

    .line 234
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v5

    :goto_0
    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    move-object v7, v3

    goto :goto_1

    :cond_5
    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_7

    .line 237
    iget-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v10, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_6

    .line 238
    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ItemIcon;->setSkipNextAutoLayoutAnimation(Z)V

    .line 240
    :cond_6
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v2, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 241
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v2, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 242
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v2, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 243
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v2, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 244
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v7, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 245
    iget-object v6, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    iget-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v10, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v12, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v13, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static/range {v6 .. v13}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 249
    :cond_7
    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    .line 251
    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 252
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_8

    .line 253
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 255
    :cond_8
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Lcom/miui/home/launcher/hotseats/HotSeatsList;Ljava/util/List;)V

    .line 256
    iput-object v5, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 257
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 258
    instance-of p1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_9

    .line 259
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_9
    return v4
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 203
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onFinishInflate()V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    const v1, 0x7f0801ad

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setUniformLayoutModeMaxGap(I)Z

    .line 135
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ScreenView;->onLayout(ZIIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    return v1

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 393
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_6

    return v1

    .line 397
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 398
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 399
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return v3

    .line 402
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 403
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    :cond_8
    return v3
.end method

.method protected onVerticalFling(IFF)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getTop()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p3

    invoke-virtual {v0, p1, v1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalFling(IFF)V

    return-void
.end method

.method protected onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewAdded(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewRemoved(Landroid/view/View;)V

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 0

    return-void
.end method

.method public removeAllItemIcons()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeAllScreens()V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    return-void
.end method

.method public removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

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

    .line 544
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

    .line 545
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 546
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 548
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 549
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 550
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 551
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 554
    :cond_1
    instance-of v2, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 555
    move-object v2, v3

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->disableNextAutoLayoutAnimation()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-void
.end method

.method public startLoading()V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeAllViews()V

    return-void
.end method

.method public updateIconSize()V
    .locals 3

    const/4 v0, 0x0

    .line 598
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 599
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 600
    instance-of v2, v1, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v2, :cond_0

    .line 601
    check-cast v1, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v1}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
