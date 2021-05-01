.class public Lcom/miui/home/launcher/HotSeats;
.super Lcom/miui/home/launcher/ScreenView;
.source "HotSeats.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DragView$DropTargetContainer;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/Launcher$IconContainer;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mContext:Landroid/content/Context;

.field private mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private mInsertPos:I

.field private mIsLoading:Z

.field private mLastPlaceHolder:I

.field private mLastReplacedPos:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLocation:[I

.field private mReplacedPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    const/4 p2, -0x1

    .line 39
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    .line 40
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    .line 265
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    .line 266
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    const/16 p1, 0xa

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setScreenTransitionType(I)I

    const/4 p1, 0x3

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setScreenLayoutMode(I)V

    const/16 p1, 0x2a30

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setMaximumSnapVelocity(I)V

    return-void
.end method

.method private addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZZ)V
    .locals 8

    .line 457
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p4, 0x1

    .line 458
    invoke-virtual {p1, p4}, Lcom/miui/home/launcher/ItemIcon;->setDockViewMode(Z)V

    .line 459
    instance-of v0, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    :goto_0
    if-ge v1, v0, :cond_3

    .line 467
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 468
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

    .line 474
    :goto_1
    iget-boolean p2, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    xor-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    .line 475
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/HotSeats;->addView(Landroid/view/View;I)V

    .line 476
    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v4, -0x65

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/Launcher;->onViewAddToScreen(Landroid/view/View;IJZ)V

    return-void
.end method

.method private disableNextAutoLayoutAnimation()V
    .locals 4

    .line 590
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 591
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 592
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 593
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

    .line 163
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getScreenLayoutX(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getUniformLayoutModeCurrentGap()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 164
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleScreenCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getSeatWidth(I)I

    move-result v1

    div-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 163
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getSeatWidth(I)I
    .locals 3

    .line 152
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildScreenMeasureWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getUniformLayoutModeMaxGap()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getWorkingWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildScreenMeasureWidth()I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method private getVisibleScreenCount()I
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    .line 120
    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private getWorkingWidth()I
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/HotSeats;->getSeatPosByX(II)I

    move-result p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
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

.method private isDropAllowed(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 102
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 109
    iget-boolean p1, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-nez p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleScreenCount()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 111
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/HotSeats;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$pushItem$117(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$pushItem$118(Lcom/miui/home/launcher/HotSeats;IZZLandroid/view/View;)V
    .locals 0

    .line 446
    check-cast p4, Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/miui/home/launcher/HotSeats;->addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZZ)V

    return-void
.end method

.method private removeCellBackground()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    return-void
.end method

.method private saveSeats()V
    .locals 12

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 79
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/miui/home/launcher/ItemInfo;

    .line 82
    iput v2, v11, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const-wide/16 v4, -0x65

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x0

    move-object v3, v11

    move v9, v2

    .line 83
    invoke-static/range {v3 .. v10}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Launcher.HotSeats"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSeats, info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    const-string v2, "com.miui.home.launcher.settings"

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private setChildVisible(II)V
    .locals 1

    .line 222
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setReplacedViewVisible()V
    .locals 3

    .line 206
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/HotSeats;->setChildVisible(II)V

    .line 208
    iput v1, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    :cond_0
    return-void
.end method

.method private setSeats(Lcom/miui/home/launcher/DragObject;)I
    .locals 4

    .line 269
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleScreenCount()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 271
    iput v2, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    goto :goto_2

    .line 273
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 274
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/HotSeats;->getSeatPosByX(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    .line 275
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    .line 276
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

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

    .line 280
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getSeatWidth(I)I

    move-result v0

    .line 281
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/HotSeats;->getScreenLayoutX(I)I

    move-result v3

    sub-int/2addr p1, v3

    .line 282
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getUniformLayoutModeCurrentGap()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    .line 283
    iget p1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 285
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    :cond_5
    :goto_2
    return v1
.end method

.method private setupCellBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/miui/home/launcher/CellBackground;

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 190
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->canAcceptByHotSeats()Z

    move-result p1

    return p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 534
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 537
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 629
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->allowLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 635
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finishLoading()V
    .locals 3

    const/4 v0, 0x0

    .line 519
    iput-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 520
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 521
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 522
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setEnableAutoLayoutAnimation(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    return-void
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x65

    return-wide v0
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

    .line 644
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

.method public getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    .line 506
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 507
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 508
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemMoveDescription(I)Ljava/lang/String;
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const p1, 0x7f10006e

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSeatsFull()Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildCount()I

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

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 558
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 559
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 560
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p1, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    :cond_0
    const/4 p1, 0x0

    .line 563
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 194
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setupCellBackground(Landroid/graphics/Bitmap;)V

    .line 195
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 196
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/HotSeats;->addView(Landroid/view/View;I)V

    .line 197
    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 218
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 227
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setSeats(Lcom/miui/home/launcher/DragObject;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 234
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 240
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    if-eq v0, v1, :cond_4

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->addView(Landroid/view/View;I)V

    .line 243
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    .line 247
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 252
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    if-eq v0, v1, :cond_4

    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 254
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setChildVisible(II)V

    .line 255
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    .line 256
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 313
    iget v0, v7, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 316
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    .line 317
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/HotSeats;->setSeats(Lcom/miui/home/launcher/DragObject;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 321
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 324
    iget-wide v2, v8, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    instance-of v2, v8, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_2

    const-string v2, "dock"

    .line 326
    move-object v3, v8

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 328
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-static {v2, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_3

    .line 332
    iget v2, v6, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    goto :goto_2

    .line 334
    :cond_3
    iget v0, v6, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    invoke-virtual {v6, v0}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 335
    invoke-virtual {v6, v0}, Lcom/miui/home/launcher/HotSeats;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_5

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v10

    :goto_0
    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    move-object v12, v2

    goto :goto_1

    :cond_5
    move-object v12, v10

    :goto_1
    if-eqz v12, :cond_7

    .line 342
    iget-wide v2, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v4, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 343
    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/ItemIcon;->setSkipNextAutoLayoutAnimation(Z)V

    .line 344
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setDockViewMode(Z)V

    .line 346
    :cond_6
    iget-wide v2, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v2, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 347
    iget-wide v2, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v2, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 348
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 349
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 350
    iget-object v0, v6, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v12, v1, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 351
    iget-object v11, v6, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    iget-wide v13, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-wide v15, v0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-static/range {v11 .. v18}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 355
    :cond_7
    iget v0, v6, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    invoke-virtual {v6, v8, v0}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 357
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_8

    .line 359
    iget-object v0, v6, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 361
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    .line 362
    iput-object v10, v6, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 363
    invoke-virtual {v8}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 364
    instance-of v0, v8, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_9

    .line 365
    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v8}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_9
    return v9
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 568
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 569
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZZ)Lcom/miui/home/launcher/ItemIcon;

    .line 570
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 572
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    return-void
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onFinishInflate()V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    const v1, 0x7f080139

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->setUniformLayoutModeMaxGap(I)Z

    .line 142
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ScreenView;->onLayout(ZIIII)V

    .line 143
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    invoke-virtual {p1, p0, p2, v2}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[IZ)F

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 388
    iget-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    return v1

    .line 396
    :cond_1
    instance-of v2, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 397
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-eqz v0, :cond_2

    return v1

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 419
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_7

    return v1

    .line 424
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 425
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 426
    iput-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return v3

    .line 430
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 431
    iput-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    :cond_9
    return v3
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 131
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 132
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 639
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->requestLayout()V

    return-void
.end method

.method protected onVerticalFling(IFF)V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getTop()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p3

    invoke-virtual {v0, p1, v1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalFling(IFF)V

    return-void
.end method

.method protected onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 542
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewAdded(Landroid/view/View;)V

    .line 543
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 544
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 550
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewRemoved(Landroid/view/View;)V

    .line 551
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 529
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public performDropFinishAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public pushItem(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 438
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public pushItem(Lcom/miui/home/launcher/ItemInfo;IZZZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-eqz p5, :cond_0

    .line 444
    iget-object p5, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p5}, Lcom/miui/home/launcher/Launcher;->getLoadingAsyncInflateManager()Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    move-result-object p5

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$K70KBWO6iQBPUc_0L4crs4YCw0I;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$HotSeats$K70KBWO6iQBPUc_0L4crs4YCw0I;-><init>(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/ItemInfo;)V

    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$HotSeats$RbTu2ny8T7n-DxC4r-ymr7gqIz4;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/miui/home/launcher/-$$Lambda$HotSeats$RbTu2ny8T7n-DxC4r-ymr7gqIz4;-><init>(Lcom/miui/home/launcher/HotSeats;IZZ)V

    invoke-virtual {p5, v0, p1}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->inflateViewAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p5, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p5, p0, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 449
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/HotSeats;->addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZZ)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I
    .locals 1

    .line 481
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 482
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->removeView(Landroid/view/View;)V

    return v0
.end method

.method removeShortcuts(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 487
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

    .line 488
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 489
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 490
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 491
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 492
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 493
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/HotSeats;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 496
    :cond_1
    instance-of v2, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 497
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

    .line 384
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setDropAnimating(Z)V
    .locals 0

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 582
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->disableNextAutoLayoutAnimation()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLaucher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->removeAllViews()V

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    return-void
.end method
