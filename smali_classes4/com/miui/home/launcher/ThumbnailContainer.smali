.class public Lcom/miui/home/launcher/ThumbnailContainer;
.super Landroid/widget/ImageView;
.source "ThumbnailContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;


# instance fields
.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mCellScreen:Lcom/miui/home/launcher/CellScreen;

.field private mForceRebuildCache:Z

.field private mIsDropFromOtherScreen:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoc:[F

.field private mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

.field private mScaleX:F

.field private mScaleY:F

.field private mSnapWorkspace:Ljava/lang/Runnable;

.field private mThumbnailContainerBorder:Lcom/miui/home/launcher/ThumbnailContainerBorder;

.field private mTranslateX:F

.field private mTranslateY:F

.field private mValidContentHeight:F

.field private mValidContentWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    .line 289
    new-instance p1, Lcom/miui/home/launcher/ThumbnailContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ThumbnailContainer$3;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    .line 289
    new-instance p1, Lcom/miui/home/launcher/ThumbnailContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ThumbnailContainer$3;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    .line 289
    new-instance p1, Lcom/miui/home/launcher/ThumbnailContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ThumbnailContainer$3;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ThumbnailContainer;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ThumbnailContainer;)Lcom/miui/home/launcher/CellScreen;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    return-object p0
.end method

.method private checkIsDropFromOtherScreen(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mIsDropFromOtherScreen:Z

    .line 143
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 144
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, -0x64

    iget-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mIsDropFromOtherScreen:Z

    :cond_2
    return-void
.end method

.method private getDropTargetLoc(IILcom/miui/home/launcher/ItemInfo;)[F
    .locals 7

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    new-instance v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v6}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 160
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    const/4 p3, 0x1

    .line 159
    invoke-static {p0, p1, p2, p3, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 163
    iget p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleX()F

    move-result v0

    mul-float/2addr p2, v0

    .line 164
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    .line 165
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateX:F

    add-float/2addr v1, v3

    iget v3, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iget-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 166
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getScaleX()F

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p2, v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    mul-float/2addr p2, v5

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellScreen;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr p2, v5

    add-float/2addr v1, p2

    aput v1, p1, v2

    .line 167
    iget-object p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLoc:[F

    aget p2, p2, p3

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateY:F

    add-float/2addr p2, v1

    iget v1, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr p2, v1

    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 168
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleY()F

    move-result v0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    mul-float/2addr v3, v0

    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v3, p0

    add-float/2addr p2, v3

    aput p2, p1, p3

    return-object p1
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public buildDrawingCache(Z)V
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainer;->disableBuildCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    return-void
.end method

.method public disableBuildCache()Z
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p0

    return p0
.end method

.method public getContent()Lcom/miui/home/launcher/CellScreen;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 0

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnDragOverScreen(Z)V

    .line 258
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/ThumbnailContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 262
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_1

    .line 263
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearOthersToasted()V

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 271
    new-instance v1, Lcom/miui/home/launcher/ThumbnailContainer$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/ThumbnailContainer$2;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;I)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 279
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnough()V

    goto :goto_2

    .line 281
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHold(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 301
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setOnDragOverScreen(Z)V

    .line 302
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mSnapWorkspace:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 303
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateX:F

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setIsDrawingInThumbnailView(Z)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getPivotX()F

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getPivotY()F

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 97
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 98
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->draw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setIsDrawingInThumbnailView(Z)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 9

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getRemainedDraggingSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->checkIsDropFromOtherScreen(Lcom/miui/home/launcher/DragObject;)V

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mIsDropFromOtherScreen:Z

    if-nez v0, :cond_2

    return v2

    .line 186
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 188
    iput v2, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    .line 189
    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v3

    if-nez v3, :cond_3

    return v2

    .line 193
    :cond_3
    aget v4, v3, v2

    iput v4, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v4, 0x1

    .line 194
    aget v5, v3, v4

    iput v5, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 195
    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 196
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 197
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 198
    iget v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    iget-object v6, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/miui/home/launcher/CellLayout;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 199
    invoke-virtual {v0, v2, v2}, Lcom/miui/home/launcher/DragView;->setDragVisualizeOffset(II)V

    const/4 v5, 0x0

    .line 200
    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/DragView;->setPivotY(F)V

    .line 201
    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 202
    aget v5, v3, v2

    aget v3, v3, v4

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    invoke-direct {p0, v5, v3, v6}, Lcom/miui/home/launcher/ThumbnailContainer;->getDropTargetLoc(IILcom/miui/home/launcher/ItemInfo;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragView;->updateAnimateTarget([F)V

    .line 204
    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v3, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v5, 0x12

    if-eq v3, v5, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v3, v4, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v5, 0xe

    if-eq v3, v5, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v5, 0xb

    if-eq v3, v5, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-eq v3, v5, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v5, 0x13

    if-eq v3, v5, :cond_4

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    iget-wide v5, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_c

    .line 215
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v3

    .line 216
    instance-of v5, v1, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 217
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1, v6, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 218
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v3, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v3

    goto :goto_0

    .line 219
    :cond_5
    instance-of v5, v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v5, :cond_6

    .line 220
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v6}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v3, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v3

    goto :goto_0

    .line 222
    :cond_6
    instance-of v5, v1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v5, :cond_7

    .line 223
    move-object p1, v1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 224
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v5

    invoke-direct {v3, v5, p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 225
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1, v3, v5}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    .line 226
    iget-object v3, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    goto :goto_0

    .line 227
    :cond_7
    instance-of v5, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v5, :cond_9

    .line 228
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    if-eq p1, v3, :cond_8

    .line 229
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1, v3, v5}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    .line 231
    :cond_8
    move-object p1, v1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    goto :goto_0

    .line 232
    :cond_9
    instance-of v5, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v5, :cond_b

    .line 233
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    if-eq p1, v3, :cond_a

    .line 234
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p1, v3, v4, v6}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    .line 236
    :cond_a
    move-object p1, v1

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 238
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/CellLayout;->onDropFormThumbnail(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 239
    new-instance p1, Lcom/miui/home/launcher/ThumbnailContainer$1;

    invoke-direct {p1, p0, v1}, Lcom/miui/home/launcher/ThumbnailContainer$1;-><init>(Lcom/miui/home/launcher/ThumbnailContainer;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return v4

    :cond_c
    return v2
.end method

.method public onDropCompleted()V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->onDropCompleted()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ThumbnailContainer;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(Z)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    const-wide/16 v1, 0xc8

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainer;->getAlpha()F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainer;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCellLayoutThumbnail(Lcom/miui/home/launcher/CellScreen;IILandroid/view/View;)V
    .locals 8

    .line 61
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    .line 62
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    int-to-float p2, p2

    .line 63
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    div-float v0, p2, v0

    int-to-float p3, p3

    .line 64
    iget v1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    div-float v1, p3, v1

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v0, v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 69
    iget p3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentWidth:F

    mul-float/2addr p3, v4

    sub-float/2addr p2, p3

    div-float/2addr p2, v1

    move v5, p2

    move v6, v2

    goto :goto_0

    .line 71
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mValidContentHeight:F

    mul-float/2addr p2, v4

    sub-float/2addr p3, p2

    div-float/2addr p3, v1

    move v6, p3

    move v5, v2

    .line 73
    :goto_0
    move-object v7, p4

    check-cast v7, Lcom/miui/home/launcher/ThumbnailContainerBorder;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/ThumbnailContainer;->setContent(Lcom/miui/home/launcher/CellScreen;FFFLcom/miui/home/launcher/ThumbnailContainerBorder;)V

    return-void
.end method

.method public setContent(Lcom/miui/home/launcher/CellScreen;FFFLcom/miui/home/launcher/ThumbnailContainerBorder;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellScreen:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 79
    iput p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleX:F

    .line 80
    iput p2, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mScaleY:F

    .line 81
    iput p3, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateX:F

    .line 82
    iput p4, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mTranslateY:F

    .line 83
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 84
    iput-object p5, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mThumbnailContainerBorder:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    return-void
.end method

.method public setForceRebuildCache(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mForceRebuildCache:Z

    return-void
.end method

.method public setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;)V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainer;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public setIsDraging(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 110
    sget-object p1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/home/launcher/anim/BackgroundType;->NOT_DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public setOnDragOverScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    sget-object p1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    return-void
.end method

.method public updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mThumbnailContainerBorder:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->updateBackgroundType(Lcom/miui/home/launcher/anim/BackgroundType;Z)V

    .line 127
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer;->mPreBgType:Lcom/miui/home/launcher/anim/BackgroundType;

    return-void
.end method
