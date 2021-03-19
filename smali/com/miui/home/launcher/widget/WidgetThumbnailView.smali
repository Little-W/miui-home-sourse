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

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    .line 77
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    const/4 p2, 0x0

    .line 159
    iput p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07027c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLineHeight:F

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701dc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLinePadding:F

    .line 74
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

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private calculateDividerLineAlpha()I
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v1, v0

    .line 131
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

.method static synthetic lambda$resetAdapter$0(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->initAllItems()V

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

    .line 137
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return-void

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 145
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
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

    .line 124
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->calculateDividerLineAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
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

    .line 80
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return v1

    .line 87
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetCell;

    .line 88
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 89
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->onClick(Landroid/view/View;)V

    return v1

    .line 93
    :cond_2
    iget-object p1, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 98
    iget-object v3, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 99
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    aget v4, v3, v1

    const/4 v13, 0x1

    .line 100
    aget v3, v3, v13

    .line 101
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 102
    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 103
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 104
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 103
    invoke-virtual {p1, v1, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, v4

    .line 105
    iget v4, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    float-to-int v7, v0

    int-to-float v0, v3

    .line 106
    iget v3, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    float-to-int v8, v0

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    new-instance v3, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 116
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v11, 0x2

    move-object v4, p1

    move-object v10, p0

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z

    .line 118
    invoke-virtual {p1, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return v13
.end method

.method public releaseMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .line 182
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$tOqg4H2OTzL7b0jD9mGhvPGcytA;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$tOqg4H2OTzL7b0jD9mGhvPGcytA;-><init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 163
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 164
    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 165
    iget p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setScreenType(I)V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->setScreenType(I)V

    :cond_0
    return-void
.end method
