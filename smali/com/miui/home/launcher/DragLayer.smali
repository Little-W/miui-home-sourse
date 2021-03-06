.class public Lcom/miui/home/launcher/DragLayer;
.super Lcom/miui/home/launcher/InsettableFrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;,
        Lcom/miui/home/launcher/DragLayer$LayoutParams;,
        Lcom/miui/home/launcher/DragLayer$_lancet;
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

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

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

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 77
    iput p2, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    .line 78
    iput p2, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    .line 79
    iput p2, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    .line 80
    iput p2, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetY:F

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/DragLayer;->mPdoList:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 236
    iput p2, p0, Lcom/miui/home/launcher/DragLayer;->mSecondPointerId:I

    const/4 p2, 0x2

    .line 237
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mCoord:[F

    .line 238
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    .line 436
    new-instance v0, Lcom/miui/home/launcher/DragLayer$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragLayer$2;-><init>(Lcom/miui/home/launcher/DragLayer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    .line 659
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/home/launcher/DragLayer;->mTmpXY:[I

    .line 660
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 105
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mScreenSize:Landroid/graphics/Point;

    .line 106
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object p2, p0, Lcom/miui/home/launcher/DragLayer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/DragLayer;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/util/TouchController;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/DragLayer;Lcom/miui/home/launcher/util/TouchController;)Lcom/miui/home/launcher/util/TouchController;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/DragLayer;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragLayer;->mIsOnScale:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragLayer;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/miui/home/launcher/DragLayer;->mPointerCount:I

    return p0
.end method

.method private getXInFolderGridView(Landroid/view/MotionEvent;)F
    .locals 2

    .line 281
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mSecondPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mCoord:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-float/2addr p1, v0

    return p1
.end method

.method private getYInFolderGridView(Landroid/view/MotionEvent;)F
    .locals 2

    .line 286
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mSecondPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mCoord:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-float/2addr p1, v0

    return p1
.end method

.method private handleMotionEventWhenFolderShowing(Landroid/view/MotionEvent;)V
    .locals 11

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    .line 252
    iput v4, p0, Lcom/miui/home/launcher/DragLayer;->mSecondPointerId:I

    .line 253
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mCoord:[F

    const/4 v3, 0x0

    invoke-static {v0, p0, v2, v5, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 255
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/home/launcher/DragLayer;->mCoord:[F

    aget v7, v6, v3

    aget v8, v6, v5

    aget v6, v6, v3

    .line 256
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget-object v9, p0, Lcom/miui/home/launcher/DragLayer;->mCoord:[F

    aget v9, v9, v5

    .line 257
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 255
    invoke-virtual {v2, v7, v8, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 259
    iget-object v6, p0, Lcom/miui/home/launcher/DragLayer;->mFolderGridViewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 260
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/DragLayer;->mSecondPointerId:I

    .line 261
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 262
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 263
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 264
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragLayer;->getXInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragLayer;->getYInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 265
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 270
    :cond_3
    iget v3, p0, Lcom/miui/home/launcher/DragLayer;->mSecondPointerId:I

    if-eq v3, v4, :cond_5

    .line 272
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 273
    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragLayer;->getXInFolderGridView(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragLayer;->getYInFolderGridView(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 274
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-ne v2, v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v5

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 275
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method private handleMotionEventWhenShortcutMenuShowing(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

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

    .line 332
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mIsIgnoreFeedController:Z

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    int-to-float p1, v0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 338
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragLayer;->mIsIgnoreFeedController:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$updateWallpaperOffset$0(Lcom/miui/home/launcher/DragLayer;Ljava/lang/ref/WeakReference;)V
    .locals 3

    .line 450
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    iget v2, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetY:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.DragLayer"

    const-string v1, "updateWallpaperOffset"

    .line 455
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/DragLayer$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private refreshLayout()V
    .locals 2

    .line 729
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 730
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method private resetFolderGirdView()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->isIgnoreCancelEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 232
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->setIgnoreCancelEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetResizeDragController;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method public attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WidgetResizeDragController;->clearAllResizeFrames()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 515
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 516
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mPdoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 518
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/common/ParasiticDrawingObject;

    .line 520
    invoke-interface {v1, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingObject;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/DragLayer;->requestDisallowInterceptTouchEventSwipeUp(Z)V

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 201
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    .line 202
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->setHasShowScreenLockedToast(Z)V

    .line 204
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 207
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mMotionEventCopy:Landroid/view/MotionEvent;

    .line 209
    invoke-direct {p0}, Lcom/miui/home/launcher/DragLayer;->resetFolderGirdView()V

    .line 211
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragLayer;->handleMotionEventWhenFolderShowing(Landroid/view/MotionEvent;)V

    .line 213
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mClipForDragging:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/miui/home/launcher/DragView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 532
    iget-object v1, p0, Lcom/miui/home/launcher/DragLayer;->mClipForDragging:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 534
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/InsettableFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p2
.end method

.method protected findActiveController(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/TouchController;

    .line 307
    instance-of v3, v2, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz v3, :cond_2

    .line 308
    iget-boolean v3, p0, Lcom/miui/home/launcher/DragLayer;->mIsOnScale:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    iget-boolean v3, p0, Lcom/miui/home/launcher/DragLayer;->mIsIgnoreFeedController:Z

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragLayer;->isIgnoreFeedController(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 315
    :cond_2
    invoke-interface {v2, p1}, Lcom/miui/home/launcher/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    iput-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    const-string p1, "Launcher.DragLayer"

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findActiveController, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragLayer$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    instance-of v0, v0, Lcom/miui/home/launcher/touch/FeedSwipeController;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->cancelHomeFeedContainerArrowAnim(Z)V

    return v2

    :cond_4
    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    .line 611
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragLayer;->setInsets(Landroid/graphics/Rect;)V

    .line 612
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/ApplyWindowInsetsEvent;

    invoke-direct {v1, p1}, Lcom/miui/home/recents/messages/ApplyWindowInsetsEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 0

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    const/4 p1, 0x0

    return p1
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 0

    .line 703
    invoke-static {p1, p0, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .line 675
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mTmpXY:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 676
    aput v1, v0, v2

    .line 677
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 679
    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mTmpXY:[I

    aget v4, v3, v1

    aget v5, v3, v2

    aget v1, v3, v1

    int-to-float v1, v1

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mTmpXY:[I

    aget v2, v3, v2

    int-to-float v2, v2

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 679
    invoke-virtual {p2, v4, v5, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/util/TouchController;

    .line 348
    instance-of v2, v1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz v2, :cond_0

    .line 349
    check-cast v1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[IZ)F
    .locals 3

    const/4 v0, 0x2

    .line 373
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    .line 374
    invoke-static {p1, p0, v0, v1, p3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result p1

    const/4 p3, 0x0

    .line 375
    aget v2, v0, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, p3

    .line 376
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

.method public getWpOffsetX()F
    .locals 1

    .line 411
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    return v0
.end method

.method public getWpStepX()F
    .locals 1

    .line 407
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    return v0
.end method

.method public highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I
    .locals 10

    .line 542
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    .line 544
    :goto_0
    array-length v4, v1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 545
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v3, -0x1

    .line 551
    invoke-virtual {p0, v0, v3, v3}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;II)V

    .line 552
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 553
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 554
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 555
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 556
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x4

    .line 559
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/ItemIcon;->setVisibility(I)V

    const/4 v3, 0x2

    .line 560
    new-array v3, v3, [I

    .line 561
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/ItemIcon;->getLocationOnScreen([I)V

    .line 562
    new-instance v4, Lcom/miui/home/launcher/DragLayer$3;

    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1}, Lcom/miui/home/launcher/DragLayer$3;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/content/Context;Lcom/miui/home/launcher/ItemIcon;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 568
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 569
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getHeight()I

    move-result v8

    const/16 v9, 0x33

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 570
    aget v2, v3, v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 571
    aget v2, v3, v6

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 572
    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 574
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 575
    new-instance v2, Lcom/miui/home/launcher/DragLayer$4;

    invoke-direct {v2, p0, v4}, Lcom/miui/home/launcher/DragLayer$4;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 582
    new-instance v2, Lcom/miui/home/launcher/DragLayer$5;

    invoke-direct {v2, p0, p1, v4, p2}, Lcom/miui/home/launcher/DragLayer$5;-><init>(Lcom/miui/home/launcher/DragLayer;Lcom/miui/home/launcher/ItemIcon;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 592
    new-instance p1, Lcom/miui/home/launcher/DragLayer$6;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/DragLayer$6;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;)V

    .line 604
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 592
    invoke-virtual {v0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 606
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 664
    iget-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

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

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    instance-of v1, v0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    .line 328
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

    .line 491
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WidgetResizeDragController;->isWidgetBeingResized()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 709
    invoke-super {p0}, Lcom/miui/home/launcher/InsettableFrameLayout;->onAttachedToWindow()V

    .line 710
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 717
    invoke-super {p0}, Lcom/miui/home/launcher/InsettableFrameLayout;->onDetachedFromWindow()V

    .line 718
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragLayer;->mPointerCount:I

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mIsOnScale:Z

    .line 296
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mIsIgnoreFeedController:Z

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 299
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragLayer;->handleMotionEventWhenShortcutMenuShowing(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 300
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 472
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 473
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 475
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 476
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 477
    instance-of p5, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 478
    check-cast p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 479
    iget-boolean p5, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 480
    iget p5, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    iget v0, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    iget v1, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    iget v2, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    iget p4, p4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    add-int/2addr v2, p4

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/miui/home/launcher/DragLayer;->refreshLayout()V

    .line 467
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 725
    invoke-direct {p0}, Lcom/miui/home/launcher/DragLayer;->refreshLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragLayer;->mPointerCount:I

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mActiveController:Lcom/miui/home/launcher/util/TouchController;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 363
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragLayer;->findActiveController(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public requestDisallowInterceptTouchEventSwipeUp(Z)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

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

    .line 188
    instance-of v2, v1, Lcom/miui/home/launcher/util/SwipeTouchController;

    if-eqz v2, :cond_0

    .line 189
    check-cast v1, Lcom/miui/home/launcher/util/SwipeTouchController;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/util/SwipeTouchController;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClipForDragging(Landroid/graphics/Rect;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mClipForDragging:Landroid/graphics/Rect;

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mReApplyed:Z

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    const/4 v0, 0x1

    .line 621
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mReApplyed:Z

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 381
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragLayer;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 384
    new-instance v0, Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/miui/home/launcher/WidgetResizeDragController;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DragLayer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    .line 385
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/DragLayer;->mWidgetResizeDragController:Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/touch/FeedSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_12:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateWallpaperOffset()V
    .locals 3

    .line 444
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertUIThread()V

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    iget v2, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 446
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$DragLayer$1yBlwsk2n8dHt2O2xi4z90DLhLY;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$DragLayer$1yBlwsk2n8dHt2O2xi4z90DLhLY;-><init>(Lcom/miui/home/launcher/DragLayer;Ljava/lang/ref/WeakReference;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 460
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public updateWallpaperOffset(FFFF)Z
    .locals 1

    .line 395
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    .line 396
    iput p1, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    .line 397
    iput p2, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    .line 398
    iput p3, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    .line 399
    iput p4, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetY:F

    .line 400
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateWallpaperOffsetAnimate(FFFF)Z
    .locals 13

    move-object v10, p0

    .line 416
    iget v0, v10, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    sub-float v3, p1, v0

    .line 417
    iget v0, v10, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    sub-float v5, p2, v0

    .line 418
    iget v0, v10, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    sub-float v7, p3, v0

    .line 419
    iget v0, v10, Lcom/miui/home/launcher/DragLayer;->mWpOffsetY:F

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

    .line 421
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 422
    new-instance v12, Lcom/miui/home/launcher/DragLayer$1;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/DragLayer$1;-><init>(Lcom/miui/home/launcher/DragLayer;FFFFFFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
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
