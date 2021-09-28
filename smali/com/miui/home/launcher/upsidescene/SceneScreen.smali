.class public Lcom/miui/home/launcher/upsidescene/SceneScreen;
.super Landroid/widget/FrameLayout;
.source "SceneScreen.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;
    }
.end annotation


# static fields
.field private static final sTmpReverseMatrix:Landroid/graphics/Matrix;


# instance fields
.field private mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

.field private mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

.field private mContext:Landroid/content/Context;

.field private mCurrentGestureFinished:Z

.field private mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

.field private mDropLocation:[I

.field private mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

.field private mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

.field private mEditModeScaleFactor:F

.field private mEditingState:I

.field private mExitSceneReceiver:Landroid/content/BroadcastReceiver;

.field private mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

.field private mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

.field private mIsStarted:Z

.field private mIsTouchExecutedThisTime:Z

.field private mLastGadgetId:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOldWpOffsetX:F

.field private mOldWpStepX:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

.field private mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

.field private mSerializer:Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;

.field private mShowHideAnimating:Z

.field private mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->sTmpReverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 134
    iput p2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    const/4 p2, 0x2

    .line 148
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDropLocation:[I

    .line 158
    new-instance p2, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$1;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance p2, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSerializer:Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;

    .line 176
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->removeAllSprites(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mCurrentGestureFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSerializer:Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reload()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/AppsSelectView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->gotoEditModeAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->animatedRefresh()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditModeInner(Z)V

    return-void
.end method

.method private animatedRefresh()V
    .locals 1

    .line 582
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkIsTransformedTouchPointInView(Landroid/view/ViewGroup;Landroid/view/View;[F)Z
    .locals 5

    const/4 v0, 0x0

    .line 377
    aget v1, p3, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p3, v0

    const/4 v1, 0x1

    .line 378
    aget v2, p3, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    add-float/2addr v2, p1

    aput v2, p3, v1

    .line 379
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    sget-object v2, Lcom/miui/home/launcher/upsidescene/SceneScreen;->sTmpReverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 382
    sget-object p1, Lcom/miui/home/launcher/upsidescene/SceneScreen;->sTmpReverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 384
    :cond_0
    aget p1, p3, v0

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    aget p1, p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    aget p1, p3, v1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    aget p1, p3, v1

    .line 385
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private dragSpriteView(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 8

    .line 451
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 452
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setState(I)V

    .line 453
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 454
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    const/4 p1, 0x1

    new-array v1, p1, [Landroid/view/View;

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    .line 455
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/DragController;->startDrag([Landroid/view/View;ZFLcom/miui/home/launcher/DragSource;IIZ)Z

    .line 458
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 459
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    :cond_0
    return-void
.end method

.method private exitEditModeInner(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 595
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    .line 597
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->save()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 600
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    const-string v3, "scaleX"

    new-array v4, v0, [F

    aput v1, v4, v2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 601
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 602
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 604
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    const-string v3, "scaleY"

    new-array v4, v0, [F

    aput v1, v4, v2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 605
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 606
    new-instance v1, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 614
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->widthTo(I)V

    .line 616
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->startScrollAnimation(I)V

    .line 618
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    const-string v1, "scrollX"

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 619
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 620
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 622
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setScaleX(F)V

    .line 623
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setScaleY(F)V

    .line 624
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->setVisibility(I)V

    .line 625
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->animatedRefresh()V

    .line 626
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setOverWidth(I)V

    .line 627
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScrollX(I)V

    .line 630
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->exitEditMode()V

    .line 631
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->exitEditMode()V

    return-void
.end method

.method private getLocation(Lcom/miui/home/launcher/DragObject;[I)[I
    .locals 4

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 1139
    new-array p2, p2, [I

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1142
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v1, :cond_2

    .line 1143
    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    goto :goto_1

    .line 1145
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v1

    .line 1147
    :goto_1
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[IZ)F

    .line 1148
    aget p1, p2, v3

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p1, v1

    aput p1, p2, v3

    const/4 p1, 0x1

    .line 1149
    aget v1, p2, p1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    aput v0, p2, p1

    return-object p2
.end method

.method private getTouchedSpriteView(FFZ)Lcom/miui/home/launcher/upsidescene/SpriteView;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getTouchedSpriteViewCore(Lcom/miui/home/launcher/upsidescene/FreeLayout;FFZ)Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getTouchedSpriteViewCore(Lcom/miui/home/launcher/upsidescene/FreeLayout;FFZ)Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getTouchedSpriteViewCore(Lcom/miui/home/launcher/upsidescene/FreeLayout;FFZ)Lcom/miui/home/launcher/upsidescene/SpriteView;
    .locals 8

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :cond_0
    const/4 v2, 0x0

    .line 341
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 342
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x2

    .line 345
    new-array v3, v1, [F

    aput p2, v3, v2

    const/4 p2, 0x1

    aput p3, v3, p2

    .line 346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 348
    invoke-direct {p0, v5, v0, v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->checkIsTransformedTouchPointInView(Landroid/view/ViewGroup;Landroid/view/View;[F)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    .line 352
    :cond_2
    new-array p3, v1, [F

    .line 353
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p2

    :goto_0
    if-ltz v0, :cond_9

    .line 354
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 357
    :cond_3
    instance-of v5, v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-nez v5, :cond_4

    goto :goto_1

    .line 359
    :cond_4
    move-object v5, v1

    check-cast v5, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz p4, :cond_5

    .line 361
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isMovable()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 363
    :cond_5
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 366
    :cond_6
    aget v6, v3, v2

    aput v6, p3, v2

    .line 367
    aget v6, v3, p2

    aput v6, p3, p2

    .line 368
    invoke-direct {p0, p1, v1, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->checkIsTransformedTouchPointInView(Landroid/view/ViewGroup;Landroid/view/View;[F)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    .line 369
    :cond_7
    aget v6, p3, v2

    float-to-int v6, v6

    aget v7, p3, p2

    float-to-int v7, v7

    invoke-direct {p0, v1, v6, v7}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isTransparent(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    return-object v5

    :cond_9
    return-object v4
.end method

.method private gotoEditModeAnimation()V
    .locals 6

    .line 515
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->calcHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    .line 517
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setPivotX(F)V

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setPivotY(F)V

    .line 523
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    const-string v1, "scaleX"

    const/4 v2, 0x1

    new-array v3, v2, [F

    iget v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 524
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 527
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    const-string v1, "scaleY"

    new-array v3, v2, [F

    iget v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 528
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 529
    new-instance v1, Lcom/miui/home/launcher/upsidescene/SceneScreen$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$3;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 534
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 536
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 537
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->widthTo(I)V

    .line 539
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->startScrollAnimation(I)V

    .line 541
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 542
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    const-string v3, "scrollX"

    new-array v2, v2, [I

    aput v0, v2, v5

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 543
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 544
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private isTransparent(Landroid/view/View;II)Z
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 396
    :try_start_0
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 405
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, p2, -0xa

    .line 407
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, p3, -0xa

    .line 408
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 409
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int/lit8 p2, p2, 0xa

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 410
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v6

    add-int/lit8 p3, p3, 0xa

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int/2addr p2, v3

    add-int/2addr p2, v6

    sub-int/2addr p3, v4

    add-int/2addr p3, v6

    mul-int/2addr v4, v2

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v4, v3

    sub-int/2addr p3, v6

    mul-int/2addr p3, v2

    add-int/2addr p3, v4

    .line 416
    invoke-static {v0}, Lcom/miui/home/library/utils/BitmapUtil;->getBuffer(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    :goto_0
    if-gt v4, p3, :cond_3

    add-int/lit8 v3, v4, 0x3

    add-int/lit8 v5, p2, -0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v3

    :goto_1
    if-gt v3, v5, :cond_2

    .line 421
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x19

    if-lt v7, v8, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_2
    add-int/2addr v4, v2

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    return v6

    :cond_4
    :goto_2
    return v1

    :catch_0
    return v1
.end method

.method private onDropExternal(Lcom/miui/home/launcher/DragObject;)Z
    .locals 5

    .line 1066
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDropLocation:[I

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLocation(Lcom/miui/home/launcher/DragObject;[I)[I

    .line 1071
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->createSpriteByUser()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 1073
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1120
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    .line 1121
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    new-instance v3, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-direct {v3, p1, v4}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setAppearance(Lcom/miui/home/launcher/upsidescene/data/Appearance;)V

    .line 1122
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 1112
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;

    .line 1113
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;

    .line 1114
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyle$MtzGadgetInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->setMtzRelativePath(Ljava/lang/String;)V

    .line 1115
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 1116
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    goto :goto_0

    .line 1075
    :pswitch_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    .line 1076
    iget p1, p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1083
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 1084
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showTogglesSelectView()V

    goto :goto_0

    .line 1093
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 1094
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    goto :goto_0

    .line 1088
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 1089
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->showSelectApps(Z)V

    goto :goto_0

    .line 1078
    :pswitch_7
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 1079
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->showSelectApps(Z)V

    goto :goto_0

    .line 1100
    :pswitch_8
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 1101
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 1102
    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    .line 1106
    :pswitch_9
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 1107
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 1108
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private onDropInternal(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 1059
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDropLocation:[I

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLocation(Lcom/miui/home/launcher/DragObject;[I)[I

    .line 1060
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDropLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->moveTo(II)V

    .line 1061
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getParentLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->bringToTop(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    return v2
.end method

.method private reload()V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-void
.end method

.method private removeAllSprites(Lcom/miui/home/launcher/upsidescene/FreeLayout;Z)V
    .locals 3

    .line 999
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1000
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 1001
    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->isUserCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 1002
    :cond_0
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->removeSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeAllSprites(Z)V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->removeAllSprites(Lcom/miui/home/launcher/upsidescene/FreeLayout;Z)V

    .line 995
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->removeAllSprites(Lcom/miui/home/launcher/upsidescene/FreeLayout;Z)V

    return-void
.end method

.method private setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(Lcom/miui/home/launcher/upsidescene/FreeLayout;ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(Lcom/miui/home/launcher/upsidescene/FreeLayout;ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    return-void
.end method

.method private setAllSpriteState(Lcom/miui/home/launcher/upsidescene/FreeLayout;ILcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 3

    .line 477
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 479
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eq v2, p3, :cond_0

    .line 481
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setState(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startScrollAnimation(I)V
    .locals 5

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v0

    if-lez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 571
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 572
    div-int/lit8 p1, p1, 0x2

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    const-string v1, "scrollX"

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 575
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v4

    sub-int/2addr v4, p1

    aput v4, v2, v3

    .line 574
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 576
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 577
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 1172
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 6

    .line 723
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 724
    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 725
    invoke-static {v0}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object v0

    .line 726
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 730
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 731
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    .line 732
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 731
    invoke-static {v2, v1, v3, v4, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "appWidgetId"

    .line 740
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v0, v2}, Lcom/miui/home/launcher/Application;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_1

    .line 745
    :cond_1
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 746
    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 748
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.DEFAULT"

    .line 749
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    .line 750
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 754
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 758
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 759
    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    :goto_0
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeAddAppWidget(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 764
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    :goto_1
    return-void
.end method

.method addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 4

    .line 716
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->generateSystemGadgetId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    .line 717
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    long-to-int p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->setGadgetInfo(II)V

    const/4 p1, 0x0

    .line 719
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 291
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 292
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 1

    const/16 v0, 0x10

    .line 1188
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyGadgets(I)V

    return-void
.end method

.method public closeSelectApps(Z)V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    .line 703
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    return-void
.end method

.method public completeAddAppWidget(Landroid/content/Intent;)V
    .locals 2

    .line 769
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    .line 770
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 772
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->setId(I)V

    const/4 p1, 0x0

    .line 774
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    return-void
.end method

.method public completeSelectToggle(I)V
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v0, :cond_4

    .line 821
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    .line 827
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 828
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    goto :goto_1

    .line 830
    :cond_1
    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    .line 831
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 833
    :goto_1
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->setToggleId(I)V

    .line 835
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    if-eq v0, p1, :cond_2

    .line 836
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V

    .line 839
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 840
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->refreshFreeButtonCheckbox()V

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mCurrentGestureFinished:Z

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionX:F

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionY:F

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->isBeingDragged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cancelLongPress()V

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 275
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchSlop:I

    if-gt v0, v4, :cond_3

    if-le v3, v4, :cond_4

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cancelLongPress()V

    .line 280
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsTouchExecutedThisTime:Z

    .line 281
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 283
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    return v2
.end method

.method public exitEditMode()V
    .locals 1

    const/4 v0, 0x1

    .line 591
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditModeInner(Z)V

    return-void
.end method

.method public exitEditableMode(ZZ)Z
    .locals 2

    .line 911
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->closeSelectApps(Z)V

    if-nez p2, :cond_0

    return v1

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 916
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return v1

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 922
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    if-nez p2, :cond_2

    return v1

    .line 925
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInMoveMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 926
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitMoveMode()V

    if-nez p2, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public exitMoveMode()V
    .locals 2

    const/4 v0, 0x1

    .line 556
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    .line 557
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->save()V

    .line 559
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->exitMoveMode()V

    .line 560
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->exitMoveMode()V

    const/4 v1, 0x0

    .line 561
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    return-void
.end method

.method public finishDropAddSpriteView(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1130
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    if-eqz p1, :cond_0

    .line 1131
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->addSprite(Lcom/miui/home/launcher/upsidescene/data/Sprite;)Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object p1

    .line 1132
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDropLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->moveTo(II)V

    .line 1133
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->gotoEditMode()V

    :cond_0
    const/4 p1, 0x0

    .line 1135
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    return-void
.end method

.method public generateSystemGadgetId()I
    .locals 3

    .line 707
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastGadgetId:I

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const-string v1, "pref_free_style_last_gadget_id"

    const v2, 0x5f5e100

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastGadgetId:I

    .line 710
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastGadgetId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastGadgetId:I

    .line 711
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const-string v1, "pref_free_style_last_gadget_id"

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastGadgetId:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 712
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastGadgetId:I

    return v0
.end method

.method public getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDragScroller()Lcom/miui/home/launcher/DragScroller;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    return-object v0
.end method

.method public getEditModeScaleFactor()F
    .locals 1

    .line 487
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    return v0
.end method

.method public getEditingState()I
    .locals 1

    .line 639
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    return v0
.end method

.method public getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    return-object v0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoEditMode()V
    .locals 2

    .line 491
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInMoveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitMoveMode()V

    :cond_1
    const/4 v0, 0x2

    .line 499
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->gotoEditMode()V

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->gotoEditMode()V

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 507
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$2;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public gotoMoveMode()V
    .locals 2

    const/4 v0, 0x3

    .line 548
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    .line 550
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->gotoMoveMode()V

    .line 551
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getFreeLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->gotoMoveMode()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 552
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    return-void
.end method

.method public isCurrentGestureFinished()Z
    .locals 1

    .line 858
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mCurrentGestureFinished:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInEditMode()Z
    .locals 2

    .line 635
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMoveMode()Z
    .locals 2

    .line 565
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectViewShowing()Z
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    .line 900
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyGadgets(I)V
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->notifyGadgets(I)V

    .line 956
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->notifyGadgets(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 958
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    :cond_0
    return-void
.end method

.method public notifyScrollableScreenScrolling()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 242
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getChildWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 246
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScrollX(I)V

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getChildWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 250
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScrollX(I)V

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 253
    iget-boolean v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    if-nez v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    .line 907
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditableMode(ZZ)Z

    move-result v0

    return v0
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1028
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1029
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setVisibility(I)V

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInMoveMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 1034
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 1036
    :goto_0
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 1037
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->switchEditWidgetBar()V

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
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 1051
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1052
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onDropInternal(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    return p1

    .line 1054
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onDropExternal(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    return p1
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

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

.method public onExternalDragEnd()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 468
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    return-void
.end method

.method public onExternalDragStart()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 464
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 181
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a019f

    .line 183
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneContentView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    const v0, 0x7f0a00c9

    .line 184
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    const v0, 0x7f0a00f4

    .line 185
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FixedScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    const v0, 0x7f0a006a

    .line 186
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FixedScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    const v0, 0x7f0a01a7

    .line 187
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    const v0, 0x7f0a00bc

    .line 188
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FixedScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    .line 190
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/SceneScreen$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mTouchSlop:I

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setClickable(Z)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setLongClickable(Z)V

    return-void
.end method

.method public onHideAnimationEnd()V
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStop()V

    const/4 v0, 0x0

    .line 895
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    return-void
.end method

.method public onHideAnimationStart()V
    .locals 4

    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    .line 890
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpStepX:F

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpOffsetX:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffsetAnimate(FFFF)Z

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 933
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditableMode(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getHome()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    return-void
.end method

.method onPinchIn(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 651
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->gotoEditMode()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method onPinchOut(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 643
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectApps(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v0, :cond_6

    .line 782
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_2

    .line 789
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 790
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    goto :goto_1

    .line 792
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    .line 793
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    .line 795
    :goto_1
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->setComponentNames(Ljava/util/List;)V

    goto :goto_3

    .line 798
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 799
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;

    goto :goto_2

    .line 801
    :cond_3
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/data/Function;->createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;

    .line 802
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setFunction(Lcom/miui/home/launcher/upsidescene/data/Function;)V

    :goto_2
    const/4 v1, 0x0

    .line 804
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->setComponentName(Landroid/content/ComponentName;)V

    .line 807
    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    if-eq v0, p1, :cond_4

    .line 808
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V

    .line 811
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 812
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->refreshFreeButtonCheckbox()V

    :cond_5
    return-void

    :cond_6
    return-void
.end method

.method public onShowAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 885
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    return-void
.end method

.method public onShowAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    .line 866
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mShowHideAnimating:Z

    const/4 v0, 0x0

    .line 867
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setVisibility(I)V

    .line 868
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStart()V

    .line 870
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWpStepX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpStepX:F

    .line 871
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWpOffsetX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mOldWpOffsetX:F

    .line 873
    new-instance v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 948
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.home.launcher.upsidescene.SceneScreen.EXIT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 950
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 941
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mExitSceneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 943
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsStarted:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 299
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mIsTouchExecutedThisTime:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeScaleFactor:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 307
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 3

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionX:F

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionY:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getTouchedSpriteView(FFZ)Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    const/4 v0, 0x1

    return v0

    .line 325
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 3

    .line 434
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInMoveMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->gotoMoveMode()V

    .line 442
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionX:F

    iget v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLastMotionY:F

    invoke-direct {p0, v0, v2, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getTouchedSpriteView(FFZ)Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 444
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->dragSpriteView(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    :cond_2
    return v1
.end method

.method public reinit()V
    .locals 1

    const/16 v0, 0xf

    .line 1184
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyGadgets(I)V

    return-void
.end method

.method public removeDraggedSprite()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getParentLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDraggedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->removeSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 847
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 848
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cancelLongPress()V

    .line 315
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    if-eqz v0, :cond_0

    .line 968
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    .line 969
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x1040014

    .line 970
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 971
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f100302

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 972
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 973
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f1000a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 974
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f100105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 989
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public save()V
    .locals 2

    .line 1180
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSerializer:Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;->save(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 2

    .line 659
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 660
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 661
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setState(I)V

    const/4 p1, 0x4

    .line 662
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 664
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 665
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 666
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->showSelectApps(Z)V

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isDragging()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 670
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setAllSpriteState(ILcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 674
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->switchEditWidgetBar()V

    return-void
.end method

.method public setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mFreeStyle:Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneContent:Lcom/miui/home/launcher/upsidescene/SceneContentView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneContentView;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mForegroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getForegroundScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mBackgroundScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getBackgroundScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDriftScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mDockScreen:Lcom/miui/home/launcher/upsidescene/FixedScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getDockScreen()Lcom/miui/home/launcher/upsidescene/data/Screen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FixedScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 200
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public showSelectApps(Z)V
    .locals 4

    .line 678
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSpriteForDrop:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditFocusedSprite:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    .line 679
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    if-nez v1, :cond_3

    .line 680
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 683
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    .line 684
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->getComponentNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 687
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 688
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;

    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_2
    :goto_1
    new-instance v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    invoke-direct {v0, v2, p0, v1, p1}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/SceneScreen;[Landroid/content/ComponentName;Z)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    .line 693
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method
