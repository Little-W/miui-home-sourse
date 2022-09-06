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

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 57
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 269
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 270
    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 70
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 p1, 0xa

    .line 71
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setScreenTransitionType(I)I

    const/4 p1, 0x3

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setScreenLayoutMode(I)V

    const/16 p1, 0x2a30

    .line 73
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setMaximumSnapVelocity(I)V

    return-void
.end method

.method private addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZ)V
    .locals 3

    .line 506
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    .line 508
    instance-of v1, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 509
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 511
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

    .line 516
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 517
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

    .line 523
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    .line 524
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    .line 525
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private disableNextAutoLayoutAnimation()V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 148
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 149
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 150
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

    .line 416
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenLayoutX(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeCurrentGap()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 417
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result v1

    div-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 416
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getSeatWidth(I)I
    .locals 3

    .line 405
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildScreenMeasureWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 406
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeMaxGap()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    .line 409
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

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    .line 351
    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result p1

    .line 341
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 342
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

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isSeatsFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
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

.method public static synthetic lambda$keepDataConsistent$0(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    const-string v0, "Launcher.ScreenHotSeats"

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotSeats ScreenView addItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    return-void
.end method

.method static synthetic lambda$keepDataConsistent$1(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 540
    instance-of p0, p0, Lcom/miui/home/launcher/FolderInfo;

    return p0
.end method

.method public static synthetic lambda$keepDataConsistent$2(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method private layoutImmediately()V
    .locals 0

    .line 502
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method private pushDragItem(Lcom/miui/home/launcher/DragObject;)I
    .locals 4

    .line 459
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getVisibleScreenCount()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 461
    iput v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    goto :goto_2

    .line 463
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 464
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatPosByX(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 465
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    .line 466
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

    .line 470
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getSeatWidth(I)I

    move-result v0

    .line 471
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

    .line 472
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getUniformLayoutModeCurrentGap()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 473
    iget p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    .line 474
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 475
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

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 552
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 553
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 554
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

    .line 437
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 438
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method private setChildVisible(II)V
    .locals 1

    .line 449
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setReplacedViewVisible()V
    .locals 3

    .line 442
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 443
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 444
    iput v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    :cond_0
    return-void
.end method

.method private setupCellBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/miui/home/launcher/CellBackground;

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    const v1, 0x7f0801b8

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 433
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 330
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

    .line 483
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 490
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZ)V

    return-object p1

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->layoutImmediately()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 607
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 610
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

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 164
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 165
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setEnableAutoLayoutAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

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

    .line 615
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

    .line 454
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const p1, 0x7f110078

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-object v0
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

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v0

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 178
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

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 590
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 591
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

    .line 186
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

    .line 530
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.ScreenHotSeats"

    const-string v1, "HotSeatsScreenViewContent not updateItemInfo OnScreenChanged"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->rebindItemInfo(Ljava/util/List;)V

    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeAllItemIcons()V

    .line 536
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$sX9NKqsF25iPDpyB_rHXoEbYcX4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$sX9NKqsF25iPDpyB_rHXoEbYcX4;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 540
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

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 319
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 320
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->updateFolderMessageWhenDrag(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 260
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setupCellBackground(Landroid/graphics/Bitmap;)V

    .line 264
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 265
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    .line 266
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 310
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 314
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 274
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 280
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 285
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 286
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    if-eq v0, v1, :cond_4

    .line 287
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addView(Landroid/view/View;I)V

    .line 289
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastPlaceHolder:I

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    .line 293
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 298
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    if-eq v0, v1, :cond_4

    .line 299
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 300
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setChildVisible(II)V

    .line 301
    iget v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLastReplacedPos:I

    .line 302
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 14

    .line 205
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 209
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->pushDragItem(Lcom/miui/home/launcher/DragObject;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 214
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setReplacedViewVisible()V

    .line 215
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

    .line 217
    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 219
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v3, v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    .line 222
    iget v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mInsertPos:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_2

    .line 224
    :cond_3
    iget v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 225
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    if-eqz v2, :cond_5

    .line 228
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

    .line 231
    iget-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v10, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_6

    .line 232
    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ItemIcon;->setSkipNextAutoLayoutAnimation(Z)V

    .line 234
    :cond_6
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v2, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 235
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v2, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 236
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v2, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 237
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v2, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 238
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v7, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 239
    iget-object v6, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    iget-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v10, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v12, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v13, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static/range {v6 .. v13}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 243
    :cond_7
    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mReplacedPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    .line 245
    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 246
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_8

    .line 247
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 249
    :cond_8
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

    .line 250
    iput-object v5, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 251
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 252
    instance-of p1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_9

    .line 253
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_9
    return v4
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 196
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeCellBackground()V

    .line 197
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->addItemIcon(Lcom/miui/home/launcher/ItemInfo;IZ)Lcom/miui/home/launcher/ItemIcon;

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onFinishInflate()V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mContext:Landroid/content/Context;

    const v1, 0x7f08028a

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->setUniformLayoutModeMaxGap(I)Z

    .line 134
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ScreenView;->onLayout(ZIIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    return v1

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 388
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_6

    return v1

    .line 392
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 393
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 394
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return v3

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 398
    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 399
    iput-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    :cond_8
    return v3
.end method

.method protected onVerticalFling(IFF)V
    .locals 2

    .line 119
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

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewAdded(Landroid/view/View;)V

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewRemoved(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 124
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 0

    return-void
.end method

.method public removeAllItemIcons()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeAllScreens()V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 560
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    .line 561
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->saveSeats(Ljava/util/List;)V

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

    .line 567
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

    .line 568
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 569
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getScreen(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 571
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 572
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 573
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 574
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 577
    :cond_1
    instance-of v2, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 578
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

.method protected setFrame(IIII)Z
    .locals 0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->disableNextAutoLayoutAnimation()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setupViews(Lcom/miui/home/launcher/hotseats/HotSeats;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->mHotSeats:Lcom/miui/home/launcher/hotseats/HotSeats;

    return-void
.end method

.method public startLoading()V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->removeAllViews()V

    return-void
.end method

.method public updateIconSize()V
    .locals 3

    const/4 v0, 0x0

    .line 619
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 620
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 621
    instance-of v2, v1, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v2, :cond_0

    .line 622
    check-cast v1, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v1}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
