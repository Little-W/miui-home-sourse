.class public Lcom/miui/home/launcher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragController$ScrollRunnable;,
        Lcom/miui/home/launcher/DragController$ViewHolder;,
        Lcom/miui/home/launcher/DragController$LocationCalibration;,
        Lcom/miui/home/launcher/DragController$VisualizeCalibration;,
        Lcom/miui/home/launcher/DragController$DropAnimationListener;,
        Lcom/miui/home/launcher/DragController$DragListener;,
        Lcom/miui/home/launcher/DragController$_lancet;
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

.field private mDragging:Z

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

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

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

    .line 440
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 88
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    const/4 v2, -0x1

    .line 118
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 119
    new-instance v2, Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/DragController$ScrollRunnable;-><init>(Lcom/miui/home/launcher/DragController;)V

    iput-object v2, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    .line 127
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    .line 128
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    .line 130
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mIsScreenOrientationChanged:Z

    .line 204
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    .line 174
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 175
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragObject;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragScroller;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragController;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/DragController;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/DragController$ScrollRunnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/DragController;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelDragScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1016
    iput v0, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 1017
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 1018
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz v0, :cond_0

    .line 1019
    invoke-interface {v0}, Lcom/miui/home/launcher/DragScroller;->onExitScrollArea()Z

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

    .line 631
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method private static createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 5

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 460
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 462
    sget-object v3, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 463
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 464
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 465
    invoke-virtual {v3, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 467
    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 468
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 471
    invoke-virtual {v3, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-object v2
.end method

.method private createDragView(Landroid/view/View;ZIIZILcom/miui/home/launcher/DragSource;)Lcom/miui/home/launcher/DragView;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    .line 386
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 387
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

    move-object/from16 v13, p7

    .line 388
    instance-of v5, v13, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v5, :cond_1

    instance-of v5, v3, Lcom/miui/home/launcher/AppInfo;

    if-eqz v5, :cond_1

    .line 389
    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object v9, v3

    :goto_1
    if-eqz v9, :cond_2

    .line 392
    invoke-virtual {v9}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    :cond_2
    if-eqz p2, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 396
    invoke-static {p1, v3}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v4

    :cond_3
    move-object v8, v3

    goto :goto_2

    :cond_4
    move-object v8, v4

    :goto_2
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 417
    :pswitch_1
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    const v3, 0x7f0d0027

    .line 418
    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3, v5, v4}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    .line 420
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 421
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 419
    invoke-virtual {v3, v5, v6}, Lcom/miui/home/launcher/ShortcutIcon;->measure(II)V

    .line 422
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v6

    invoke-virtual {v3, v2, v2, v5, v6}, Lcom/miui/home/launcher/ShortcutIcon;->layout(IIII)V

    .line 423
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 424
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 425
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 426
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v4

    .line 425
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    move-object v7, v3

    goto :goto_4

    :pswitch_2
    const v2, 0x3e19999a    # 0.15f

    .line 413
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x2

    .line 414
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_3

    :pswitch_3
    const/4 v2, 0x4

    .line 410
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 404
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    :goto_3
    move-object v7, v1

    .line 431
    :goto_4
    new-instance v1, Lcom/miui/home/launcher/DragView;

    iget-object v2, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v6

    move-object v5, v1

    move/from16 v10, p4

    move/from16 v11, p6

    move/from16 v12, p5

    move-object/from16 v13, p7

    invoke-direct/range {v5 .. v13}, Lcom/miui/home/launcher/DragView;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ItemInfo;IIZLcom/miui/home/launcher/DragSource;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private createDrawableHolder(Landroid/graphics/drawable/Drawable;II)Landroid/view/View;
    .locals 4

    .line 254
    new-instance v0, Lcom/miui/home/launcher/DragController$ViewHolder;

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/DragController$ViewHolder;-><init>(Lcom/miui/home/launcher/DragController;Landroid/content/Context;)V

    .line 255
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController$ViewHolder;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DragController$ViewHolder;->setMeasuredDimensionPub(II)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/miui/home/launcher/DragController$ViewHolder;->layout(IIII)V

    return-object v0
.end method

.method private static createElderlyManShortcutBg(Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 478
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 479
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 480
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    sget-object v1, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 483
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 484
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 485
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 486
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const v3, 0x7f0801cd

    .line 487
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 488
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;->getBlackBgRect(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 489
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 490
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-object v0
.end method

.method public static createHolographicOutline(Lcom/miui/home/launcher/ShortcutIcon;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 511
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 511
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 514
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 513
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 516
    sget-object v2, Lcom/miui/home/launcher/DragController;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 517
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 518
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 519
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 520
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->drawOutLine(Landroid/graphics/Canvas;)V

    .line 521
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 522
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/common/HolographicOutlineHelper;

    move-result-object p0

    .line 523
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/common/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 524
    new-instance p0, Landroid/graphics/Paint;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 525
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 526
    invoke-virtual {v2, v0, p1, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, -0x1

    .line 527
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p0, 0x0

    .line 528
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 529
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v1
.end method

.method public static createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 496
    instance-of v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;

    if-eqz v0, :cond_0

    .line 497
    check-cast p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createElderlyManShortcutBg(Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 498
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_1

    .line 499
    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createHolographicOutline(Lcom/miui/home/launcher/ShortcutIcon;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 501
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 502
    instance-of v1, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createViewBitmapWithBackground(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 505
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/DragController;->createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createViewBitmapWithBackground(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 451
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080092

    goto :goto_0

    :cond_0
    const v1, 0x7f080091

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 450
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/DragController;->createBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private drop(FF)V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget p1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    int-to-float p1, p1

    .line 886
    iget p2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    int-to-float p2, p2

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 892
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    :goto_0
    return-void
.end method

.method private drop(FFLcom/miui/home/launcher/DropTarget;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 898
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 899
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object p1

    .line 900
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget v2, p3, v1

    iput v2, p2, Lcom/miui/home/launcher/DragObject;->x:I

    .line 901
    aget p3, p3, v0

    iput p3, p2, Lcom/miui/home/launcher/DragObject;->y:I

    goto :goto_0

    .line 903
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    float-to-int p1, p1

    iput p1, v2, Lcom/miui/home/launcher/DragObject;->x:I

    float-to-int p1, p2

    .line 904
    iput p1, v2, Lcom/miui/home/launcher/DragObject;->y:I

    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_1

    .line 906
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 907
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object p1

    .line 909
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eq p1, p2, :cond_2

    .line 910
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    :cond_2
    if-eqz p1, :cond_f

    .line 913
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 917
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p2, 0x0

    .line 919
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 920
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    :cond_4
    const-string p3, "Launcher.DragController"

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop, from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, "null"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/miui/home/launcher/DragController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p3}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result p3

    const-string v2, "Launcher.DragController"

    const-string v3, "drop %s, to %s"

    const/4 v4, 0x2

    .line 924
    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p3, :cond_6

    const-string v5, "succeed"

    goto :goto_2

    :cond_6
    const-string v5, "failed"

    :goto_2
    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 926
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v5}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    const-string v5, "null"

    :goto_3
    aput-object v5, v4, v0

    .line 924
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/DragController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 929
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move v2, v1

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v0

    :goto_5
    if-eqz v2, :cond_b

    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    .line 930
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 931
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/ItemInfo;->hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 932
    instance-of p2, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p2, :cond_a

    const-string p2, "item_be_moved_to_workspace"

    .line 933
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackItemMoved(Ljava/lang/String;)V

    goto :goto_6

    .line 934
    :cond_a
    instance-of p2, p1, Lcom/miui/home/launcher/HotSeats;

    if-eqz p2, :cond_b

    const-string p2, "item_be_moved_to_hotseats"

    .line 935
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackItemMoved(Ljava/lang/String;)V

    :cond_b
    :goto_6
    if-eqz p3, :cond_e

    .line 939
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 940
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDropAnnounce()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 941
    new-instance p2, Lcom/miui/home/launcher/DragController$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/DragController$2;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava8/util/function/Supplier;)V

    goto :goto_7

    .line 948
    :cond_c
    invoke-interface {p1}, Lcom/miui/home/launcher/DropTarget;->getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 949
    new-instance p2, Lcom/miui/home/launcher/DragController$3;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/DragController$3;-><init>(Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DropTarget;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava8/util/function/Supplier;)V

    goto :goto_7

    :cond_d
    move p3, v1

    .line 959
    :cond_e
    :goto_7
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/DragObject;->nextDragView(Z)Z

    move-result p2

    if-nez p2, :cond_3

    .line 960
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->onDragCompleted()V

    .line 961
    invoke-interface {p1}, Lcom/miui/home/launcher/DropTarget;->onDropCompleted()V

    .line 962
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 963
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->cancelAnnounce()V

    goto :goto_8

    .line 965
    :cond_f
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->onDragCompleted()V

    .line 967
    :goto_8
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 968
    iget-object p2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {p2, p1, p3}, Lcom/miui/home/launcher/DragSource;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    :cond_10
    return-void
.end method

.method private endDrag()V
    .locals 3

    .line 571
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 573
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/DragMessage;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
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

    .line 576
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/DragController$DragListener;->onDragEnd(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 578
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

    .line 973
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 974
    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 975
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_3

    .line 977
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/DropTarget;

    .line 978
    invoke-interface {v8}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    move v10, v7

    goto :goto_1

    .line 981
    :cond_0
    move-object v9, v8

    check-cast v9, Landroid/view/View;

    .line 982
    invoke-virtual {v9}, Landroid/view/View;->isShown()Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v7

    goto :goto_1

    .line 985
    :cond_1
    invoke-interface {v8}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 986
    iget-object v10, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v10}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v10

    invoke-interface {v8}, Lcom/miui/home/launcher/DropTarget;->getHitView()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v3, v12}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[IZ)F

    move-result v10

    .line 987
    aget v11, v3, v12

    aget v13, v3, v7

    aget v14, v3, v12

    int-to-float v14, v14

    .line 988
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v10

    add-float/2addr v14, v15

    float-to-int v14, v14

    aget v15, v3, v7

    int-to-float v15, v15

    .line 989
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v15, v7

    float-to-int v7, v15

    .line 987
    invoke-virtual {v4, v11, v13, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 991
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 992
    aget v4, v3, v12

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v10

    mul-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v12

    const/4 v10, 0x1

    .line 993
    aget v4, v3, v10

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v10

    .line 994
    aget v4, v3, v12

    sub-int/2addr v1, v4

    aput v1, v3, v12

    .line 995
    aget v1, v3, v10

    sub-int v1, v2, v1

    aput v1, v3, v10

    return-object v8

    :cond_2
    const/4 v10, 0x1

    :goto_1
    add-int/lit8 v6, v6, -0x1

    move v7, v10

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getViewsFromInfos([Lcom/miui/home/launcher/ShortcutInfo;)[Lcom/miui/home/launcher/ShortcutIcon;
    .locals 3

    .line 184
    array-length v0, p1

    new-array v0, v0, [Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v1, 0x0

    .line 185
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 186
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v2

    aput-object v2, v0, v1

    .line 187
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->restoreToInitState()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleMoveEvent(IILandroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 639
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

    .line 641
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 642
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v7, v1, v2}, Lcom/miui/home/launcher/DragObject;->move(II)V

    if-eqz v4, :cond_2

    .line 644
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;

    .line 645
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v8}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 650
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    return-void

    .line 656
    :cond_2
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 657
    invoke-direct {v0, v1, v2, v4}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v7

    .line 658
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-eqz v8, :cond_3

    if-eq v7, v8, :cond_3

    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 660
    invoke-interface {v8, v9}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 661
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v9}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 662
    iget-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v8, v9}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    :cond_3
    const/4 v8, 0x0

    .line 664
    iput-object v8, v0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    .line 666
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget v10, v4, v5

    iput v10, v9, Lcom/miui/home/launcher/DragObject;->x:I

    .line 667
    aget v4, v4, v6

    iput v4, v9, Lcom/miui/home/launcher/DragObject;->y:I

    if-eqz v7, :cond_7

    .line 669
    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v18, v7

    move-object v7, v4

    move-object/from16 v4, v18

    goto :goto_2

    :cond_4
    move-object v4, v8

    .line 676
    :goto_2
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 677
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eq v9, v7, :cond_5

    .line 678
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    .line 679
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 680
    iput-object v7, v0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    .line 682
    :cond_5
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v9}, Lcom/miui/home/launcher/DropTarget;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_3

    .line 684
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    goto :goto_3

    .line 687
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cleanLastDropTarget()V

    move-object v4, v8

    .line 692
    :goto_3
    iget-object v9, v0, Lcom/miui/home/launcher/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    if-eqz v9, :cond_8

    int-to-float v10, v1

    int-to-float v11, v2

    .line 693
    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    goto :goto_4

    :cond_8
    move v9, v5

    .line 698
    :goto_4
    iget-object v10, v0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v10

    .line 699
    iget v11, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    int-to-double v11, v11

    iget-object v13, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    aget v13, v13, v5

    sub-int/2addr v13, v1

    int-to-double v13, v13

    move/from16 v16, v9

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 700
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

    .line 701
    iget-object v6, v0, Lcom/miui/home/launcher/DragController;->mLastTouch:[I

    aput v1, v6, v5

    const/4 v7, 0x1

    .line 702
    aput v2, v6, v7

    .line 704
    instance-of v6, v4, Lcom/miui/home/launcher/DragScroller;

    if-eqz v6, :cond_9

    move-object v8, v4

    check-cast v8, Lcom/miui/home/launcher/DragScroller;

    move-object/from16 v7, v17

    goto :goto_5

    :cond_9
    move-object/from16 v7, v17

    const/4 v8, 0x0

    .line 705
    :goto_5
    instance-of v6, v7, Lcom/miui/home/launcher/DragScroller;

    if-eqz v6, :cond_a

    move-object v8, v7

    check-cast v8, Lcom/miui/home/launcher/DragScroller;

    :cond_a
    if-eqz v7, :cond_b

    .line 707
    iget-object v6, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v7, v6}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    move v6, v5

    :goto_6
    if-eqz v4, :cond_d

    .line 708
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v4, v7}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    move v4, v5

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v4, 0x1

    .line 710
    :goto_8
    iget-object v7, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eq v8, v7, :cond_e

    if-eqz v6, :cond_e

    if-eqz v4, :cond_e

    return-void

    :cond_e
    if-eqz v8, :cond_10

    .line 714
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-nez v4, :cond_f

    .line 715
    iput-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    goto :goto_9

    :cond_f
    if-eq v4, v8, :cond_11

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    .line 718
    iput-object v8, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    goto :goto_9

    .line 721
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    const/4 v4, 0x0

    .line 722
    iput-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    .line 724
    :cond_11
    :goto_9
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-nez v4, :cond_12

    return-void

    .line 727
    :cond_12
    invoke-interface {v4}, Lcom/miui/home/launcher/DragScroller;->getScrollZone()I

    move-result v4

    const-wide/16 v6, 0x2bc

    if-nez v16, :cond_13

    if-ge v1, v4, :cond_13

    .line 729
    iget v3, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v3, :cond_17

    iget v3, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    if-le v3, v10, :cond_17

    const/4 v3, 0x1

    .line 730
    iput v3, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 731
    iget-object v3, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    invoke-interface {v3, v1, v2, v5}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(III)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 732
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 734
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    :cond_13
    if-nez v16, :cond_14

    .line 737
    iget-object v5, v0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_14

    .line 738
    iget v3, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    if-nez v3, :cond_17

    iget v3, v0, Lcom/miui/home/launcher/DragController;->mDistanceSinceScroll:I

    if-le v3, v10, :cond_17

    const/4 v3, 0x1

    .line 739
    iput v3, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 740
    iget-object v4, v0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    invoke-interface {v4, v1, v2, v3}, Lcom/miui/home/launcher/DragScroller;->onEnterScrollArea(III)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 741
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragController$ScrollRunnable;->setDirection(I)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 743
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 746
    :cond_14
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 747
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelDragScroll()V

    goto :goto_a

    :cond_15
    if-eqz v3, :cond_17

    .line 748
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-lez v2, :cond_17

    .line 749
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-lez v2, :cond_16

    int-to-float v1, v1

    .line 750
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

    if-lez v1, :cond_17

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 752
    iget-object v1, v0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_17

    .line 753
    iget v2, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v1, v3, v2}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    goto :goto_a

    :cond_16
    const/4 v1, -0x1

    .line 757
    iput v1, v0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    :cond_17
    :goto_a
    return-void
.end method

.method private isMoveOverShortcutMenuMoveThreshold(II)Z
    .locals 2

    .line 763
    iget v0, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    sub-int/2addr p1, v0

    int-to-double v0, p1

    iget p1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 764
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getShortcutMenuDisappearThreshold()I

    move-result v0

    int-to-double v0, v0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$setEachDragViewMinDropAnimationDuration$0(ILcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 223
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragView;->setMinDropAnimationDuration(I)V

    return-void
.end method

.method private obtainVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .line 855
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    .line 856
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 862
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(ILcom/miui/home/launcher/DropTarget;)V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V
    .locals 11

    move-object v10, p0

    move-object v1, p1

    move-object v4, p2

    .line 207
    iget-boolean v0, v10, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 210
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

    .line 211
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, v10, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    :cond_0
    return-void

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t auto drag again"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public autoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;II)V
    .locals 6

    .line 217
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

    .line 236
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 240
    invoke-direct {p0, v0, v0, p1}, Lcom/miui/home/launcher/DragController;->drop(FFLcom/miui/home/launcher/DropTarget;)V

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "can\'t drop without drag started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public autoDropBack()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mAutoDraged:Z

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->autoDropBack()V

    .line 232
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t auto drop without drag started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelDrag()V
    .locals 3

    .line 552
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 553
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_1

    .line 558
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Z)V

    .line 561
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/DragSource;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V

    .line 563
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    return-void
.end method

.method public cancelScroll()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 545
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCurrentDragObject()Lcom/miui/home/launcher/DragObject;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object v0
.end method

.method public getIsScreenOrientationChanged()Z
    .locals 1

    .line 1093
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mIsScreenOrientationChanged:Z

    return v0
.end method

.method getVelocityX()F
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 869
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 870
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getVelocityY()F
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 877
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 878
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAppDragging(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 4

    .line 1126
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    if-eqz v0, :cond_1

    move v0, v1

    .line 1127
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1128
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1129
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 1130
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1131
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isDragging()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    return v0
.end method

.method public isFolderDragging(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 3

    .line 1142
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    if-eqz v0, :cond_1

    move v0, v1

    .line 1143
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1144
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v1

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v2

    .line 591
    iget-boolean v3, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 604
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    goto :goto_0

    :pswitch_1
    if-eqz v3, :cond_0

    .line 609
    invoke-direct {p0, v1, v2, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    int-to-float p1, v1

    int-to-float v0, v2

    .line 610
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    goto :goto_0

    .line 598
    :pswitch_2
    iput v1, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 599
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    const/4 p1, 0x0

    .line 600
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :goto_0
    :pswitch_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 771
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    .line 773
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 777
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v3

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v4

    and-int/lit16 v5, v1, 0xff

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 805
    :pswitch_1
    iget v0, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    if-ltz v0, :cond_a

    .line 806
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_1

    .line 807
    invoke-interface {v1, p1, v0}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    :cond_1
    const/4 p1, -0x1

    .line 809
    iput p1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    goto/16 :goto_3

    .line 784
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_2
    const v0, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 790
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v1

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/DragController;->clamp(III)I

    move-result v0

    .line 793
    iget-object v2, p0, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 794
    instance-of v1, v0, Lcom/miui/home/launcher/DragScroller;

    if-eqz v1, :cond_3

    .line 795
    check-cast v0, Lcom/miui/home/launcher/DragScroller;

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    .line 796
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mSecondPointerScroller:Lcom/miui/home/launcher/DragScroller;

    iget v1, p0, Lcom/miui/home/launcher/DragController;->mSecondaryPointerId:I

    invoke-interface {v0, p1, v1}, Lcom/miui/home/launcher/DragScroller;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 798
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 799
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mShortcutMenuDragListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;

    .line 800
    iget-object v1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;->onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    goto :goto_0

    .line 847
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 848
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    goto :goto_3

    .line 829
    :pswitch_4
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 830
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->obtainVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 832
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 833
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 835
    :cond_5
    invoke-direct {p0, v3, v4, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    goto :goto_3

    .line 838
    :pswitch_5
    invoke-direct {p0, v3, v4, p1}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    .line 839
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 840
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz p1, :cond_6

    int-to-float p1, v3

    int-to-float v0, v4

    .line 841
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/DragController;->drop(FF)V

    .line 843
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->endDrag()V

    .line 844
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->recycleVelocityTracker()V

    goto :goto_3

    .line 814
    :pswitch_6
    iput v3, p0, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 815
    iput v4, p0, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 816
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragScroller:Lcom/miui/home/launcher/DragScroller;

    if-eqz p1, :cond_9

    .line 817
    invoke-interface {p1}, Lcom/miui/home/launcher/DragScroller;->getScrollZone()I

    move-result p1

    if-lt v3, p1, :cond_8

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v3, v0, :cond_7

    goto :goto_1

    .line 823
    :cond_7
    iput v2, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    goto :goto_2

    .line 819
    :cond_8
    :goto_1
    iput v6, p0, Lcom/miui/home/launcher/DragController;->mScrollState:I

    .line 820
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 821
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mScrollRunnable:Lcom/miui/home/launcher/DragController$ScrollRunnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 826
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/DragController;->obtainVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    :goto_3
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1064
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    .line 1066
    iget-object p1, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 p1, 0x0

    .line 1067
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mLastDropTarget:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    return-void
.end method

.method public setEachDragViewMinDropAnimationDuration(I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$DragController$fxA386_LGQPnE1w_93Ii8CMbnD0;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$DragController$fxA386_LGQPnE1w_93Ii8CMbnD0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragObject;->forEachDragView(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public setIsScreenOrientationChanged(Z)V
    .locals 0

    .line 1089
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragController;->mIsScreenOrientationChanged:Z

    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mMoveTarget:Landroid/view/View;

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/miui/home/launcher/DragController;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V
    .locals 8

    const/4 v0, 0x1

    .line 179
    new-array v3, v0, [Lcom/miui/home/launcher/DragSource;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

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

    .line 200
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    .line 201
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/DragController;->autoDrop(Lcom/miui/home/launcher/DropTarget;)V

    return-void
.end method

.method public startAutoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 196
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
    .locals 11

    move-object v10, p0

    move-object v0, p1

    move v1, p4

    move/from16 v2, p5

    .line 264
    invoke-direct {p0, p1, p4, v2}, Lcom/miui/home/launcher/DragController;->createDrawableHolder(Landroid/graphics/drawable/Drawable;II)Landroid/view/View;

    move-result-object v0

    move-object v1, p3

    .line 265
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 266
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 270
    new-array v3, v1, [Landroid/view/View;

    aput-object v0, v3, v2

    new-array v4, v1, [Lcom/miui/home/launcher/DragSource;

    aput-object p7, v4, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, v3

    move v2, p2

    move/from16 v3, p6

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result v0

    return v0
.end method

.method public startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z
    .locals 11

    const/4 v0, 0x1

    .line 274
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

    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result p1

    return p1
.end method

.method public startDrag([Landroid/view/View;ZFLcom/miui/home/launcher/DragSource;IIZ)Z
    .locals 11

    const/4 v0, 0x1

    .line 279
    new-array v5, v0, [Lcom/miui/home/launcher/DragSource;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z

    move-result v0

    return v0
.end method

.method public startDrag([Landroid/view/View;ZF[Lcom/miui/home/launcher/DragSource;IIZIF)Z
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    .line 292
    iget-boolean v0, v8, Lcom/miui/home/launcher/DragController;->mDragging:Z

    const/4 v13, 0x0

    if-nez v0, :cond_e

    array-length v0, v9

    if-gtz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v14, 0x1

    if-eqz v10, :cond_1

    .line 294
    array-length v0, v10

    if-le v0, v14, :cond_1

    array-length v0, v10

    array-length v1, v9

    if-eq v0, v1, :cond_1

    return v13

    .line 298
    :cond_1
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Lcom/miui/home/launcher/DragLayer;->setClipForDragging(Landroid/graphics/Rect;)V

    const/4 v0, 0x4

    if-eq v11, v0, :cond_3

    .line 306
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_2

    .line 307
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v1, "input_method"

    .line 308
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v8, Lcom/miui/home/launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 310
    :cond_2
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    aget-object v1, v9, v13

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 315
    :cond_3
    array-length v0, v9

    new-array v7, v0, [Lcom/miui/home/launcher/DragView;

    .line 316
    array-length v0, v9

    sub-int/2addr v0, v14

    move/from16 v16, v0

    :goto_0
    if-ltz v16, :cond_9

    .line 317
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    .line 318
    iget-object v1, v8, Lcom/miui/home/launcher/DragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    aget-object v2, v9, v16

    invoke-virtual {v1, v2, v0, v14}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[IZ)F

    move-result v1

    .line 319
    aget v6, v0, v13

    .line 320
    aget v5, v0, v14

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

    .line 325
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDragIconScaleRatio()F

    move-result v0

    mul-float v0, v0, v18

    aget-object v1, v9, v16

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    move/from16 v19, v0

    goto :goto_2

    :cond_5
    move/from16 v19, p3

    :goto_2
    if-eqz v12, :cond_6

    .line 328
    iput v6, v8, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    .line 329
    iput v5, v8, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    .line 332
    :cond_6
    aget-object v1, v9, v16

    add-int v4, v16, p8

    array-length v3, v9

    array-length v0, v10

    if-ne v0, v14, :cond_7

    aget-object v0, v10, v13

    goto :goto_3

    :cond_7
    aget-object v0, v10, v16

    :goto_3
    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v20, v3

    move/from16 v3, p5

    move v14, v5

    move/from16 v5, p7

    move v15, v6

    move/from16 v6, v20

    move-object v13, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/DragController;->createDragView(Landroid/view/View;ZIIZILcom/miui/home/launcher/DragSource;)Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 336
    iget v1, v8, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v2, v8, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    invoke-virtual {v0, v1, v2, v15, v14}, Lcom/miui/home/launcher/DragView;->initRegistrationOffset(IIII)V

    .line 337
    iget v1, v8, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v2, v8, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v15

    move/from16 v23, v14

    invoke-virtual/range {v17 .. v23}, Lcom/miui/home/launcher/DragView;->showWithAnim(FFIIII)V

    .line 339
    :cond_8
    aput-object v0, v13, v16

    add-int/lit8 v16, v16, -0x1

    move-object v7, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v13, v7

    .line 342
    new-instance v0, Lcom/miui/home/launcher/DragObject;

    invoke-direct {v0, v13}, Lcom/miui/home/launcher/DragObject;-><init>([Lcom/miui/home/launcher/DragView;)V

    iput-object v0, v8, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 343
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    iget-object v1, v8, Lcom/miui/home/launcher/DragController;->mDropAnimationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragObject;->setDragAnimationListener(Ljava/util/ArrayList;)V

    .line 344
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v1, 0x0

    aget-object v2, v13, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getRegistrationX()I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    .line 345
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    aget-object v2, v13, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getRegistrationY()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    .line 346
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    iput v11, v0, Lcom/miui/home/launcher/DragObject;->dragAction:I

    move/from16 v1, p6

    .line 347
    iput v1, v0, Lcom/miui/home/launcher/DragObject;->dropAction:I

    .line 348
    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/DragObject;->setIsAutoDraged(Z)V

    if-nez v12, :cond_b

    .line 351
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DragController$DragListener;

    .line 352
    iget-object v2, v8, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v1, v10, v2}, Lcom/miui/home/launcher/DragController$DragListener;->onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V

    goto :goto_4

    .line 354
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v13, v1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performPickUp(Landroid/view/View;)V

    .line 356
    :cond_b
    new-instance v0, Lcom/miui/home/launcher/DragController$1;

    invoke-direct {v0, v8}, Lcom/miui/home/launcher/DragController$1;-><init>(Lcom/miui/home/launcher/DragController;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(Ljava8/util/function/Supplier;)V

    .line 367
    iget v0, v8, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v1, v8, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    iget-object v2, v8, Lcom/miui/home/launcher/DragController;->mCoordinatesTemp:[I

    invoke-direct {v8, v0, v1, v2}, Lcom/miui/home/launcher/DragController;->findDropTarget(II[I)Lcom/miui/home/launcher/DropTarget;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    if-nez v12, :cond_d

    .line 369
    iget-object v0, v8, Lcom/miui/home/launcher/DragController;->mDropTargetWhenDragStarted:Lcom/miui/home/launcher/DropTarget;

    instance-of v1, v0, Lcom/miui/home/launcher/HotSeats;

    if-nez v1, :cond_c

    instance-of v0, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_d

    .line 371
    :cond_c
    iget v0, v8, Lcom/miui/home/launcher/DragController;->mMotionDownX:I

    iget v1, v8, Lcom/miui/home/launcher/DragController;->mMotionDownY:I

    const/4 v2, 0x0

    invoke-direct {v8, v0, v1, v2}, Lcom/miui/home/launcher/DragController;->handleMoveEvent(IILandroid/view/MotionEvent;)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x1

    .line 374
    :goto_5
    iput-boolean v0, v8, Lcom/miui/home/launcher/DragController;->mDragging:Z

    .line 375
    iget-object v1, v8, Lcom/miui/home/launcher/DragController;->mDragObject:Lcom/miui/home/launcher/DragObject;

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragObject;->setStateAnnouncer(Lcom/miui/home/launcher/DragViewStateAnnouncer;)V

    .line 376
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/DragMessage;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    return v0

    :cond_e
    :goto_6
    move v2, v13

    return v2
.end method

.method public startDrag([Lcom/miui/home/launcher/ShortcutInfo;ZF[Lcom/miui/home/launcher/DragSource;IIZ)Z
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 287
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
