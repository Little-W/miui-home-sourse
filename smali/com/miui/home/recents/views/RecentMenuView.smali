.class public Lcom/miui/home/recents/views/RecentMenuView;
.super Landroid/widget/FrameLayout;
.source "RecentMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/RecentMenuView$_lancet;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private mIsTaskViewLeft:Z

.field mIsTouchInTaskViewBound:Z

.field mLockDrawable:Landroid/graphics/drawable/Drawable;

.field private mMenuItemInfo:Landroid/widget/ImageView;

.field private mMenuItemInfoContainer:Landroid/widget/FrameLayout;

.field private mMenuItemLock:Landroid/widget/ImageView;

.field private mMenuItemLockContainer:Landroid/widget/FrameLayout;

.field private mMenuItemMultiWindow:Landroid/widget/ImageView;

.field private mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

.field private mMenuItemSmallWindow:Landroid/widget/ImageView;

.field private mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

.field private mScreeningToast:Landroid/widget/Toast;

.field private mShowDock:Z

.field private mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

.field mShowOrHideAnim:Landroid/animation/ValueAnimator;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

.field private mTaskView:Lcom/miui/home/recents/views/TaskView;

.field mTaskViewBound:Landroid/graphics/Rect;

.field mUnlockDrawable:Landroid/graphics/drawable/Drawable;

.field private mVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    .line 84
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    .line 87
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 89
    new-instance p3, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {p3}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p3, 0x1

    .line 95
    iput-boolean p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f08012f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f080133

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0701bf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setTranslationZ(F)V

    const/16 p1, 0x8

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setVisibility(I)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->setClipChildren(Z)V

    .line 117
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    .line 120
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xb4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/views/RecentMenuView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentMenuView$1;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/RecentMenuView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskStackView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/views/RecentMenuView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method private isSupportMultiWindow()Z
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportsMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$null$0(Lcom/miui/home/recents/views/RecentMenuView;Z)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->showOrHideLockImageView(Z)V

    return-void
.end method

.method public static synthetic lambda$onClick$1(Lcom/miui/home/recents/views/RecentMenuView;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 234
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendLockTaskEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendUnlockTaskEvent(Ljava/lang/String;)V

    .line 238
    :goto_0
    new-instance p2, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$FvDrM1oG3u88MtQfHuVO1a95P1s;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$FvDrM1oG3u88MtQfHuVO1a95P1s;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Z)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$onMessageEvent$2(Lcom/miui/home/recents/views/RecentMenuView;Ljava/lang/String;ILjava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 550
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onMessageEvent$3(Lcom/miui/home/recents/views/RecentMenuView;Ljava/lang/Boolean;)V
    .locals 0

    .line 552
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setMenuItemSmallWindowEnable(Z)V

    return-void
.end method

.method private layoutItemWithSmallWindow(Landroid/graphics/Rect;III)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    const/4 v1, 0x4

    .line 446
    new-array v9, v1, [I

    .line 447
    new-array v10, v1, [I

    .line 450
    iget-boolean v2, v7, Lcom/miui/home/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v11, 0x3

    const/4 v6, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eqz v2, :cond_0

    .line 451
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    int-to-float v14, v8

    mul-float v15, v14, v5

    add-float/2addr v2, v15

    float-to-int v2, v2

    aput v2, v9, v11

    aput v2, v9, v6

    .line 452
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v14, v3

    add-float/2addr v2, v14

    float-to-int v2, v2

    aput v2, v9, v13

    aput v2, v9, v12

    .line 453
    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    goto :goto_0

    .line 456
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v14, v8

    mul-float v15, v14, v4

    sub-float/2addr v2, v15

    float-to-int v2, v2

    aput v2, v9, v11

    aput v2, v9, v6

    .line 457
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const v15, 0x3fe66666    # 1.8f

    mul-float/2addr v14, v15

    sub-float/2addr v2, v14

    float-to-int v2, v2

    aput v2, v9, v13

    aput v2, v9, v12

    .line 458
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    .line 461
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3dcccccd    # 0.1f

    int-to-float v1, v8

    mul-float v16, v16, v1

    add-float v15, v15, v16

    float-to-int v15, v15

    aput v15, v10, v13

    .line 462
    aget v15, v10, v13

    int-to-float v15, v15

    const v16, 0x3f99999a    # 1.2f

    mul-float v16, v16, v1

    sub-float v15, v15, v16

    float-to-int v15, v15

    aput v15, v10, v12

    .line 463
    aget v15, v10, v12

    int-to-float v15, v15

    sub-float v15, v15, v16

    float-to-int v15, v15

    aput v15, v10, v6

    .line 464
    aget v15, v10, v13

    int-to-float v15, v15

    add-float v15, v15, v16

    float-to-int v15, v15

    aput v15, v10, v11

    .line 466
    aget v15, v10, v6

    iget v3, v7, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    const v17, 0x3f333333    # 0.7f

    const v18, 0x3ecccccd    # 0.4f

    const v19, 0x3fb33333    # 1.4f

    if-ge v15, v3, :cond_2

    .line 467
    iget-boolean v2, v7, Lcom/miui/home/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    if-eqz v2, :cond_1

    .line 468
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float v18, v18, v1

    add-float v2, v2, v18

    float-to-int v2, v2

    aput v2, v9, v6

    .line 469
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v9, v12

    .line 470
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v9, v13

    .line 471
    aget v2, v9, v13

    int-to-float v2, v2

    sub-float v2, v2, v16

    float-to-int v2, v2

    aput v2, v9, v11

    .line 472
    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v8, 0x2

    sub-int/2addr v2, v3

    .line 473
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    goto :goto_1

    .line 475
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v19, v19, v1

    sub-float v2, v2, v19

    float-to-int v2, v2

    aput v2, v9, v6

    .line 476
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v9, v12

    .line 477
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v5, v1

    sub-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v9, v13

    .line 478
    aget v2, v9, v13

    int-to-float v2, v2

    add-float v2, v2, v16

    float-to-int v2, v2

    aput v2, v9, v11

    .line 479
    iget v2, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v2, v3

    .line 480
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    .line 482
    :goto_1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v10, v12

    .line 483
    aget v0, v10, v12

    int-to-float v0, v0

    sub-float v0, v0, v16

    float-to-int v0, v0

    aput v0, v10, v6

    .line 484
    aget v0, v10, v12

    int-to-float v0, v0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v10, v13

    .line 485
    aget v0, v10, v12

    int-to-float v0, v0

    mul-float v1, v1, v17

    add-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, v10, v11

    move v14, v2

    move v15, v4

    goto/16 :goto_3

    .line 486
    :cond_2
    aget v15, v10, v11

    add-int/2addr v15, v8

    sub-int v3, p4, v3

    if-le v15, v3, :cond_4

    .line 487
    iget-boolean v2, v7, Lcom/miui/home/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    if-eqz v2, :cond_3

    .line 488
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v5, v1

    sub-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v9, v12

    .line 489
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v9, v13

    .line 490
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float v18, v18, v1

    add-float v2, v2, v18

    float-to-int v2, v2

    aput v2, v9, v11

    .line 491
    aget v2, v9, v12

    int-to-float v2, v2

    sub-float v2, v2, v16

    float-to-int v2, v2

    aput v2, v9, v6

    .line 492
    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v8, 0x2

    sub-int/2addr v2, v3

    .line 493
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    goto :goto_2

    .line 495
    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v5, v1

    sub-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v9, v12

    .line 496
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v9, v13

    .line 497
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v19, v19, v1

    sub-float v2, v2, v19

    float-to-int v2, v2

    aput v2, v9, v11

    .line 498
    aget v2, v9, v12

    int-to-float v2, v2

    add-float v2, v2, v16

    float-to-int v2, v2

    aput v2, v9, v6

    .line 499
    iget v2, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v2, v3

    .line 500
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    .line 502
    :goto_2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v17, v17, v1

    sub-float v0, v0, v17

    float-to-int v0, v0

    aput v0, v10, v13

    .line 503
    aget v0, v10, v13

    int-to-float v0, v0

    sub-float v0, v0, v17

    float-to-int v0, v0

    aput v0, v10, v6

    .line 504
    aget v0, v10, v13

    int-to-float v0, v0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, v10, v12

    .line 505
    aget v0, v10, v13

    int-to-float v0, v0

    add-float v0, v0, v16

    float-to-int v0, v0

    aput v0, v10, v11

    move v14, v2

    move v15, v4

    goto :goto_3

    :cond_4
    move v15, v14

    move v14, v2

    :goto_3
    move v0, v6

    const/4 v1, 0x4

    :goto_4
    if-ge v0, v1, :cond_5

    .line 509
    aget v2, v9, v0

    sub-int v3, p3, v8

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 512
    :cond_5
    iget-object v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    aget v2, v9, v6

    aget v3, v10, v6

    move-object/from16 v0, p0

    move v4, v14

    move v5, v15

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 513
    iget-object v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    aget v2, v9, v12

    aget v3, v10, v12

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 514
    iget-object v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    aget v2, v9, v13

    aget v3, v10, v13

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 515
    iget-object v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    aget v2, v9, v11

    aget v3, v10, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    return-void
.end method

.method private layoutItemWithoutSmallWindow(Landroid/graphics/Rect;III)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    const/4 v1, 0x3

    .line 381
    new-array v9, v1, [I

    .line 382
    new-array v10, v1, [I

    .line 385
    iget-boolean v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3fb33333    # 1.4f

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v1, :cond_0

    .line 386
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    int-to-float v5, v8

    mul-float v6, v5, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v9, v12

    aput v1, v9, v4

    .line 387
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v9, v11

    .line 388
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v8

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    goto :goto_0

    .line 391
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v5, v8

    mul-float v6, v5, v3

    sub-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v9, v12

    aput v1, v9, v4

    .line 392
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v6, 0x3ff33333    # 1.9f

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v9, v11

    .line 393
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v8

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 396
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    const/high16 v13, 0x3f000000    # 0.5f

    int-to-float v14, v8

    mul-float/2addr v13, v14

    sub-float/2addr v6, v13

    float-to-int v6, v6

    aput v6, v10, v11

    .line 397
    aget v6, v10, v11

    int-to-double v2, v6

    const-wide v16, 0x3ff3333333333333L    # 1.2

    move v6, v14

    int-to-double v13, v8

    mul-double v16, v16, v13

    sub-double v2, v2, v16

    double-to-int v2, v2

    aput v2, v10, v4

    .line 398
    aget v2, v10, v11

    int-to-double v2, v2

    add-double v2, v2, v16

    double-to-int v2, v2

    aput v2, v10, v12

    .line 400
    aget v2, v10, v4

    iget v3, v7, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    const v16, 0x3f19999a    # 0.6f

    const v17, 0x3fcccccd    # 1.6f

    if-ge v2, v3, :cond_2

    .line 401
    iget-boolean v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    if-eqz v1, :cond_1

    .line 402
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float v2, v6, v16

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v9, v4

    .line 403
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v3, v6, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v9, v11

    .line 404
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v8

    aput v1, v9, v12

    .line 405
    iget v1, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v8, 0x2

    sub-int/2addr v1, v3

    .line 406
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    goto :goto_1

    .line 408
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float v3, v6, v17

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v9, v4

    .line 409
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v3, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v9, v11

    .line 410
    iget v1, v0, Landroid/graphics/Rect;->left:I

    aput v1, v9, v12

    .line 411
    iget v1, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v8, 0x2

    add-int/2addr v1, v3

    .line 412
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    .line 414
    :goto_1
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v8

    aput v3, v10, v4

    .line 415
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v6

    add-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v10, v11

    .line 416
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v0

    const-wide v15, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v13, v15

    add-double/2addr v2, v13

    double-to-int v0, v2

    aput v0, v10, v12

    move v13, v1

    move v14, v5

    goto :goto_3

    .line 417
    :cond_2
    aget v2, v10, v12

    add-int/2addr v2, v8

    sub-int v3, p4, v3

    if-le v2, v3, :cond_4

    .line 418
    iget-boolean v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    if-eqz v1, :cond_3

    .line 419
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v8

    aput v1, v9, v4

    .line 420
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v14, v6, v2

    add-float/2addr v1, v14

    float-to-int v1, v1

    aput v1, v9, v11

    .line 421
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float v14, v6, v16

    add-float/2addr v1, v14

    float-to-int v1, v1

    aput v1, v9, v12

    .line 422
    iget v1, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v8, 0x2

    sub-int/2addr v1, v2

    .line 423
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    goto :goto_2

    .line 425
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    aput v1, v9, v4

    .line 426
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v2, 0x3fb33333    # 1.4f

    mul-float v14, v6, v2

    sub-float/2addr v1, v14

    float-to-int v1, v1

    aput v1, v9, v11

    .line 427
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float v14, v6, v17

    sub-float/2addr v1, v14

    float-to-int v1, v1

    aput v1, v9, v12

    .line 428
    iget v1, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v2, v8, 0x2

    add-int/2addr v1, v2

    .line 429
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    .line 431
    :goto_2
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float v14, v6, v17

    sub-float/2addr v2, v14

    float-to-int v2, v2

    aput v2, v10, v4

    .line 432
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const v5, 0x3fb33333    # 1.4f

    mul-float v14, v6, v5

    sub-float/2addr v2, v14

    float-to-int v2, v2

    aput v2, v10, v11

    .line 433
    iget v0, v0, Landroid/graphics/Rect;->top:I

    aput v0, v10, v12

    move v13, v1

    move v14, v3

    goto :goto_3

    :cond_4
    move v13, v1

    move v14, v5

    .line 436
    :goto_3
    aget v0, v9, v4

    const/16 v1, 0xa

    add-int/lit8 v2, p3, -0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v9, v4

    .line 437
    aget v0, v9, v11

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v9, v11

    .line 438
    aget v0, v9, v12

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v9, v12

    .line 440
    iget-object v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    aget v2, v9, v4

    aget v3, v10, v4

    move-object/from16 v0, p0

    move v4, v13

    move v5, v14

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 441
    iget-object v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    aget v2, v9, v11

    aget v3, v10, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    .line 442
    iget-object v1, v7, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    aget v2, v9, v12

    aget v3, v10, v12

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/views/RecentMenuView;->layoutMenuItem(Landroid/view/View;IIIII)V

    return-void
.end method

.method private layoutMenuItem(Landroid/view/View;IIIII)V
    .locals 0

    sub-int/2addr p4, p2

    int-to-float p4, p4

    .line 519
    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotX(F)V

    sub-int/2addr p5, p3

    int-to-float p4, p5

    .line 520
    invoke-virtual {p1, p4}, Landroid/view/View;->setPivotY(F)V

    add-int p4, p2, p6

    add-int/2addr p6, p3

    .line 521
    invoke-virtual {p1, p2, p3, p4, p6}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private makeSplitLaunchOptions()Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x1

    .line 326
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private setMenuItemSmallWindowEnable(Z)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 590
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100021

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100020

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 590
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startHideItemAnim(Landroid/view/View;)V
    .locals 2

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startShowItemAnim(Landroid/view/View;FJ)V
    .locals 2

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f19999a    # 0.6f

    .line 597
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 598
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    return v0
.end method

.method protected onActivityStarted()Z
    .locals 3

    .line 330
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getSystemUiProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    .line 332
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "RecentMenuView"

    const-string v2, "Failed to notify SysUI of split screen: "

    .line 334
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 351
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 354
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 218
    iget-object v1, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const v2, 0x7f0a0122

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    .line 219
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 223
    :cond_0
    iget-object v1, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a011c

    if-eq v5, v6, :cond_6

    const v6, 0x7f0a011e

    if-eq v5, v6, :cond_5

    const v6, 0x7f0a0120

    if-eq v5, v6, :cond_2

    if-eq v5, v2, :cond_1

    goto/16 :goto_1

    .line 282
    :cond_1
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startFreeformActivity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 283
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;

    invoke-direct {v6, v1}, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 242
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->toastForbidDockedWhenScreening()Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    .line 246
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->makeSplitLaunchOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 248
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v6

    iget-object v7, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->onActivityStarted()Z

    move-result v5

    if-nez v5, :cond_4

    return-void

    .line 253
    :cond_4
    iget-object v5, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v5

    const/4 v6, 0x2

    .line 254
    new-array v6, v6, [I

    .line 255
    invoke-virtual {v5, v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getLocationOnScreen([I)V

    .line 256
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v8}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 257
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v9}, Lcom/miui/home/recents/views/TaskView;->getScaleY()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 258
    aget v9, v6, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0701c5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 259
    new-instance v10, Landroid/graphics/Rect;

    aget v11, v6, v3

    aget v6, v6, v3

    add-int/2addr v6, v7

    add-int/2addr v8, v9

    invoke-direct {v10, v11, v9, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 262
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 261
    invoke-static {v6, v7, v5, v8, v3}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 265
    new-instance v12, Lcom/miui/home/recents/views/RecentMenuView$2;

    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    invoke-direct {v12, v0, v6, v5, v10}, Lcom/miui/home/recents/views/RecentMenuView$2;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Landroid/os/Handler;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 273
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;

    move-result-object v11

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v16

    .line 273
    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;ZI)V

    .line 277
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickMultiWindowMenuEvent(Ljava/lang/String;)V

    const-string v5, "clickMenu"

    .line 278
    invoke-static {v5, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_5
    iget-object v5, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    xor-int/2addr v5, v4

    .line 231
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performRecentViewLockChanged(Landroid/view/View;Z)V

    .line 232
    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v7, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;

    invoke-direct {v7, v0, v5, v1}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;-><init>(Lcom/miui/home/recents/views/RecentMenuView;ZLjava/lang/String;)V

    invoke-static {v6, v5, v7}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 226
    :cond_6
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendShowAppInfoEvent(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v5, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v5, v6}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v1, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    :goto_0
    const-string v1, "RecentMenuView"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click taskViewMenu error, task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/recents/views/RecentMenuView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_8
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, v2, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {v0, v4, v3}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    return-void
.end method

.method public onDarkModeChange()V
    .locals 4

    .line 656
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 658
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 659
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_1

    .line 660
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v2, 0x7f080131

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v2, 0x7f080130

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    const v2, 0x7f0801ce

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 665
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 666
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 667
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    const v3, 0x7f080132

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 672
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->onDarkModeChange()V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 359
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 360
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a011d

    .line 149
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a011f

    .line 150
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0121

    .line 151
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0123

    .line 152
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a011c

    .line 153
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v0, 0x7f0a011e

    .line 154
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    const v0, 0x7f0a0120

    .line 155
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v0, 0x7f0a0122

    .line 156
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/RecentMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/RecentMenuView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 171
    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 172
    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 173
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 367
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    .line 368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 370
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 371
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 373
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p2

    if-nez p2, :cond_0

    .line 374
    invoke-direct {p0, v0, p1, p4, p5}, Lcom/miui/home/recents/views/RecentMenuView;->layoutItemWithoutSmallWindow(Landroid/graphics/Rect;III)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-direct {p0, v0, p1, p4, p5}, Lcom/miui/home/recents/views/RecentMenuView;->layoutItemWithSmallWindow(Landroid/graphics/Rect;III)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 179
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 180
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ShowTaskMenuEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 531
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 533
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 534
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    .line 535
    iget-object p1, p1, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->taskView:Lcom/miui/home/recents/views/TaskView;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 536
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 537
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isSupportMultiWindow()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 538
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 539
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 542
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    goto :goto_2

    :cond_2
    const/16 v1, 0x50

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 543
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 545
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 546
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setMenuItemSmallWindowEnable(Z)V

    .line 547
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 548
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 549
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 550
    new-instance v3, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CboIYeYxWTAF2kzYG8lYMtrsnMU;

    invoke-direct {v3, p0, v2, v1}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CboIYeYxWTAF2kzYG8lYMtrsnMU;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Ljava/lang/String;I)V

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$zgynN6gsuh6jckujVqUHB5dJvzE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$zgynN6gsuh6jckujVqUHB5dJvzE;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_5

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 558
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    move v1, v0

    goto :goto_4

    :cond_5
    move v1, p1

    :goto_4
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTaskViewLeft:Z

    .line 559
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setVisibility(I)V

    .line 560
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->setFocusable(Z)V

    .line 562
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;FJ)V

    .line 563
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x21

    goto :goto_5

    :cond_6
    const-wide/16 v0, 0x32

    :goto_5
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;FJ)V

    .line 564
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 565
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x42

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;FJ)V

    .line 567
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x64

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;FJ)V

    .line 569
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 570
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 571
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 573
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShowTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V

    .line 576
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    const/4 v1, 0x4

    .line 577
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setImportantForAccessibility(I)V

    goto :goto_6

    .line 580
    :cond_8
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 581
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 582
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    .line 581
    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendLongCLickTaskEvent(Ljava/lang/String;I)V

    :cond_9
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    .line 205
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-nez v0, :cond_3

    .line 206
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewScaleDownMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 197
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    .line 198
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz v0, :cond_3

    .line 199
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewScaleUpMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 213
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 188
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeMenu(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 611
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    move-result p1

    return p1
.end method

.method public removeMenu(ZZ)Z
    .locals 4

    .line 615
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 616
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 617
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 618
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    if-eqz p1, :cond_1

    .line 620
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 621
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 622
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 623
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 625
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 627
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 628
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    const-wide/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 629
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 631
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p2, v0, v2, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startRemoveTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Z)V

    .line 634
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/TaskView;

    .line 635
    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/TaskView;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 637
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->sendAccessibilityEvent(I)V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-void
.end method

.method public startFreeformActivity(Ljava/lang/String;)Z
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->makeFreeformActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 314
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "RecentMenuView"

    const-string v2, "Failed to startFreeformActivity"

    .line 319
    invoke-static {v0, v2, p1}, Lcom/miui/home/recents/views/RecentMenuView$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public toastForbidDockedWhenScreening()Z
    .locals 4

    .line 293
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cast_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    const v3, 0x7f1001f5

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    .line 297
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    return v2
.end method
