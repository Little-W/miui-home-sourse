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


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;
    }
.end annotation


# instance fields
.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mBlockNextSnap:Z

.field private mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mCoords:[F

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggedUpPos:I

.field private mDraggingView:Landroid/view/View;

.field private final mEditModeAnimConfig:Lmiuix/animation/base/AnimConfig;

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

.field private mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

.field private mThumbnailNumInOneScreen:I

.field private mThumbnailWidth:I

.field private mVisibleStyle:Lmiuix/animation/IVisibleStyle;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/EditModeThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 66
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    .line 67
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    .line 69
    new-instance p2, Landroid/util/LongSparseArray;

    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    .line 75
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    .line 76
    iput p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    .line 84
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-virtual {p3, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mEditModeAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 199
    new-instance p3, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 305
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    new-array p3, v0, [F

    .line 306
    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    .line 482
    iput-boolean p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 499
    new-instance p3, Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-direct {p3}, Lcom/miui/home/launcher/ThumbnailMeasureController;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    .line 527
    iput-boolean p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    const-string p3, "layout_inflater"

    .line 105
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    new-instance p3, Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 107
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/16 p3, 0x26

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    const/16 p1, 0xa

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScreenTransitionType(I)I

    .line 109
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScrollWholeScreen(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070153

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    .line 111
    iget p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setFixedGap(I)V

    .line 112
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$KlEkZz8pwWcLFfc2AuCwYclPADM;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$KlEkZz8pwWcLFfc2AuCwYclPADM;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    const/4 p1, 0x7

    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setScreenLayoutMode(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setOverScrollRatio(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/WorkspaceThumbnailView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->switchScreen()V

    return-void
.end method

.method private getFolme()Lmiuix/animation/IVisibleStyle;
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v1

    .line 561
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    const-wide/16 v2, 0x64

    .line 563
    invoke-interface {v0, v2, v3}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    .line 566
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IVisibleStyle;->setMove(II)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const v1, 0xf42a4

    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 567
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHeight()I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorThumbnailHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const v3, 0xf4240

    invoke-interface {v0, v1, v2, v3, v3}, Lmiuix/animation/IVisibleStyle;->setBound(IIII)Lmiuix/animation/IVisibleStyle;

    .line 568
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleStyle:Lmiuix/animation/IVisibleStyle;

    return-object p0
.end method

.method private getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;
    .locals 3

    .line 399
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ThumbnailContainer;

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ThumbnailContainer;

    return-object p0

    :cond_1
    return-object v2
.end method

.method private getTouchedChildIndex(II)I
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenIndexByPoint(II)I

    move-result p0

    return p0
.end method

.method private handleIndicatorMarginBottomOnFold()V
    .locals 1

    .line 554
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setIndicatorMarginBottomInEditThumbnailMode(Z)V

    :cond_0
    return-void
.end method

.method private insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    .line 165
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0194

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 167
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v3, 0x7f0a038a

    .line 169
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ThumbnailContainer;

    .line 170
    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    new-array v4, v6, [Landroid/view/View;

    aput-object v0, v4, v5

    .line 173
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v4

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v4, v3, v7}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 175
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ThumbnailContainer;->setTag(Ljava/lang/Object;)V

    .line 177
    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    invoke-virtual {v3, p1, v1, v2, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setCellLayoutThumbnail(Lcom/miui/home/launcher/CellScreen;IILandroid/view/View;)V

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110149

    new-array v2, v6, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    iget-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setAlpha(Z)V

    .line 184
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method private refreshScreenIdMap()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 195
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

.method private switchScreen()V
    .locals 3

    .line 268
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    .line 269
    iput-boolean v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 270
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1, v0}, Lcom/miui/home/launcher/Workspace;->changeTargetScreenOrder(II)V

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->refreshScreenIdMap()V

    :cond_0
    return-void
.end method

.method private switchScreenWithFoldAnim()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    new-instance v2, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 329
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public blockSnap()Z
    .locals 0

    .line 485
    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    return p0
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x6e

    return-wide v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 11

    .line 310
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

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 314
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v3

    .line 315
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    const/4 v5, 0x1

    invoke-static {v3, p0, v4, v5, v0}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v4

    .line 317
    iget-object v6, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    aget v8, v7, v0

    float-to-int v8, v8

    aget v9, v7, v5

    float-to-int v9, v9

    aget v7, v7, v0

    .line 318
    invoke-virtual {v3}, Lcom/miui/home/launcher/ThumbnailContainer;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v7, v10

    float-to-int v7, v7

    iget-object v10, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCoords:[F

    aget v5, v10, v5

    .line 319
    invoke-virtual {v3}, Lcom/miui/home/launcher/ThumbnailContainer;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v5, v10

    float-to-int v4, v5

    .line 317
    invoke-virtual {v6, v8, v9, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
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
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getScreenSnapDuration()I
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenSnapDuration()I

    move-result p0

    return p0
.end method

.method public getScrollZone()I
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollZone()I

    move-result p0

    return p0
.end method

.method protected getSnapDuration(II)I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public hide()V
    .locals 0

    .line 507
    invoke-super {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide()V

    .line 508
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackUsingMultiSelect()V

    .line 509
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->unregisterEventBus()V

    return-void
.end method

.method public hideWithFolmeAnim()V
    .locals 6

    .line 541
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 542
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/home/launcher/WorkspaceThumbnailView$3;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$3;-><init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 543
    invoke-virtual {v3, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 549
    iput-boolean v5, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    .line 550
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->handleIndicatorMarginBottomOnFold()V

    return-void
.end method

.method public invalidateThumbnails()V
    .locals 3

    const/4 v0, 0x0

    .line 426
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 427
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 428
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ThumbnailContainer;->setForceRebuildCache(Z)V

    .line 429
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

    .line 223
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    return p0
.end method

.method protected isSpringOverScroll()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadThumbnails(Z)V
    .locals 7

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailHeight:I

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeAllViews()V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_0

    .line 148
    instance-of v4, v3, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v4, :cond_0

    .line 149
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 151
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

    .line 153
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 598
    invoke-super {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->onDetachedFromWindow()V

    .line 599
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->unregisterEventBus()V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 584
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenOrientationChanged(Landroid/view/View;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 475
    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mBlockNextSnap:Z

    .line 476
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 477
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 478
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    :cond_0
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

    .line 290
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getTouchedChildIndex(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 291
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    if-eq p1, v0, :cond_0

    .line 292
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    .line 296
    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    :cond_0
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    .line 237
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->switchScreenWithFoldAnim()V

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->switchScreen()V

    .line 242
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    return v2
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeView(Landroid/view/View;)V

    .line 368
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 369
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 p1, -0x1

    .line 370
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

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 337
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 339
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 344
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, p0, v1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->startFoldEditDragingAnim()V

    .line 347
    invoke-virtual {p0, v3, v3, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(ZZLcom/miui/home/launcher/ThumbnailContainer;)V

    .line 349
    :cond_2
    iput-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggingView:Landroid/view/View;

    .line 350
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    .line 351
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

    .line 352
    iget p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mPlaceHolderIndex:I

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDraggedUpPos:I

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->addView(Landroid/view/View;I)V

    return v3

    .line 356
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    :cond_4
    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeWidthMeasureSpec()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;->makeWorkspaceHeightMeasureSpec()I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onMeasure(II)V

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mFixedGap:I

    add-int/2addr p2, v0

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
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

    .line 125
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

    .line 573
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DragMessage;->isDragging()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mIsDraging:Z

    const/4 p1, 0x0

    .line 574
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 575
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
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

    .line 502
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailMeasureController:Lcom/miui/home/launcher/ThumbnailMeasureController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ThumbnailMeasureController;->onScreenSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 610
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/EditModeThumbnailView;->onSizeChanged(IIII)V

    .line 611
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-boolean p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Workspace;->setIndicatorMarginBottomInEditThumbnailMode(Z)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 616
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/EditModeThumbnailView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 617
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-nez p1, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 490
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 491
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidateThumbnails()V

    return-void
.end method

.method public prepareToShow()V
    .locals 1

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 515
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setCurrentScreen(I)V

    .line 516
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->scrollToScreen(I)V

    .line 517
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeAllScreens()V
    .locals 0

    .line 524
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->removeAllViews()V

    return-void
.end method

.method public scrollDragingRight()V
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleRange:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 416
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCurrentScreenIndex:I

    iget v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleRange:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    goto :goto_0

    .line 419
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mNextScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mVisibleRange:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 420
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

    .line 134
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setResource(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method public showWithFolmeAnim()V
    .locals 5

    .line 531
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->cancel()V

    .line 532
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getFolme()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    .line 533
    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mEditModeAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 534
    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 535
    iput-boolean v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mShow:Z

    .line 536
    invoke-direct {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->handleIndicatorMarginBottomOnFold()V

    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 5

    .line 435
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->cancelScroll()V

    neg-int p1, p1

    .line 436
    div-int/lit16 p2, p1, 0x3e8

    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    mul-int/2addr p2, v0

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getSnapBound()[I

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    .line 439
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

    .line 441
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenIndexByPoint(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mNextScreenIndex:I

    .line 442
    invoke-virtual {p0, v1, p2, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->startScroll(III)V

    .line 443
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidate()V

    return-void
.end method

.method public snapToScreen(I)I
    .locals 4

    .line 458
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 461
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

    .line 462
    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->snapToScreen(I)I

    move-result p0

    return p0

    .line 463
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

    .line 464
    iget v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailNumInOneScreen:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->snapToScreen(I)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public unregisterEventBus()V
    .locals 1

    .line 603
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateborderLine(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(ZZLcom/miui/home/launcher/ThumbnailContainer;)V

    return-void
.end method

.method public updateborderLine(ZZLcom/miui/home/launcher/ThumbnailContainer;)V
    .locals 5

    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 385
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreenCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 386
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getThumbnailContainer(I)Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_1

    if-ne v3, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 389
    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsDraging(Z)V

    goto :goto_3

    :cond_1
    if-lt v2, v0, :cond_2

    .line 391
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v4

    add-int/2addr v4, v0

    if-ge v2, v4, :cond_2

    sget-object v4, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    :goto_2
    invoke-virtual {v3, v4, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidate()V

    return-void
.end method
