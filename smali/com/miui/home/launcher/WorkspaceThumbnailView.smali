.class public Lcom/miui/home/launcher/WorkspaceThumbnailView;
.super Lcom/miui/home/launcher/EditModeThumbnailView;
.source "WorkspaceThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mBlockNextSnap:Z

.field private mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mCoords:[F

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggedUpPos:I

.field private mDraggingView:Landroid/view/View;

.field private mFixedGap:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsDraging:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPlaceHolderIndex:I

.field private mRect:Landroid/graphics/Rect;

.field private mScreenIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShow:Z

.field private mThumbnailHeight:I

.field private mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

.field private mThumbnailNumInOneScreen:I

.field private mThumbnailWidth:I

.field private mVisibleStyle:Lmiuix/animation/IVisibleStyle;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/EditModeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 61
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    .line 62
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    .line 64
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    const/4 p2, 0x0

    .line 69
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    .line 70
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    .line 71
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    .line 193
    new-instance p3, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 269
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    const/4 p3, 0x2

    .line 270
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    .line 440
    iput-boolean p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 456
    new-instance p3, Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-direct {p3}, Lcom/miui/home/launcher/ThumbnailHeightController;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    .line 486
    iput-boolean p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    const-string p3, "layout_inflater"

    .line 99
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    new-instance p3, Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 p3, 0x26

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    const/16 p1, 0xa

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScreenTransitionType(I)I

    .line 103
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScrollWholeScreen(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700b4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    .line 105
    iget p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setFixedGap(I)V

    .line 106
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 107
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$KlEkZz8pwWcLFfc2AuCwYclPADM;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$KlEkZz8pwWcLFfc2AuCwYclPADM;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    const/4 p1, 0x7

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScreenLayoutMode(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 109
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setOverScrollRatio(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method private getFolme()Lmiuix/animation/IVisibleStyle;
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 511
    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    .line 512
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    const-wide/16 v2, 0x64

    .line 513
    invoke-interface {v0, v2, v3}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    .line 516
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IVisibleStyle;->setMove(II)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const v1, 0xf42a4

    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 517
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHeight()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v3

    sub-int/2addr v2, v3

    const v3, 0xf4240

    invoke-interface {v0, v1, v2, v3, v3}, Lmiuix/animation/IVisibleStyle;->setBound(IIII)Lmiuix/animation/IVisibleStyle;

    .line 518
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    return-object v0
.end method

.method private getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;
    .locals 3

    .line 359
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ThumbnailContainer;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ThumbnailContainer;

    return-object p1

    :cond_1
    return-object v2
.end method

.method private getTouchedChildIndex(II)I
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenIndexByPoint(II)I

    move-result p1

    return p1
.end method

.method private insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    .line 159
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0116

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 161
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v3, 0x7f0a0221

    .line 163
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ThumbnailContainer;

    .line 164
    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 167
    new-array v4, v6, [Landroid/view/View;

    aput-object v0, v4, v5

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v4

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v4, v3, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 169
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ThumbnailContainer;->setTag(Ljava/lang/Object;)V

    .line 171
    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setCellLayoutThumbnail(Lcom/miui/home/launcher/CellScreen;IILandroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10010e

    new-array v2, v6, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    iget-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setAlpha(Z)V

    .line 178
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method private refreshScreenIdMap()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 293
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public blockSnap()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    return v0
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x6e

    return-wide v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 11

    .line 274
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 278
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v3

    .line 279
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    const/4 v5, 0x1

    invoke-static {v3, p0, v4, v5, v0}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v4

    .line 281
    iget-object v6, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    aget v8, v7, v0

    float-to-int v8, v8

    aget v9, v7, v5

    float-to-int v9, v9

    aget v7, v7, v0

    .line 282
    invoke-virtual {v3}, Lcom/miui/home/launcher/ThumbnailContainer;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v7, v10

    float-to-int v7, v7

    iget-object v10, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    aget v5, v10, v5

    .line 283
    invoke-virtual {v3}, Lcom/miui/home/launcher/ThumbnailContainer;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v5, v10

    float-to-int v4, v5

    .line 281
    invoke-virtual {v6, v8, v9, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    iget v5, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenSnapDuration()I
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenSnapDuration()I

    move-result v0

    return v0
.end method

.method public getScrollZone()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScrollZone()I

    move-result v0

    return v0
.end method

.method protected getSnapDuration(II)I
    .locals 0

    const/16 p1, 0xfa

    return p1
.end method

.method public hide()V
    .locals 1

    .line 464
    invoke-super {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide()V

    .line 465
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackUsingMultiSelect()V

    .line 466
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public hideWithFolmeAnim()V
    .locals 6

    .line 498
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 499
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 500
    invoke-virtual {v3, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 506
    iput-boolean v5, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return-void
.end method

.method public invalidateThumbnails()V
    .locals 3

    const/4 v0, 0x0

    .line 386
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 387
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ThumbnailContainer;->setForceRebuildCache(Z)V

    .line 389
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ThumbnailContainer;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return v0
.end method

.method protected isSpringOverScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadThumbnails(Z)V
    .locals 7

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_0

    .line 142
    instance-of v4, v3, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v3, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 534
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 435
    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 436
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine()V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 254
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getTouchedChildIndex(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 255
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    if-eq p1, v0, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeView(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    .line 260
    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    :cond_0
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    .line 229
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    if-eq v0, v1, :cond_1

    .line 230
    iput-boolean v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 231
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v1, v0}, Lcom/miui/home/launcher/Workspace;->changeTargetScreenOrder(II)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 233
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->refreshScreenIdMap()V

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    return v2
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeView(Landroid/view/View;)V

    .line 328
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 329
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 p1, -0x1

    .line 330
    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

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

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 303
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 308
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 309
    iput-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    .line 310
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    .line 311
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    .line 312
    iget p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    return v2

    .line 316
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 114
    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailHeightController;->makeMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onMeasure(II)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    add-int/2addr p2, v0

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScreenScrollRange(II)V

    goto :goto_0

    .line 119
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScreenScrollRange(II)V

    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DragMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 523
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DragMessage;->isDragging()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    const/4 p1, 0x0

    .line 524
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 525
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget-boolean v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ThumbnailContainer;->setAlpha(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeightController:Lcom/miui/home/launcher/ThumbnailHeightController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailHeightController;->onScreenSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 448
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public prepareToShow()V
    .locals 1

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 474
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setCurrentScreen(I)V

    .line 475
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->scrollToScreen(I)V

    .line 476
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeAllScreens()V
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeAllViews()V

    return-void
.end method

.method public scrollDragingRight()V
    .locals 3

    .line 374
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleRange:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 376
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCurrentScreenIndex:I

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleRange:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    goto :goto_0

    .line 379
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mNextScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleRange:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 380
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mNextScreenIndex:I

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleRange:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setResource(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method public showWithFolmeAnim()V
    .locals 2

    .line 489
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 490
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 492
    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 5

    .line 395
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->cancelScroll()V

    neg-int p1, p1

    .line 396
    div-int/lit16 p2, p1, 0x3e8

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    mul-int/2addr p2, v0

    .line 397
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getSnapBound()[I

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    .line 399
    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    add-int/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, v1

    add-int v0, v1, p2

    .line 401
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenIndexByPoint(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mNextScreenIndex:I

    .line 402
    invoke-virtual {p0, v1, p2, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->startScroll(III)V

    .line 403
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidate()V

    return-void
.end method

.method public snapToScreen(I)I
    .locals 4

    .line 418
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 421
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 422
    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->snapToScreen(I)I

    move-result p1

    return p1

    .line 423
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 424
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->snapToScreen(I)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public updateborderLine()V
    .locals 1

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    return-void
.end method

.method public updateborderLine(Z)V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 345
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 346
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 348
    invoke-virtual {v3}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    if-ne v4, v0, :cond_0

    const/4 v4, 0x1

    .line 349
    invoke-virtual {v3, v4, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(ZZ)V

    goto :goto_1

    .line 351
    :cond_0
    invoke-virtual {v3, v1, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(ZZ)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidate()V

    return-void
.end method
