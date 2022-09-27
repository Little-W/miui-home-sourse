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

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    const/4 p2, -0x1

    .line 49
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    .line 50
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    .line 328
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    .line 329
    iput p2, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    const/16 p1, 0xa

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setScreenTransitionType(I)I

    const/4 p1, 0x3

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setScreenLayoutMode(I)V

    const/16 p1, 0x2a30

    .line 67
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setMaximumSnapVelocity(I)V

    return-void
.end method

.method private addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZZ)V
    .locals 8

    .line 514
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p4, 0x1

    .line 515
    invoke-virtual {p1, p4}, Lcom/miui/home/launcher/ItemIcon;->setDockViewMode(Z)V

    .line 516
    instance-of v0, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 519
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

    .line 524
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 525
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

    .line 531
    :goto_1
    iget-boolean p2, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    xor-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    .line 532
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/HotSeats;->addView(Landroid/view/View;I)V

    .line 533
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

    .line 647
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 648
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 649
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_0

    .line 650
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

    .line 215
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getScreenLayoutX(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getUniformLayoutModeCurrentGap()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 216
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleScreenCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getSeatWidth(I)I

    move-result v1

    div-int/2addr p1, v1

    add-int/lit8 p2, p2, -0x1

    .line 215
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getSeatWidth(I)I
    .locals 3

    .line 204
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildScreenMeasureWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getUniformLayoutModeMaxGap()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    .line 208
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

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    .line 172
    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private getWorkingWidth()I
    .locals 2

    .line 200
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

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/HotSeats;->getSeatPosByX(II)I

    move-result p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
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

    .line 112
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

    .line 161
    iget-boolean p1, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-nez p1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleScreenCount()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 163
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

.method public static synthetic lambda$setupCellBackground$0(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V
    .locals 1

    .line 242
    iget-object p2, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    .line 243
    iget-object p2, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellBackground;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-ne p2, p0, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 245
    iget-object p2, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object p2, p0, Lcom/miui/home/launcher/HotSeats;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeCellBackground()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 265
    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    return-void
.end method

.method private saveSeats()V
    .locals 12

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 89
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/miui/home/launcher/ItemInfo;

    .line 92
    iput v2, v11, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const-wide/16 v4, -0x65

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x0

    move-object v3, v11

    move v9, v2

    .line 93
    invoke-static/range {v3 .. v10}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Launcher.HotSeats"

    .line 95
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

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private setChildVisible(II)V
    .locals 1

    .line 285
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setReplacedViewVisible()V
    .locals 3

    .line 269
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 270
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/HotSeats;->setChildVisible(II)V

    .line 271
    iput v1, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    :cond_0
    return-void
.end method

.method private setSeats(Lcom/miui/home/launcher/DragObject;)I
    .locals 4

    .line 332
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleScreenCount()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 334
    iput v2, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    goto :goto_2

    .line 336
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 337
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/HotSeats;->getSeatPosByX(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    .line 338
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    .line 339
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

    .line 343
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getSeatWidth(I)I

    move-result v0

    .line 344
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

    .line 345
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getUniformLayoutModeCurrentGap()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    .line 346
    iget p1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    .line 347
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 348
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

.method private setupCellBackground(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/miui/home/launcher/CellBackground;

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->needOutline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 241
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$YN0Lw49RS2A8GMSDS6xY4gj20z8;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$HotSeats$YN0Lw49RS2A8GMSDS6xY4gj20z8;-><init>(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/DragObject;)V

    .line 250
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p1

    const/4 v1, 0x0

    .line 241
    invoke-static {v1, v0, v1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 252
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 253
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 108
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

    .line 167
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->canAcceptByHotSeats()Z

    move-result p1

    return p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 591
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 594
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

    .line 685
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 686
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->allowLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 692
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " HotSeats Items:\n"

    .line 705
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public finishLoading()V
    .locals 3

    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 577
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 578
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 579
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setEnableAutoLayoutAnimation(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 581
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

    .line 701
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10006b

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

    .line 563
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 564
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 565
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemMoveDescription(I)Ljava/lang/String;
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const p1, 0x7f100073

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSeatsFull()Z
    .locals 2

    .line 71
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

.method protected onAttachedToWindow()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onAttachedToWindow()V

    .line 121
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onDetachedFromWindow()V

    .line 129
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 615
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 616
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 617
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p1, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    :cond_0
    const/4 p1, 0x0

    .line 620
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 257
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setupCellBackground(Lcom/miui/home/launcher/DragObject;)V

    .line 258
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 259
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/HotSeats;->addView(Landroid/view/View;I)V

    .line 260
    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 281
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 290
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setSeats(Lcom/miui/home/launcher/DragObject;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 297
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 302
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 303
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    if-eq v0, v1, :cond_4

    .line 304
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->addView(Landroid/view/View;I)V

    .line 306
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastPlaceHolder:I

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    .line 310
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 315
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    if-eq v0, v1, :cond_4

    .line 316
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 317
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setChildVisible(II)V

    .line 318
    iget v0, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    iput v0, p0, Lcom/miui/home/launcher/HotSeats;->mLastReplacedPos:I

    .line 319
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getItemMoveDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 14

    .line 376
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 380
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->setSeats(Lcom/miui/home/launcher/DragObject;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 385
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->setReplacedViewVisible()V

    .line 387
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

    .line 389
    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 391
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 389
    invoke-static {v3, v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    .line 395
    iget v2, p0, Lcom/miui/home/launcher/HotSeats;->mInsertPos:I

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_2

    .line 397
    :cond_3
    iget v2, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 398
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/HotSeats;->removeView(Landroid/view/View;)V

    if-eqz v2, :cond_5

    .line 401
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

    .line 405
    iget-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v10, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_6

    .line 406
    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ItemIcon;->setSkipNextAutoLayoutAnimation(Z)V

    .line 407
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ItemIcon;->setDockViewMode(Z)V

    .line 409
    :cond_6
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v2, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 410
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v2, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 411
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v2, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 412
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v2, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 413
    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v7, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 414
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    iget-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v10, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v12, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v13, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static/range {v6 .. v13}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 418
    :cond_7
    iget v1, p0, Lcom/miui/home/launcher/HotSeats;->mReplacedPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    .line 420
    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 421
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_8

    .line 422
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 424
    :cond_8
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    .line 425
    iput-object v5, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 426
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 427
    instance-of p1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_9

    .line 428
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_9
    return v4
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 625
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->removeCellBackground()V

    .line 626
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZ)Lcom/miui/home/launcher/ItemIcon;

    .line 627
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 628
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 629
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

    .line 76
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onFinishInflate()V

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    const v1, 0x7f080184

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellWidthGap()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->setUniformLayoutModeMaxGap(I)Z

    .line 194
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ScreenView;->onLayout(ZIIII)V

    .line 195
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    invoke-virtual {p1, p0, p2, v2}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[IZ)F

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 451
    iget-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    return v1

    .line 459
    :cond_1
    instance-of v2, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 460
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-eqz v0, :cond_2

    return v1

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isQuickCallScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 482
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 483
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_7

    return v1

    .line 487
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 488
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 489
    iput-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return v3

    .line 493
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 494
    iput-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    :cond_9
    return v3
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 183
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 184
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->requestLauncherIconLayout(Landroid/view/View;)V

    .line 140
    instance-of v1, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->requestPreviewLayout()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 696
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->requestLayout()V

    return-void
.end method

.method protected onVerticalFling(IFF)V
    .locals 2

    .line 680
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

    .line 675
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 599
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewAdded(Landroid/view/View;)V

    .line 600
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 607
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onViewRemoved(Landroid/view/View;)V

    .line 608
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 586
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public performDropFinishAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public pushItem(Lcom/miui/home/launcher/ItemInfo;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public pushItem(Lcom/miui/home/launcher/ItemInfo;IZZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 506
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 507
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/HotSeats;->addItemIcon(Lcom/miui/home/launcher/ItemIcon;IZZ)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I
    .locals 1

    .line 538
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 539
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
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 546
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getScreen(I)Landroid/view/View;

    move-result-object v2

    .line 547
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 548
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 549
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    iget-wide v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 550
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/HotSeats;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 553
    :cond_1
    instance-of v2, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_2

    .line 554
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

.method requestLauncherIconLayout(Landroid/view/View;)V
    .locals 2

    .line 148
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 152
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 153
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HotSeats;->requestLauncherIconLayout(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setDropAnimating(Z)V
    .locals 0

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 639
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->disableNextAutoLayoutAnimation()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLaucher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 571
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->removeAllViews()V

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ MaxCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsLoading = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " VisibleScreenCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleScreenCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 715
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 716
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{ tag "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childWidth  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childHeight  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childTranslationX  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childTranslationY  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childX  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childY  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childAlpha  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childVisibility  = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    instance-of v3, v2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v3, :cond_0

    .line 728
    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " imageViewAlpha = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " imageViewVisibility = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " drawableAlpha = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " drawableVisibility = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " } \n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 741
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
