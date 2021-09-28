.class public Lcom/miui/home/launcher/widget/WidgetThumbnailView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "WidgetThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;


# instance fields
.field private mCameraDistanceCache:F

.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPaint:Landroid/graphics/Paint;

.field private mWidgetThumbnailShadowLineHeight:F

.field private mWidgetThumbnailShadowLinePadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    .line 79
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    const/4 p2, 0x0

    .line 171
    iput p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 70
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070396

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLineHeight:F

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702ee

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLinePadding:F

    .line 76
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private calculateDividerLineAlpha()I
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v1, v0

    .line 138
    iget v2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLinePadding:F

    cmpg-float v1, v1, v2

    const/16 v3, 0x1a

    if-gez v1, :cond_0

    mul-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v3, v0

    :cond_0
    return v3
.end method

.method public static synthetic lambda$resetAdapter$0(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic lambda$resetAdapter$1(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 1

    .line 196
    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->initAllItems()V

    .line 197
    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$NMb1XEKFK-ONgxPj0FGAi-gj450;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$NMb1XEKFK-ONgxPj0FGAi-gj450;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 144
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 152
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 153
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_2

    .line 154
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v2, -0x1

    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->tip_source:I

    const/16 v2, 0x3e8

    .line 155
    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 157
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 131
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->calculateDividerLineAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLineHeight:F

    iget-object v6, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14

    .line 82
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return v1

    .line 89
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetCell;

    .line 90
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 91
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->onClick(Landroid/view/View;)V

    return v1

    .line 95
    :cond_2
    iget-object p1, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 100
    iget-object v3, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 101
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    aget v4, v3, v1

    const/4 v13, 0x1

    .line 102
    aget v3, v3, v13

    .line 103
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 104
    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 105
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 106
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 105
    invoke-virtual {p1, v1, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, v4

    .line 107
    iget v4, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    float-to-int v7, v0

    int-to-float v0, v3

    .line 108
    iget v3, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    float-to-int v8, v0

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    new-instance v3, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 118
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    .line 119
    instance-of v0, v6, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v0, :cond_4

    .line 120
    move-object v0, v6

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->tip_source:I

    const/16 v1, 0x3e9

    .line 121
    iput v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    .line 123
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    move-object v4, p1

    move-object v10, p0

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z

    .line 125
    invoke-virtual {p1, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return v13
.end method

.method public releaseMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .line 194
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    .line 195
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$kjrAwtTaYaZFEFP17pPBjDb4ekw;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$kjrAwtTaYaZFEFP17pPBjDb4ekw;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 176
    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 177
    iget p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setScreenType(I)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->setScreenType(I)V

    :cond_0
    return-void
.end method
