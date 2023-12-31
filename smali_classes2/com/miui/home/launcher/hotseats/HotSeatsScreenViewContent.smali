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

    .line 57
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 58
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 273
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 274
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

    .line 513
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 514
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    .line 515
    instance-of v1, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 516
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 518
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

    .line 523
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 524
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

    .line 530
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    .line 531
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    .line 532
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

.method private getSeatPosByX(II)I
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 423
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenLayoutX(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeCurrentGap()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 424
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result p0

    div-int/2addr p1, p0

    add-int/lit8 p2, p2, -0x1

    .line 423
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getSeatWidth(I)I
    .locals 3

    .line 412
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildScreenMeasureWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 413
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeMaxGap()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getPaddingRight()I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildScreenMeasureWidth()I

    move-result p0

    add-int p1, p0, v0

    :goto_0
    return p1
.end method

.method private getVisibleScreenCount()I
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    .line 355
    iget p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result p1

    .line 345
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p0, :cond_0

    iget-wide p0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isSeatsFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$keepDataConsistent$1(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 547
    instance-of p0, p0, Lcom/miui/home/launcher/FolderInfo;

    return p0
.end method

.method private layoutImmediately()V
    .locals 0

    .line 509
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method private pushDragItem(Lcom/miui/home/launcher/DragObject;)I
    .locals 4

    .line 466
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 468
    iput v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    goto :goto_2

    .line 470
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 471
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 472
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 473
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/FolderIcon;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v1, -0x3

    goto :goto_2

    .line 477
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result v0

    .line 478
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

    .line 479
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeCurrentGap()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 480
    iget p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 481
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 482
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

.method private rebindItemInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 558
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 559
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 560
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 561
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v1, v2, p0}, Lcom/miui/home/launcher/ItemIcon;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeCellBackground()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 445
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method private setChildVisible(II)V
    .locals 1

    .line 456
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setReplacedViewVisible()V
    .locals 3

    .line 449
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 450
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 451
    iput v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    :cond_0
    return-void
.end method

.method private setupCellBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Lcom/miui/home/launcher/CellBackground;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 430
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    const v1, 0x7f0801cf

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 435
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 440
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 334
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Landroid/view/View;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p0

    return-object p0
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p0

    return-object p0
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 2

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 496
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;Z)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 497
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZ)V

    return-object p1

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->layoutImmediately()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 615
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 618
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

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 623
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getItemMoveDescription(I)Ljava/lang/String;
    .locals 2

    .line 461
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const p1, 0x7f110079

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-object p0
.end method

.method public getScreenList()Ljava/util/List;
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

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 598
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 599
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isSeatsFull()Z
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keepDataConsistent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.ScreenHotSeats"

    const-string v1, "HotSeatsScreenViewContent not updateItemInfo OnScreenChanged"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->rebindItemInfo(Ljava/util/List;)V

    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeAllItemIcons()V

    .line 543
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$sX9NKqsF25iPDpyB_rHXoEbYcX4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$sX9NKqsF25iPDpyB_rHXoEbYcX4;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 547
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$8V1wZjR1r-CKycY9UwwqdViRUsE;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$8V1wZjR1r-CKycY9UwwqdViRUsE;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$keepDataConsistent$0$HotSeatsScreenViewContent(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotSeats ScreenView addItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ScreenHotSeats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    return-void
.end method

.method public synthetic lambda$keepDataConsistent$2$HotSeatsScreenViewContent(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 323
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 324
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->updateFolderMessageWhenDrag(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 264
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setupCellBackground(Landroid/graphics/Bitmap;)V

    .line 268
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 269
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    .line 270
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 314
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 318
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 278
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 284
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 289
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 290
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    if-eq v0, v1, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    .line 293
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterHotSeat(Landroid/view/View;)V

    .line 297
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 302
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    if-eq v0, v1, :cond_4

    .line 303
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 304
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 305
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 306
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 206
    iget v2, v1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 209
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 210
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    return v3

    .line 214
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 216
    iget-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    instance-of v5, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v5, :cond_2

    .line 218
    move-object v5, v2

    check-cast v5, Lcom/miui/home/launcher/ShortcutInfo;

    .line 220
    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dock"

    .line 218
    invoke-static {v6, v5}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    instance-of v5, v2, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 223
    move-object v7, v2

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v7, v6, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    :cond_3
    const/4 v7, -0x2

    const/4 v8, 0x1

    if-ne v4, v7, :cond_4

    .line 226
    iget v4, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v3

    goto :goto_2

    .line 228
    :cond_4
    iget v4, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v4

    .line 229
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    if-eqz v4, :cond_6

    .line 232
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :cond_5
    move-object v7, v6

    :goto_0
    check-cast v7, Lcom/miui/home/launcher/ItemInfo;

    move-object v10, v7

    goto :goto_1

    :cond_6
    move-object v10, v6

    :goto_1
    if-eqz v10, :cond_8

    .line 235
    iget-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v13, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v7, v11, v13

    if-eqz v7, :cond_7

    .line 236
    check-cast v4, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v4, v8}, Lcom/miui/home/launcher/ItemIcon;->setSkipNextAutoLayoutAnimation(Z)V

    .line 238
    :cond_7
    iget-wide v11, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 239
    iget-wide v11, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 240
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v4, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 241
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v4, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 242
    iget-object v4, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v10, v3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 243
    iget-object v9, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    iget-wide v11, v10, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v13, v10, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v15, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move/from16 v16, v3

    invoke-static/range {v9 .. v16}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 247
    :cond_8
    iget v3, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v3

    .line 249
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_9

    .line 251
    iget-object v3, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 253
    :cond_9
    iget-object v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 254
    iput-object v6, v0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 255
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    if-eqz v5, :cond_a

    .line 257
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v2}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_a
    return v8
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 197
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 198
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;Z)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onFinishInflate()V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    const v1, 0x7f080287

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

    .line 373
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentClosingAnimRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_2

    return v1

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 392
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 395
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_7

    return v1

    .line 399
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 400
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    .line 401
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return v3

    .line 404
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 405
    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 406
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    :cond_9
    return v3

    :cond_a
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 0

    .line 637
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->onResumeMamlDrawable()V

    return-void
.end method

.method public onResumeMamlDrawable()V
    .locals 3

    const/4 v0, 0x0

    .line 641
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 642
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 643
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    .line 644
    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 645
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
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

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, p3

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/home/launcher/Workspace;->onVerticalFling(IFF)V

    return-void
.end method

.method protected onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result p0

    return p0
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
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

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
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

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

    .line 567
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    .line 568
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->layoutImmediately()V

    .line 569
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    return-void
.end method

.method public removeRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

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

    .line 575
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

    .line 576
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 577
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 580
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 581
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 582
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 585
    :cond_1
    instance-of v2, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 586
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

    const/4 p0, 0x0

    return p0
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->disableNextAutoLayoutAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    .line 627
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 628
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 629
    instance-of v2, v1, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v2, :cond_0

    .line 630
    check-cast v1, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v1}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
