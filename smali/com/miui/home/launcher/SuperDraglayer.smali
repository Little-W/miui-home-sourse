.class public Lcom/miui/home/launcher/SuperDraglayer;
.super Lcom/miui/home/launcher/view/BaseDragLayer;
.source "SuperDraglayer.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;,
        Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/view/BaseDragLayer<",
        "Lcom/miui/home/launcher/Launcher;",
        ">;",
        "Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;"
    }
.end annotation


# instance fields
.field private OffsetUpdater:Ljava/lang/Runnable;

.field private mActiveController:Lcom/miui/home/launcher/util/TouchController;

.field private mClipForDragging:Landroid/graphics/Rect;

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/util/TouchController;",
            ">;"
        }
    .end annotation
.end field

.field private mCoord:[F

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mFolderGridViewRect:Landroid/graphics/RectF;

.field protected final mHitRect:Landroid/graphics/Rect;

.field private mIsIgnoreFeedController:Z

.field private mIsOnScale:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMotionEventCopy:Landroid/view/MotionEvent;

.field private mPdoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/common/ParasiticDrawingObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerCount:I

.field private mReApplyed:Z

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScreenSize:Landroid/graphics/Point;

.field private mSecondPointerId:I

.field protected final mTmpXY:[I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

.field private mWpOffsetX:F

.field private mWpOffsetY:F

.field private mWpStepX:F

.field private mWpStepY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/view/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    .line 81
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepY:F

    .line 82
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    .line 83
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetY:F

    .line 97
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 269
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    const/4 p2, 0x2

    .line 270
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    .line 271
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    .line 485
    new-instance v0, Lcom/miui/home/launcher/SuperDraglayer$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer$2;-><init>(Lcom/miui/home/launcher/SuperDraglayer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->OffsetUpdater:Ljava/lang/Runnable;

    .line 708
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    .line 709
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mHitRect:Landroid/graphics/Rect;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 108
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScreenSize:Landroid/graphics/Point;

    .line 109
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/SuperDraglayer;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SuperDraglayer;)Lcom/miui/home/launcher/util/TouchController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/SuperDraglayer;Lcom/miui/home/launcher/util/TouchController;)Lcom/miui/home/launcher/util/TouchController;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/SuperDraglayer;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsOnScale:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/SuperDraglayer;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPointerCount:I

    return p0
.end method

.method private getXInFolderGridView(Landroid/view/MotionEvent;)F
    .locals 2

    .line 314
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-float/2addr p1, v0

    return p1
.end method

.method private getYInFolderGridView(Landroid/view/MotionEvent;)F
    .locals 2

    .line 319
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-float/2addr p1, v0

    return p1
.end method

.method private handleMotionEventWhenFolderShowing(Landroid/view/MotionEvent;)V
    .locals 11

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-eqz v0, :cond_5

    .line 279
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    .line 285
    iput v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    .line 286
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    const/4 v3, 0x0

    invoke-static {v0, p0, v2, v5, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 288
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    aget v7, v6, v3

    aget v8, v6, v5

    aget v6, v6, v3

    .line 289
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget-object v9, p0, Lcom/miui/home/launcher/SuperDraglayer;->mCoord:[F

    aget v9, v9, v5

    .line 290
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 288
    invoke-virtual {v2, v7, v8, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 292
    iget-object v6, p0, Lcom/miui/home/launcher/SuperDraglayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 293
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    .line 294
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 295
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 296
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 297
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getXInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getYInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 298
    iget-object v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 299
    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    .line 302
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 303
    :cond_3
    iget v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mSecondPointerId:I

    if-eq v3, v4, :cond_5

    .line 305
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 306
    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getXInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->getYInFolderGridView(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 307
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-ne v2, v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v5

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 308
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method private handleMotionEventWhenShortcutMenuShowing(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x7

    new-instance v1, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v2, "click_outside_of_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isIgnoreFeedController(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 372
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    int-to-float p1, v0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$updateWallpaperOffset$0(Lcom/miui/home/launcher/SuperDraglayer;Ljava/lang/ref/WeakReference;)V
    .locals 3

    .line 499
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    iget v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetY:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.DragLayer"

    const-string v1, "updateWallpaperOffset"

    .line 504
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private resetFolderGirdView()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->isIgnoreCancelEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetResizeDragController;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method public attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WidgetResizeDragController;->clearAllResizeFrames()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 558
    invoke-super {p0, p1}, Lcom/miui/home/launcher/view/BaseDragLayer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 559
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 561
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/common/ParasiticDrawingObject;

    .line 563
    invoke-interface {v1, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingObject;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/view/BaseDragLayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 225
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/SuperDraglayer;->requestSwipeControllerDisallowInterceptTouchEventHorizontal(Z)V

    .line 226
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/SuperDraglayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    .line 228
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 229
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    .line 230
    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->setHasShowScreenLockedToast(Z)V

    .line 232
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    .line 237
    invoke-direct {p0}, Lcom/miui/home/launcher/SuperDraglayer;->resetFolderGirdView()V

    .line 239
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->handleMotionEventWhenFolderShowing(Landroid/view/MotionEvent;)V

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 243
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHandleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    :cond_5
    invoke-super {p0, p1}, Lcom/miui/home/launcher/view/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mClipForDragging:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/miui/home/launcher/DragView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 575
    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mClipForDragging:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 577
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/view/BaseDragLayer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p2
.end method

.method protected findActiveController(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;

    invoke-static {v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/AbstractFloatingView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return v2

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/util/TouchController;

    .line 347
    instance-of v4, v3, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz v4, :cond_3

    .line 348
    iget-boolean v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsOnScale:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 351
    :cond_2
    iget-boolean v4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->isIgnoreFeedController(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 355
    :cond_3
    invoke-interface {v3, p1}, Lcom/miui/home/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    iput-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    const-string p1, "Launcher.DragLayer"

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findActiveController, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    instance-of v0, v0, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->cancelHomeFeedContainerArrowAnim(Z)V

    return v2

    :cond_5
    return v1
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 0

    .line 544
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    const/4 p1, 0x0

    return p1
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 0

    .line 752
    invoke-static {p1, p0, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .line 724
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 725
    aput v1, v0, v2

    .line 726
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 728
    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    aget v4, v3, v1

    aget v5, v3, v2

    aget v1, v3, v1

    int-to-float v1, v1

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mTmpXY:[I

    aget v2, v3, v2

    int-to-float v2, v2

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 728
    invoke-virtual {p2, v4, v5, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 388
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/util/TouchController;

    .line 389
    instance-of v2, v1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz v2, :cond_0

    .line 390
    check-cast v1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[IZ)F
    .locals 3

    const/4 v0, 0x2

    .line 414
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    .line 415
    invoke-static {p1, p0, v0, v1, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result p1

    const/4 p3, 0x0

    .line 416
    aget v2, v0, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, p3

    .line 417
    aget p3, v0, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    aput p3, p2, v1

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getWidgetResizeDragController(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/WidgetResizeDragController;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWpOffsetX()F
    .locals 1

    .line 460
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    return v0
.end method

.method public getWpStepX()F
    .locals 1

    .line 456
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    return v0
.end method

.method public highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I
    .locals 9

    .line 585
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    .line 587
    :goto_0
    array-length v4, v1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 588
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 593
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 595
    new-instance v3, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    .line 596
    iput-boolean v4, v3, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->ignoreInsets:Z

    .line 597
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/SuperDraglayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 601
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 602
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 603
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x4

    .line 606
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/ItemIcon;->setVisibility(I)V

    const/4 v3, 0x2

    .line 607
    new-array v3, v3, [I

    .line 608
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/ItemIcon;->getLocationOnScreen([I)V

    .line 609
    new-instance v5, Lcom/miui/home/launcher/SuperDraglayer$3;

    iget-object v6, p0, Lcom/miui/home/launcher/SuperDraglayer;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, p1}, Lcom/miui/home/launcher/SuperDraglayer$3;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/content/Context;Lcom/miui/home/launcher/ItemIcon;)V

    const/4 v6, 0x0

    .line 615
    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 616
    new-instance v6, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;-><init>(II)V

    const/16 v7, 0x33

    .line 617
    iput v7, v6, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->gravity:I

    .line 618
    iput-boolean v4, v6, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->ignoreInsets:Z

    .line 619
    aget v2, v3, v2

    iput v2, v6, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->leftMargin:I

    .line 620
    aget v2, v3, v4

    iput v2, v6, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->topMargin:I

    .line 621
    invoke-virtual {p0, v5, v6}, Lcom/miui/home/launcher/SuperDraglayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 623
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 624
    new-instance v2, Lcom/miui/home/launcher/SuperDraglayer$4;

    invoke-direct {v2, p0, v5}, Lcom/miui/home/launcher/SuperDraglayer$4;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 631
    new-instance v2, Lcom/miui/home/launcher/SuperDraglayer$5;

    invoke-direct {v2, p0, p1, v5, p2}, Lcom/miui/home/launcher/SuperDraglayer$5;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Lcom/miui/home/launcher/ItemIcon;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 638
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 641
    new-instance p1, Lcom/miui/home/launcher/SuperDraglayer$6;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/SuperDraglayer$6;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;)V

    .line 653
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 641
    invoke-virtual {v0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 713
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isStatusBarFollowingTouch()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    instance-of v1, v0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    .line 368
    invoke-virtual {v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->isDispatchingToStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WidgetResizeDragController;->isWidgetBeingResized()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 660
    iget-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mReApplyed:Z

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mReApplyed:Z

    .line 666
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 667
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 668
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 669
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 670
    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 671
    :cond_1
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mInsets:Landroid/graphics/Rect;

    .line 672
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mInsets:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/SuperDraglayer;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 674
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/home/launcher/view/BaseDragLayer;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 758
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->clearAllResizeFrames()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPointerCount:I

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsOnScale:Z

    .line 329
    iput-boolean v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mIsIgnoreFeedController:Z

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 332
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->handleMotionEventWhenShortcutMenuShowing(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 333
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 515
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/view/BaseDragLayer;->onLayout(ZIIII)V

    .line 516
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 518
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/SuperDraglayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 519
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 520
    instance-of p5, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 521
    check-cast p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    .line 522
    iget-boolean p5, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 523
    iget p5, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->x:I

    iget v0, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->y:I

    iget v1, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->x:I

    iget v2, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->y:I

    iget p4, p4, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->height:I

    add-int/2addr v2, p4

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mPointerCount:I

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 404
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/view/BaseDragLayer;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public requestSwipeControllerDisallowInterceptTouchEventHorizontal(Z)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/util/TouchController;

    .line 215
    instance-of v2, v1, Lcom/miui/home/launcher/util/SwipeTouchController;

    if-eqz v2, :cond_0

    .line 216
    check-cast v1, Lcom/miui/home/launcher/util/SwipeTouchController;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/util/SwipeTouchController;->requestDisallowInterceptTouchEventHorizontal(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/util/TouchController;

    .line 207
    instance-of v2, v1, Lcom/miui/home/launcher/util/SwipeTouchController;

    if-eqz v2, :cond_0

    .line 208
    check-cast v1, Lcom/miui/home/launcher/util/SwipeTouchController;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/util/SwipeTouchController;->requestDisallowInterceptTouchEventVertical(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/util/TouchController;

    .line 129
    instance-of v2, v1, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    if-eqz v2, :cond_0

    .line 130
    check-cast v1, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClipForDragging(Landroid/graphics/Rect;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mClipForDragging:Landroid/graphics/Rect;

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setFeedOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/util/TouchController;

    .line 137
    instance-of v2, v1, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    if-eqz v2, :cond_0

    .line 138
    check-cast v1, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 422
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Pe2U0E-xkU-wSqx2RjBZtc26hGI;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Pe2U0E-xkU-wSqx2RjBZtc26hGI;-><init>(Lcom/miui/home/launcher/SuperDraglayer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 426
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->getWidgetResizeDragController(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/WidgetResizeDragController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    .line 427
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :goto_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public updateWallpaperOffset()V
    .locals 3

    .line 493
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertUIThread()V

    .line 494
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    iget v2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepY:F

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SuperDraglayer$OtnL8bIPl9wCPxlhgTRzhJ8vWwA;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$SuperDraglayer$OtnL8bIPl9wCPxlhgTRzhJ8vWwA;-><init>(Lcom/miui/home/launcher/SuperDraglayer;Ljava/lang/ref/WeakReference;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->OffsetUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SuperDraglayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 509
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->OffsetUpdater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/SuperDraglayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public updateWallpaperOffset(FFFF)Z
    .locals 1

    .line 444
    iget v0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    .line 445
    iput p1, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    .line 446
    iput p2, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepY:F

    .line 447
    iput p3, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    .line 448
    iput p4, p0, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetY:F

    .line 449
    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->updateWallpaperOffset()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateWallpaperOffsetAnimate(FFFF)Z
    .locals 13

    move-object v10, p0

    .line 465
    iget v0, v10, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepX:F

    sub-float v3, p1, v0

    .line 466
    iget v0, v10, Lcom/miui/home/launcher/SuperDraglayer;->mWpStepY:F

    sub-float v5, p2, v0

    .line 467
    iget v0, v10, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetX:F

    sub-float v7, p3, v0

    .line 468
    iget v0, v10, Lcom/miui/home/launcher/SuperDraglayer;->mWpOffsetY:F

    sub-float v9, p4, v0

    const/4 v0, 0x0

    cmpl-float v1, v3, v0

    if-eqz v1, :cond_0

    cmpl-float v1, v5, v0

    if-eqz v1, :cond_0

    cmpl-float v1, v7, v0

    if-eqz v1, :cond_0

    cmpl-float v0, v9, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 470
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 471
    new-instance v12, Lcom/miui/home/launcher/SuperDraglayer$1;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/SuperDraglayer$1;-><init>(Lcom/miui/home/launcher/SuperDraglayer;FFFFFFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 478
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
