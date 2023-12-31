.class public Lcom/miui/home/launcher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragController$ScrollRunnable;,
        Lcom/miui/home/launcher/DragController$WidgetOutlineTask;,
        Lcom/miui/home/launcher/DragController$ItemIconOutlineTask;,
        Lcom/miui/home/launcher/DragController$OutlineTask;,
        Lcom/miui/home/launcher/DragController$ViewHolder;,
        Lcom/miui/home/launcher/DragController$LocationCalibration;,
        Lcom/miui/home/launcher/DragController$VisualizeCalibration;,
        Lcom/miui/home/launcher/DragController$DropAnimationListener;,
        Lcom/miui/home/launcher/DragController$DragListener;
    }
.end annotation


# static fields
.field private static sTmpCanvas:Landroid/graphics/Canvas;


# instance fields
.field private mAutoDraged:Z

.field private final mCoordinatesTemp:[I

.field private mDeleteRegion:Landroid/graphics/RectF;

.field private mDistanceSinceScroll:I

.field private mDragObject:Lcom/miui/home/launcher/DragObject;

.field private mDragScroller:Lcom/miui/home/launcher/DragScroller;

.field private final mDragViewOwner:Landroid/view/ViewGroup;

.field private mDragging:Z

.field private mDraggingFromAssistant:Z

.field private mDraggingToAssistant:Z

.field private mDropAnimationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DragController$DropAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOrientationChanged:Z

.field private mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

.field private mLastTouch:[I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

.field private mSecondaryPointerId:I

.field private mShortcutMenuDragListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 491
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 108
    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 137
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    const/4 v2, -0x1

    .line 138
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 139
    new-instance v2, Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/DragController$ScrollRunnable;-><init>(Lcom/miui/home/launcher/DragController;)V

    iput-object v2, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    .line 147
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    new-array v0, v0, [I

    .line 148
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    .line 150
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mIsScreenOrientationChanged:Z

    .line 253
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    .line 225
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 226
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    .line 227
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$cdfyBHNF9vS5aeSXCPQJiP0yrGY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$cdfyBHNF9vS5aeSXCPQJiP0yrGY;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 228
    iput-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragController;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/DragController;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragController$ScrollRunnable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/DragController;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelDragScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1264
    iput v0, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 1265
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1266
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz p0, :cond_0

    .line 1267
    invoke-interface {p0}, Lcom/miui/home/launcher/DragScroller;->onExitScrollArea()Z

    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-lt p0, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    return p0
.end method

.method private cleanLastDropTarget()V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 817
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v0, 0x0

    .line 818
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method private static createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 5

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 510
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 511
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 513
    sget-object v3, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 514
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 515
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 516
    invoke-virtual {v3, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 518
    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 519
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 521
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 522
    invoke-virtual {v3, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 523
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-object v2
.end method

.method private static createBitmapWithOutline(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 10

    .line 529
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 533
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 534
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    .line 537
    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;

    move-object v1, v9

    move v2, p2

    move-object v3, p1

    move v4, v0

    move v5, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;-><init>(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;)V

    invoke-static {v0, v7, v8, v9}, Lcom/miui/launcher/utils/BitmapRenderer;->createHardwareBitmapWithAcceleratedCanvas(IILandroid/graphics/Outline;Lcom/miui/launcher/utils/BitmapRenderer$Renderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createDragView(Landroid/view/View;IIZILcom/miui/home/launcher/DragSource;)Lcom/miui/home/launcher/DragView;
    .locals 11

    move-object v9, p0

    move-object v0, p1

    move v1, p2

    const/4 v2, 0x0

    .line 430
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ItemInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    move-object/from16 v8, p6

    .line 432
    instance-of v5, v8, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v5, :cond_1

    instance-of v5, v3, Lcom/miui/home/launcher/AppInfo;

    if-eqz v5, :cond_1

    .line 433
    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 436
    invoke-virtual {v5}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    :cond_2
    if-eqz v1, :cond_8

    const/4 v3, 0x1

    const/4 v6, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    if-eq v1, v6, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    goto/16 :goto_1

    .line 474
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    goto/16 :goto_1

    .line 468
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    .line 469
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 470
    iget-object v1, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/hotseats/HotSeats;->removeItemIconWhenDrag(Lcom/miui/home/launcher/ItemIcon;)V

    goto/16 :goto_1

    .line 454
    :cond_5
    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    const v1, 0x7f0d003b

    .line 455
    iget-object v3, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    .line 457
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 458
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 456
    invoke-virtual {v1, v3, v6}, Lcom/miui/home/launcher/ShortcutIcon;->measure(II)V

    .line 459
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v6

    invoke-virtual {v1, v2, v2, v3, v6}, Lcom/miui/home/launcher/ShortcutIcon;->layout(IIII)V

    .line 460
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 461
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 462
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    iget-object v3, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 463
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v4

    .line 462
    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 464
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setMessageImmediately(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_2

    .line 450
    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    const v1, 0x3e19999a    # 0.15f

    .line 451
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 447
    :cond_7
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 440
    :cond_8
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->setDownloadViewTag(Landroid/view/View;)V

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    :goto_1
    move-object v2, v0

    .line 477
    :goto_2
    new-instance v10, Lcom/miui/home/launcher/DragView;

    iget-object v0, v9, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-static {v2, v0}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v10

    move-object v4, v5

    move v5, p3

    move/from16 v6, p5

    move v7, p4

    move-object/from16 v8, p6

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/launcher/DragView;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ItemInfo;IIZLcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragController;)V

    return-object v10
.end method

.method private static createElderlyManShortcutBg(Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 550
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 551
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 552
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    sget-object v1, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 555
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 556
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 557
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 558
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const v3, 0x7f080686

    .line 559
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 560
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getBlackBgRect(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 561
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-object v0
.end method

.method public static createHolographicOutline(Lcom/miui/home/launcher/ShortcutIcon;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 693
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 694
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 693
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 695
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 696
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 695
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 698
    sget-object v2, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 699
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 700
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 701
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 702
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->drawOutLine(Landroid/graphics/Canvas;)V

    .line 703
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 704
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/common/HolographicOutlineHelper;

    move-result-object p0

    .line 705
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 706
    new-instance p0, Landroid/graphics/Paint;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 707
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 708
    invoke-virtual {v2, v0, p1, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, -0x1

    .line 709
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p0, 0x0

    .line 710
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 711
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v1
.end method

.method public static createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 568
    instance-of v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {p0, v1, p1}, Lcom/miui/home/launcher/DragController;->createBitmapWithOutline(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 570
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;

    if-eqz v0, :cond_1

    .line 571
    check-cast p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createElderlyManShortcutBg(Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 572
    :cond_1
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_2

    .line 573
    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createHolographicOutline(Lcom/miui/home/launcher/ShortcutIcon;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 575
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 576
    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->shouldDrawOutline(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 577
    invoke-static {p0, v1, p1}, Lcom/miui/home/launcher/DragController;->createBitmapWithOutline(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 578
    :cond_3
    instance-of v1, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 579
    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->showOutlineBackground(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createViewBitmapWithBackground(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 582
    :cond_4
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createOutlineAsync(Lcom/miui/home/launcher/DragController$OutlineTask;Lcom/miui/home/launcher/DragView;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 618
    iget-object p3, p1, Lcom/miui/home/launcher/DragController$OutlineTask;->executor:Ljava/util/concurrent/Executor;

    .line 619
    new-instance v0, Lcom/miui/home/launcher/DragController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/DragController$2;-><init>(Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DragController$OutlineTask;Lcom/miui/home/launcher/DragView;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 634
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/DragView;->setNeedOutline(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/DragController;->createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createViewBitmapWithBackground(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 502
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0801d0

    goto :goto_0

    :cond_0
    const v1, 0x7f0801cf

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 501
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/DragController;->createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private drop(FF)V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1074
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_0

    .line 1075
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    iget p1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    int-to-float p1, p1

    .line 1077
    iget p2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    int-to-float p2, p2

    .line 1078
    invoke-direct {p0, p1, p2, v1}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    goto :goto_0

    .line 1080
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    :goto_0
    return-void
.end method

.method private drop(FFLcom/miui/home/launcher/DropTarget;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 1086
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 1087
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object p1

    .line 1088
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget v2, p3, v1

    iput v2, p2, Lcom/miui/home/launcher/DragObject;->x:I

    .line 1089
    aget p3, p3, v0

    iput p3, p2, Lcom/miui/home/launcher/DragObject;->y:I

    goto :goto_0

    .line 1091
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    float-to-int p1, p1

    iput p1, v2, Lcom/miui/home/launcher/DragObject;->x:I

    float-to-int p1, p2

    .line 1092
    iput p1, v2, Lcom/miui/home/launcher/DragObject;->y:I

    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_1

    .line 1094
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1095
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object p1

    .line 1097
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eq p1, p2, :cond_2

    .line 1098
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    :cond_2
    if-eqz p1, :cond_13

    .line 1101
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 1104
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1107
    :cond_3
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p3}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result p3

    if-eqz p3, :cond_f

    const/4 p3, 0x0

    .line 1109
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1110
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p3

    .line 1112
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop, from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.DragController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v2, :cond_6

    const-string v6, "succeed"

    goto :goto_2

    :cond_6
    const-string v6, "failed"

    :goto_2
    aput-object v6, v5, v1

    .line 1116
    iget-object v6, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    :cond_7
    aput-object v4, v5, v0

    const-string v4, "drop %s, to %s"

    .line 1114
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    .line 1119
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/DragController;->updateDragViewDropAnimType(Lcom/miui/home/launcher/DragObject;)V

    .line 1121
    :cond_8
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1122
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move v3, v1

    goto :goto_4

    :cond_a
    :goto_3
    move v3, v0

    :goto_4
    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    if-eqz p3, :cond_c

    .line 1123
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1124
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/miui/home/launcher/ItemInfo;->hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1125
    instance-of v3, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz v3, :cond_b

    const-string v3, "item_be_moved_to_workspace"

    .line 1126
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackItemMoved(Ljava/lang/String;)V

    goto :goto_5

    .line 1127
    :cond_b
    instance-of v3, p1, Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    if-eqz v3, :cond_c

    const-string v3, "item_be_moved_to_hotseats"

    .line 1128
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackItemMoved(Ljava/lang/String;)V

    .line 1131
    :cond_c
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 1132
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_d

    if-eqz p3, :cond_d

    .line 1133
    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    iget-wide v4, p3, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v2, :cond_10

    .line 1137
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 1138
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDropAnnounce()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_e

    .line 1139
    new-instance p3, Lcom/miui/home/launcher/DragController$3;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/DragController$3;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    goto :goto_6

    .line 1146
    :cond_e
    invoke-interface {p1}, Lcom/miui/home/launcher/DropTarget;->getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 1147
    new-instance p3, Lcom/miui/home/launcher/DragController$4;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/launcher/DragController$4;-><init>(Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DropTarget;)V

    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    goto :goto_6

    :cond_f
    move v2, v1

    .line 1157
    :cond_10
    :goto_6
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p3, v2}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1159
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 1160
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1161
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-wide v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_11

    .line 1162
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v8, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget-wide v5, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;-><init>(JJLcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v8}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_7

    .line 1167
    :cond_12
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2, p1, v1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    .line 1168
    invoke-interface {p1}, Lcom/miui/home/launcher/DropTarget;->onDropCompleted()V

    .line 1169
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1170
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->cancelAnnounce()V

    goto :goto_8

    .line 1172
    :cond_13
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;)V

    .line 1174
    :goto_8
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 1175
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p2

    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p2, p1, p0}, Lcom/miui/home/launcher/DragSource;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    :cond_14
    return-void
.end method

.method private endDrag()V
    .locals 3

    .line 753
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 755
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/DragMessage;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 756
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 757
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "action_drag_off"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "Launcher.DragController"

    .line 758
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DragController$DragListener;

    .line 761
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/DragController$DragListener;->onDragEnd(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 763
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    :cond_1
    return-void
.end method

.method private findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1202
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 1203
    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 1204
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1205
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    :goto_0
    if-ltz v6, :cond_6

    .line 1207
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/DropTarget;

    .line 1208
    invoke-interface {v9}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_1

    .line 1211
    :cond_0
    move-object v10, v9

    check-cast v10, Landroid/view/View;

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/miui/home/launcher/DragView;->isSameType(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_1

    .line 1215
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->isShown()Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_1

    .line 1218
    :cond_2
    invoke-interface {v9}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1220
    invoke-interface {v9}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    if-eq v11, v10, :cond_3

    .line 1221
    invoke-interface {v9}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v11

    .line 1222
    invoke-virtual {v11, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1223
    iget-object v13, v0, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    invoke-static {v11, v13, v3, v12}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v11

    .line 1224
    aget v13, v3, v12

    aget v14, v3, v8

    aget v15, v3, v12

    int-to-float v15, v15

    .line 1225
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    add-float/2addr v15, v12

    float-to-int v12, v15

    aget v15, v3, v8

    int-to-float v15, v15

    .line 1226
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v15, v8

    float-to-int v8, v15

    .line 1224
    invoke-virtual {v4, v13, v14, v12, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1227
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 1232
    :cond_3
    invoke-virtual {v10, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1233
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-static {v10, v8, v3, v11}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v8

    .line 1234
    aget v12, v3, v11

    const/4 v13, 0x1

    aget v14, v3, v13

    aget v15, v3, v11

    int-to-float v11, v15

    .line 1235
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v8

    add-float/2addr v11, v15

    float-to-int v11, v11

    aget v15, v3, v13

    int-to-float v13, v15

    .line 1236
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v8

    add-float/2addr v13, v15

    float-to-int v13, v13

    .line 1234
    invoke-virtual {v4, v12, v14, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1237
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-nez v11, :cond_5

    sub-int v11, v1, v7

    sub-int v12, v2, v7

    add-int v13, v1, v7

    add-int v14, v2, v7

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 1238
    aget v5, v3, v0

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v3, v0

    const/4 v5, 0x1

    .line 1239
    aget v6, v3, v5

    int-to-float v6, v6

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    div-float/2addr v10, v8

    sub-float/2addr v6, v10

    float-to-int v6, v6

    aput v6, v3, v5

    .line 1240
    aget v6, v3, v0

    sub-int v6, v1, v6

    aput v6, v3, v0

    .line 1241
    aget v0, v3, v5

    sub-int v0, v2, v0

    aput v0, v3, v5

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findDropTarget dropTarget:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DragController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 233
    array-length p0, p1

    new-array p0, p0, [Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v0, 0x0

    .line 234
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 235
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    aput-object v1, p0, v0

    .line 236
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->restoreToInitState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private handleMoveEvent(IILandroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 824
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/miui/home/launcher/DragController;->isMoveOverShortcutMenuMoveThreshold(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 825
    :goto_0
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 827
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v8

    if-nez v8, :cond_2

    .line 828
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v7, v1, v2}, Lcom/miui/home/launcher/DragObject;->move(II)V

    if-eqz v4, :cond_3

    .line 830
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;

    .line 831
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v8}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_2

    :cond_2
    if-nez v4, :cond_1b

    if-eqz v7, :cond_3

    goto/16 :goto_e

    .line 843
    :cond_3
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 844
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    goto :goto_4

    :cond_5
    move v8, v2

    :goto_4
    invoke-direct {v0, v7, v8, v4}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v7

    .line 845
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-eqz v8, :cond_6

    if-eq v7, v8, :cond_6

    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 847
    invoke-interface {v8, v9}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 848
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v9}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 849
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v9}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    :cond_6
    const/4 v8, 0x0

    .line 851
    iput-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    .line 853
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget v10, v4, v5

    iput v10, v9, Lcom/miui/home/launcher/DragObject;->x:I

    .line 854
    aget v4, v4, v6

    iput v4, v9, Lcom/miui/home/launcher/DragObject;->y:I

    if-eqz v7, :cond_a

    .line 856
    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 v18, v7

    move-object v7, v4

    move-object/from16 v4, v18

    goto :goto_5

    :cond_7
    move-object v4, v8

    .line 863
    :goto_5
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 864
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eq v9, v7, :cond_8

    .line 865
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    .line 866
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 867
    iput-object v7, v0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    .line 869
    :cond_8
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_6

    .line 871
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    goto :goto_6

    .line 874
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    move-object v4, v8

    .line 879
    :goto_6
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    if-eqz v9, :cond_b

    int-to-float v10, v1

    int-to-float v11, v2

    .line 880
    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    goto :goto_7

    :cond_b
    move v9, v5

    .line 885
    :goto_7
    iget-object v10, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v10

    .line 886
    iget v11, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    int-to-double v11, v11

    iget-object v13, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    aget v13, v13, v5

    sub-int/2addr v13, v1

    int-to-double v13, v13

    move/from16 v16, v9

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 887
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    iget-object v15, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    aget v15, v15, v6

    sub-int/2addr v15, v2

    move-object/from16 v17, v7

    int-to-double v6, v15

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v11, v6

    double-to-int v6, v11

    iput v6, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    .line 888
    iget-object v6, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    aput v1, v6, v5

    const/4 v7, 0x1

    .line 889
    aput v2, v6, v7

    .line 891
    instance-of v6, v4, Lcom/miui/home/launcher/DragScroller;

    if-eqz v6, :cond_c

    move-object v8, v4

    check-cast v8, Lcom/miui/home/launcher/DragScroller;

    move-object/from16 v7, v17

    goto :goto_8

    :cond_c
    move-object/from16 v7, v17

    const/4 v8, 0x0

    .line 892
    :goto_8
    instance-of v6, v7, Lcom/miui/home/launcher/DragScroller;

    if-eqz v6, :cond_d

    move-object v8, v7

    check-cast v8, Lcom/miui/home/launcher/DragScroller;

    :cond_d
    if-eqz v7, :cond_e

    .line 894
    iget-object v6, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v6}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_9

    :cond_e
    move v6, v5

    :goto_9
    if-eqz v4, :cond_10

    .line 895
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v4, v7}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_a

    :cond_f
    move v4, v5

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v4, 0x1

    .line 897
    :goto_b
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eq v8, v7, :cond_11

    if-eqz v6, :cond_11

    if-eqz v4, :cond_11

    return-void

    :cond_11
    if-eqz v8, :cond_13

    .line 901
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-nez v4, :cond_12

    .line 902
    iput-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    goto :goto_c

    :cond_12
    if-eq v4, v8, :cond_14

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    .line 905
    iput-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    goto :goto_c

    .line 908
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    const/4 v4, 0x0

    .line 909
    iput-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    .line 911
    :cond_14
    :goto_c
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-nez v4, :cond_15

    return-void

    .line 914
    :cond_15
    invoke-interface {v4}, Lcom/miui/home/launcher/DragScroller;->getScrollZone()I

    move-result v4

    const-wide/16 v6, 0x2bc

    if-nez v16, :cond_16

    if-ge v1, v4, :cond_16

    .line 916
    iget v4, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v4, :cond_1a

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    if-le v4, v10, :cond_1a

    const/4 v4, 0x1

    .line 917
    iput v4, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 918
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    invoke-interface {v4, v1, v2, v5, v3}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(IIILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 919
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 921
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    :cond_16
    if-nez v16, :cond_17

    .line 924
    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_17

    .line 925
    iget v4, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v4, :cond_1a

    iget v4, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    if-le v4, v10, :cond_1a

    const/4 v4, 0x1

    .line 926
    iput v4, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 927
    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    invoke-interface {v5, v1, v2, v4, v3}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(IIILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 928
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 930
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 933
    :cond_17
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    goto :goto_d

    :cond_18
    if-eqz v3, :cond_1a

    .line 935
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-lez v2, :cond_1a

    .line 936
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-lez v2, :cond_19

    int-to-float v1, v1

    .line 937
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 939
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_1a

    .line 940
    iget v0, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v1, v3, v0}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    goto :goto_d

    :cond_19
    const/4 v1, -0x1

    .line 944
    iput v1, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    :cond_1a
    :goto_d
    return-void

    .line 837
    :cond_1b
    :goto_e
    iget-object v0, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return-void
.end method

.method private isInLastScreenIndexWithEmptyRightScreen(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 2

    .line 1197
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMoveOverShortcutMenuMoveThreshold(II)Z
    .locals 2

    .line 950
    iget v0, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    iget p0, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    sub-int/2addr p2, p0

    int-to-double p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    .line 951
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getShortcutMenuDisappearThreshold()I

    move-result p2

    int-to-double v0, p2

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createBitmapWithOutline$1(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    .line 538
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 539
    invoke-virtual {p5, p0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 541
    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 542
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 544
    :cond_0
    invoke-virtual {p4, p5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 545
    invoke-virtual {p5, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method static synthetic lambda$setEachDragViewMinDropAnimationDuration$0(ILcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 272
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragView;->setMinDropAnimationDuration(I)V

    return-void
.end method

.method private obtainVelocityTracker()Landroid/view/VelocityTracker;
    .locals 0

    .line 1043
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    .line 1044
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p0

    return-object p0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1050
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1051
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setDownloadViewTag(Landroid/view/View;)V
    .locals 0

    .line 482
    instance-of p0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p0, :cond_0

    .line 483
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->setDownloadTag()V

    :cond_0
    return-void
.end method

.method private static showOutlineBackground(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 590
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_0

    return v1

    .line 593
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private updateDragViewDropAnimType(Lcom/miui/home/launcher/DragObject;)V
    .locals 5

    .line 1180
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1186
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragController;->isInLastScreenIndexWithEmptyRightScreen(Lcom/miui/home/launcher/CellLayout;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 1190
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1191
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-eqz p0, :cond_2

    .line 1192
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->setForceFadeOut()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V
    .locals 0

    .line 1279
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V
    .locals 0

    .line 1275
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(ILcom/miui/home/launcher/DropTarget;)V
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 0

    .line 1297
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V
    .locals 11

    move-object v10, p0

    move-object v1, p1

    move-object v4, p2

    .line 256
    iget-boolean v0, v10, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 259
    array-length v0, v1

    if-lez v0, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p5

    .line 260
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, v10, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    :cond_0
    return-void

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t auto drag again"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public autoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;II)V
    .locals 6

    .line 266
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    return-void
.end method

.method public autoDrop(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 289
    invoke-direct {p0, v0, v0, p1}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    .line 290
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void

    .line 286
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "can\'t drop without drag started"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public autoDropBack()V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->autoDropBack()V

    .line 281
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void

    .line 277
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "can\'t auto drop without drag started"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelDrag()V
    .locals 3

    .line 734
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 735
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 737
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_1

    .line 740
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    .line 743
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v2, v1}, Lcom/miui/home/launcher/DragSource;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    .line 745
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void
.end method

.method public cancelScroll()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createDrawableHolder(Landroid/graphics/drawable/Drawable;II)Landroid/view/View;
    .locals 3

    .line 303
    new-instance v0, Lcom/miui/home/launcher/DragController$ViewHolder;

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/DragController$ViewHolder;-><init>(Lcom/miui/home/launcher/DragController;Landroid/content/Context;)V

    .line 304
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController$ViewHolder;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 306
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DragController$ViewHolder;->setMeasuredDimensionPub(II)V

    .line 308
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {v0, p2, p3, p1, p0}, Lcom/miui/home/launcher/DragController$ViewHolder;->layout(IIII)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 727
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentDragObject()Lcom/miui/home/launcher/DragObject;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object p0
.end method

.method getVelocityX()F
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1057
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1058
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getVelocityY()F
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1065
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1066
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDragging()Z
    .locals 0

    .line 488
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p0
.end method

.method public isDraggingFromAssistant()Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDraggingFromAssistant:Z

    return p0
.end method

.method public isDraggingToAssistant()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDraggingToAssistant:Z

    return p0
.end method

.method public isDropTargetsContainsContent(Lcom/miui/home/launcher/DropTarget;)Z
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFolderDragging(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 3

    .line 1386
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    if-eqz v0, :cond_1

    move v0, v1

    .line 1387
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1388
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 1399
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v1

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v2

    .line 776
    iget-boolean v3, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 794
    invoke-direct {p0, v1, v2, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    int-to-float p1, v1

    int-to-float v0, v2

    .line 795
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 797
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    goto :goto_0

    .line 783
    :cond_3
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 784
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    const/4 p1, 0x0

    .line 785
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :cond_4
    :goto_0
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 958
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    .line 960
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 964
    :cond_0
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v3, v4, v5}, Lcom/miui/launcher/utils/BoostHelper;->bindCore(Landroid/view/View;J)V

    .line 965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v3

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v4

    and-int/lit16 v5, v1, 0xff

    const/4 v6, 0x1

    if-eqz v5, :cond_c

    if-eq v5, v6, :cond_a

    const/4 v0, 0x2

    if-eq v5, v0, :cond_7

    const/4 v0, 0x3

    if-eq v5, v0, :cond_6

    const/4 v0, 0x5

    if-eq v5, v0, :cond_3

    const/4 v0, 0x6

    if-eq v5, v0, :cond_1

    goto/16 :goto_3

    .line 993
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-ltz v0, :cond_10

    .line 994
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_2

    .line 995
    invoke-interface {v1, p1, v0}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    :cond_2
    const/4 p1, -0x1

    .line 997
    iput p1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    goto/16 :goto_3

    .line 972
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 973
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_4
    const v0, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 978
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 979
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v1

    .line 980
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v0

    .line 981
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 982
    instance-of v1, v0, Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_5

    .line 983
    check-cast v0, Lcom/miui/home/launcher/DragScroller;

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    .line 984
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    iget v1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v0, p1, v1}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 986
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 987
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;

    .line 988
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;->onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    .line 1035
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 1036
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    goto :goto_3

    .line 1017
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    .line 1018
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->obtainVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1020
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 1021
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1023
    :cond_9
    invoke-direct {p0, v3, v4, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    goto :goto_3

    .line 1026
    :cond_a
    invoke-direct {p0, v3, v4, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    .line 1027
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1028
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz p1, :cond_b

    int-to-float p1, v3

    int-to-float v0, v4

    .line 1029
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 1031
    :cond_b
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    .line 1032
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    goto :goto_3

    .line 1002
    :cond_c
    iput v3, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 1003
    iput v4, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 1004
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz p1, :cond_f

    .line 1005
    invoke-interface {p1}, Lcom/miui/home/launcher/DragScroller;->getScrollZone()I

    move-result p1

    if-lt v3, p1, :cond_e

    .line 1006
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v3, v0, :cond_d

    goto :goto_1

    .line 1011
    :cond_d
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    goto :goto_2

    .line 1007
    :cond_e
    :goto_1
    iput v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 1008
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1009
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1014
    :cond_f
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->obtainVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_10
    :goto_3
    return v6
.end method

.method public removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V
    .locals 0

    .line 1290
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1316
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    .line 1318
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 p1, 0x0

    .line 1319
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method public setDraggingFromAssistant(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDraggingFromAssistant:Z

    return-void
.end method

.method public setDraggingToAssistant(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDraggingToAssistant:Z

    return-void
.end method

.method public setEachDragViewMinDropAnimationDuration(I)V
    .locals 1

    .line 270
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    if-nez p0, :cond_0

    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DragController$k7jD1BPyoO3aB6AAzrwq7pcnKKk;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$DragController$k7jD1BPyoO3aB6AAzrwq7pcnKKk;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragObject;->forEachDragView(Ljava/util/function/Consumer;)V

    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V
    .locals 8

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/miui/home/launcher/DragSource;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 216
    invoke-virtual/range {v1 .. v7}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;III)V

    return-void
.end method

.method public startAutoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;III)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 249
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    .line 250
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/DragController;->autoDrop(Lcom/miui/home/launcher/DropTarget;)V

    return-void
.end method

.method public startAutoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;III)V

    return-void
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    .line 313
    invoke-virtual {p0, p1, p4, p5}, Lcom/miui/home/launcher/DragController;->createDrawableHolder(Landroid/graphics/drawable/Drawable;II)Landroid/view/View;

    move-result-object v1

    move-object v2, p3

    .line 314
    invoke-virtual {v1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-array v5, v2, [Lcom/miui/home/launcher/DragSource;

    aput-object p7, v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object v1, v3

    move v2, p2

    move/from16 v3, p6

    move-object v4, v5

    move/from16 v5, p8

    .line 315
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result v0

    return v0
.end method

.method public startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z
    .locals 11

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    new-array v5, v0, [Lcom/miui/home/launcher/DragSource;

    aput-object p3, v5, v1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    move-object v1, p0

    move v3, p2

    move v6, p4

    .line 319
    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result p0

    return p0
.end method

.method public startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    .line 337
    iget-boolean v0, v7, Lcom/miui/home/launcher/DragController;->mDragging:Z

    const/4 v12, 0x0

    if-nez v0, :cond_e

    array-length v0, v8

    if-gtz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v13, 0x1

    if-eqz v9, :cond_1

    .line 339
    array-length v0, v9

    if-le v0, v13, :cond_1

    array-length v0, v9

    array-length v1, v8

    if-eq v0, v1, :cond_1

    return v12

    .line 343
    :cond_1
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/miui/home/launcher/DragLayer;->setClipForDragging(Landroid/graphics/Rect;)V

    const/4 v0, 0x4

    if-eq v10, v0, :cond_2

    .line 349
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    aget-object v1, v8, v12

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 354
    :cond_2
    array-length v0, v8

    new-array v15, v0, [Lcom/miui/home/launcher/DragView;

    .line 355
    array-length v0, v8

    sub-int/2addr v0, v13

    move/from16 v16, v0

    :goto_0
    if-ltz v16, :cond_9

    .line 356
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 357
    aget-object v1, v8, v16

    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mDragViewOwner:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v0, v13}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v1

    .line 358
    aget-object v2, v9, v16

    instance-of v2, v2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;

    if-eqz v2, :cond_3

    .line 359
    aget-object v2, v9, v16

    check-cast v2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;

    aget-object v3, v8, v16

    iget v4, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v5, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;->transform(Landroid/view/View;[III)V

    .line 361
    :cond_3
    aget v6, v0, v12

    .line 362
    aget v5, v0, v13

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p9, v0

    if-nez v0, :cond_4

    move/from16 v18, v1

    goto :goto_1

    :cond_4
    move/from16 v18, p9

    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_5

    .line 367
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDragIconScaleRatio()F

    move-result v0

    mul-float v0, v0, v18

    aget-object v1, v8, v16

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    move/from16 v19, v0

    goto :goto_2

    :cond_5
    move/from16 v19, p3

    :goto_2
    if-eqz v11, :cond_6

    .line 370
    iput v6, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 371
    iput v5, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 373
    :cond_6
    aget-object v0, v8, v16

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController$OutlineTask;->create(Landroid/view/View;F)Lcom/miui/home/launcher/DragController$OutlineTask;

    move-result-object v4

    .line 374
    aget-object v1, v8, v16

    add-int v3, v16, p8

    array-length v2, v8

    .line 376
    array-length v0, v9

    if-ne v0, v13, :cond_7

    aget-object v0, v9, v12

    goto :goto_3

    :cond_7
    aget-object v0, v9, v16

    :goto_3
    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v20, v2

    move/from16 v2, p5

    move-object v13, v4

    move/from16 v4, p7

    move v14, v5

    move/from16 v5, v20

    move v12, v6

    move-object/from16 v6, v17

    .line 374
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/DragController;->createDragView(Landroid/view/View;IIZILcom/miui/home/launcher/DragSource;)Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 378
    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v2, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    invoke-virtual {v0, v1, v2, v12, v14}, Lcom/miui/home/launcher/DragView;->initRegistrationOffset(IIII)V

    .line 379
    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v2, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v12

    move/from16 v23, v14

    invoke-virtual/range {v17 .. v23}, Lcom/miui/home/launcher/DragView;->showWithAnim(FFIIII)V

    move/from16 v1, p2

    .line 380
    invoke-direct {v7, v13, v0, v1}, Lcom/miui/home/launcher/DragController;->createOutlineAsync(Lcom/miui/home/launcher/DragController$OutlineTask;Lcom/miui/home/launcher/DragView;Z)V

    goto :goto_4

    :cond_8
    move/from16 v1, p2

    .line 382
    :goto_4
    aput-object v0, v15, v16

    add-int/lit8 v16, v16, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 385
    :cond_9
    new-instance v0, Lcom/miui/home/launcher/DragObject;

    invoke-direct {v0, v15}, Lcom/miui/home/launcher/DragObject;-><init>([Lcom/miui/home/launcher/DragView;)V

    iput-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 386
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    iget-object v1, v7, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragObject;->setDragAnimationListener(Ljava/util/ArrayList;)V

    .line 387
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x0

    aget-object v2, v15, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getRegistrationX()I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    .line 388
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget-object v2, v15, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getRegistrationY()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    .line 389
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    iput v10, v0, Lcom/miui/home/launcher/DragObject;->dragAction:I

    move/from16 v1, p6

    .line 390
    iput v1, v0, Lcom/miui/home/launcher/DragObject;->dropAction:I

    .line 391
    invoke-virtual {v0, v11}, Lcom/miui/home/launcher/DragObject;->setIsAutoDraged(Z)V

    .line 392
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    iget-object v1, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 393
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "action_drag_on"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "Launcher.DragController"

    .line 394
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_b

    .line 396
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DragController$DragListener;

    .line 397
    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v1, v9, v2}, Lcom/miui/home/launcher/DragController$DragListener;->onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V

    goto :goto_5

    .line 399
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v15, v1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performStartDrag(Landroid/view/View;)V

    .line 401
    :cond_b
    new-instance v0, Lcom/miui/home/launcher/DragController$1;

    invoke-direct {v0, v7}, Lcom/miui/home/launcher/DragController$1;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava/util/function/Supplier;)V

    .line 412
    iget v0, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    iget-object v2, v7, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    invoke-direct {v7, v0, v1, v2}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-nez v11, :cond_d

    .line 414
    iget-object v0, v7, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    instance-of v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsContent;

    if-nez v1, :cond_c

    instance-of v0, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_d

    .line 416
    :cond_c
    iget v0, v7, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v1, v7, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    :cond_d
    const/4 v0, 0x1

    .line 418
    iput-boolean v0, v7, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 419
    iget-object v1, v7, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-static {v2}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragObject;->setStateAnnouncer(Lcom/miui/home/launcher/DragViewStateAnnouncer;)V

    .line 420
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/DragMessage;

    xor-int/lit8 v3, v11, 0x1

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/messages/DragMessage;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    return v0

    :cond_e
    :goto_6
    move v0, v12

    return v0
.end method

.method public startDrag([Lcom/miui/home/launcher/ShortcutInfo;ZF[Lcom/miui/home/launcher/DragSource;IIZ)Z
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragController;->getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result v0

    return v0
.end method
