.class public Lcom/miui/home/launcher/widget/WidgetThumbnailView;
.super Landroid/mysupport/v7/widget/RecyclerView;
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

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/mysupport/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    .line 75
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    const/4 p2, 0x0

    .line 157
    iput p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 66
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070241

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLineHeight:F

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701a4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mWidgetThumbnailShadowLinePadding:F

    .line 72
    new-instance p1, Landroid/mysupport/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/mysupport/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setLayoutManager(Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private calculateDividerLineAlpha()I
    .locals 4

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v1, v0

    .line 129
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

    .line 182
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

    .line 135
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 143
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
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

    .line 122
    invoke-super {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->calculateDividerLineAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
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

    .line 78
    instance-of v0, p1, Lcom/miui/home/launcher/widget/WidgetCell;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return v1

    .line 85
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetCell;

    .line 86
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 87
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->onClick(Landroid/view/View;)V

    return v1

    .line 91
    :cond_2
    iget-object p1, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 95
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 96
    iget-object v3, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 97
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCoordinatesTemp:[I

    aget v4, v3, v1

    const/4 v13, 0x1

    .line 98
    aget v3, v3, v13

    .line 99
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 100
    iget-object v0, v0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 101
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 102
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 101
    invoke-virtual {p1, v1, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v0, v4

    .line 103
    iget v4, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    float-to-int v7, v0

    int-to-float v0, v3

    .line 104
    iget v3, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    float-to-int v8, v0

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    new-instance v3, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 114
    iget-object v3, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v11, 0x2

    move-object v4, p1

    move-object v10, p0

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z

    .line 116
    invoke-virtual {p1, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return v13
.end method

.method public releaseMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAdapter(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getRecycledViewPool()Landroid/mysupport/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .line 180
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAdapter(Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    .line 182
    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$tOqg4H2OTzL7b0jD9mGhvPGcytA;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$tOqg4H2OTzL7b0jD9mGhvPGcytA;-><init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 161
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 162
    iput p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    .line 163
    iget p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mCameraDistanceCache:F

    invoke-super {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setScreenType(I)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getAdapter()Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->getAdapter()Landroid/mysupport/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->setScreenType(I)V

    :cond_0
    return-void
.end method
