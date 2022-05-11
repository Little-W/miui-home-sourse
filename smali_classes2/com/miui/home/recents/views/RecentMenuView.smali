.class public Lcom/miui/home/recents/views/RecentMenuView;
.super Landroid/widget/FrameLayout;
.source "RecentMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mHideMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private mHorizontalMargin:I

.field private mIsShowMenuAtTaskViewRight:Z

.field private mIsShowing:Z

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

.field private mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

.field private mRecentsViewRect:Landroid/graphics/Rect;

.field private mScreeningToast:Landroid/widget/Toast;

.field private mShowDock:Z

.field private final mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

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

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 86
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    .line 87
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    .line 90
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 92
    new-instance p3, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const/high16 p4, 0x3f200000    # 0.625f

    const v0, 0x3f0ccccd    # 0.55f

    invoke-direct {p3, p4, v0}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 93
    sget-object p3, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHideMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    const/4 p3, 0x1

    .line 98
    iput-boolean p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 100
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mRecentsViewRect:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0801bd

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0801c1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0703ba

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0703b9

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHorizontalMargin:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setTranslationZ(F)V

    const/16 p1, 0x8

    .line 122
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->setClipChildren(Z)V

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    .line 127
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xb4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/views/RecentMenuView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentMenuView$1;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/RecentMenuView;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/views/RecentMenuView;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/miui/home/recents/views/TaskStackView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method private calculateMenuPositionToTaskView(Lcom/miui/home/recents/util/RelativePosition;)V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->isMenuPositionDecidedByTaskViewPos()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 396
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RelativePosition;->isContainPosition(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowMenuAtTaskViewRight:Z

    goto :goto_2

    .line 393
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 394
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result p1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowMenuAtTaskViewRight:Z

    :goto_2
    return-void
.end method

.method private getTaskViewWithoutHeaderRect()Landroid/graphics/Rect;
    .locals 3

    .line 363
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 365
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskViewHeader;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    return-object v0
.end method

.method private isSupportMultiWindow()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportsMultiWindowAndNotInSecuritySpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onClick$0(Lcom/miui/home/recents/views/RecentMenuView;Z)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskViewHeader;->showOrHideLockImageView(Z)V

    return-void
.end method

.method public static synthetic lambda$onClick$1(Lcom/miui/home/recents/views/RecentMenuView;ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 251
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendLockTaskEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendUnlockTaskEvent(Ljava/lang/String;)V

    .line 255
    :goto_0
    new-instance p2, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CurtuuMZaGaOPSuvIH0enH3k_68;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$CurtuuMZaGaOPSuvIH0enH3k_68;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Z)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$onMessageEvent$2(Lcom/miui/home/recents/views/RecentMenuView;Ljava/lang/String;ILjava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 424
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

    .line 426
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setMenuItemSmallWindowEnable(Z)V

    return-void
.end method

.method public static synthetic lambda$onMessageEvent$4(Lcom/miui/home/recents/views/RecentMenuView;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->focusTalkBackToView(Landroid/view/View;)V

    return-void
.end method

.method private makeSplitLaunchOptions()Landroid/app/ActivityOptions;
    .locals 1

    const/4 v0, 0x1

    .line 335
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private setMenuItemSmallWindowEnable(Z)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 471
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100022

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100021

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 471
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startHideItemAnim(Landroid/view/View;)V
    .locals 2

    .line 484
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

    const-wide/16 v0, 0x7d

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHideMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startShowItemAnim(Landroid/view/View;J)V
    .locals 2

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f19999a    # 0.6f

    .line 478
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 479
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowMenuItemAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private toastForbidDockedWhenScreening()Z
    .locals 4

    .line 319
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

    .line 321
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    const v3, 0x7f100369

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    .line 323
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mScreeningToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    return v2
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    return v0
.end method

.method protected onActivityStarted()Z
    .locals 1

    .line 339
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onSplitScreenInvoked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 348
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 351
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 235
    iget-object v1, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const v2, 0x7f0a0193

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    .line 236
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 240
    :cond_0
    iget-object v1, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a018d

    if-eq v5, v6, :cond_8

    const v6, 0x7f0a018f

    if-eq v5, v6, :cond_7

    const v6, 0x7f0a0191

    if-eq v5, v6, :cond_4

    if-eq v5, v2, :cond_1

    goto/16 :goto_1

    .line 299
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 300
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskInfo;->getInstance()Lcom/miui/home/recents/ForegroundTaskInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/ForegroundTaskInfo;->getForegroundSmallWindows()Ljava/util/Set;

    move-result-object v5

    .line 301
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskInfo;->getInstance()Lcom/miui/home/recents/ForegroundTaskInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/ForegroundTaskInfo;->startForegroundSmallWindows()V

    .line 302
    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 303
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v5

    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v5, v1, v6, v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startFreeformActivity(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "clickMenu"

    .line 304
    invoke-static {v5, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterSmallWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;

    invoke-direct {v6, v1}, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 307
    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v5

    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v5, v1, v6, v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startFreeformActivity(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 308
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;

    invoke-direct {v6, v1}, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string v5, "clickMenu"

    .line 309
    invoke-static {v5, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterSmallWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->toastForbidDockedWhenScreening()Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 263
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->makeSplitLaunchOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 265
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v6

    iget-object v7, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->onActivityStarted()Z

    move-result v5

    if-nez v5, :cond_6

    return-void

    .line 270
    :cond_6
    iget-object v5, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v5

    const/4 v6, 0x2

    .line 271
    new-array v6, v6, [I

    .line 272
    invoke-virtual {v5, v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getLocationOnScreen([I)V

    .line 273
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v8}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 274
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v9}, Lcom/miui/home/recents/views/TaskView;->getScaleY()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 275
    aget v9, v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0703c1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 276
    new-instance v10, Landroid/graphics/Rect;

    aget v11, v6, v4

    aget v6, v6, v4

    add-int/2addr v6, v7

    add-int/2addr v8, v9

    invoke-direct {v10, v11, v9, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 278
    invoke-static {v6, v7, v5, v8, v4}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 282
    new-instance v12, Lcom/miui/home/recents/views/RecentMenuView$2;

    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    invoke-direct {v12, v0, v6, v5, v10}, Lcom/miui/home/recents/views/RecentMenuView$2;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Landroid/os/Handler;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 290
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;

    move-result-object v11

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/miui/home/recents/views/RecentMenuView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v16

    .line 290
    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;ZI)V

    .line 294
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendClickMultiWindowMenuEvent(Ljava/lang/String;)V

    const-string v5, "clickMenu"

    .line 295
    invoke-static {v5, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendEnterMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_7
    iget-object v5, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    xor-int/2addr v5, v3

    .line 248
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performRecentViewLockChanged(Landroid/view/View;Z)V

    .line 249
    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v7, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;

    invoke-direct {v7, v0, v5, v1}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;-><init>(Lcom/miui/home/recents/views/RecentMenuView;ZLjava/lang/String;)V

    invoke-static {v6, v5, v7}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 243
    :cond_8
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendShowAppInfoEvent(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v5, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;

    iget-object v6, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v5, v6}, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v1, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    :goto_0
    const-string v1, "RecentMenuView"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click taskViewMenu error, task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_a
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, v2, :cond_b

    move v4, v3

    :cond_b
    invoke-virtual {v0, v3, v4}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    return-void
.end method

.method public onDarkModeChange()V
    .locals 4

    .line 536
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    .line 538
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    .line 539
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_1

    .line 540
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v2, 0x7f0801bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v2, 0x7f0801be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    const v2, 0x7f08053a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 547
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    const v3, 0x7f0801c0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->onDarkModeChange()V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 356
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 357
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a018e

    .line 153
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0190

    .line 154
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0192

    .line 155
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0194

    .line 156
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a018d

    .line 157
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v0, 0x7f0a018f

    .line 158
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    const v0, 0x7f0a0191

    .line 159
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v0, 0x7f0a0193

    .line 160
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10035d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    const v1, 0x7f0801be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/RecentMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {p0, p0}, Lcom/miui/home/recents/views/RecentMenuView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 174
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 175
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 176
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 177
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindow:Landroid/widget/ImageView;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 180
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canLockTaskView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    aput-object v1, v4, v3

    invoke-direct {v0, v4}, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    goto :goto_0

    .line 185
    :cond_1
    new-instance v0, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    aput-object v2, v5, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    aput-object v1, v5, v4

    invoke-direct {v0, v5}, Lcom/miui/home/recents/views/FourMenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    goto :goto_0

    .line 189
    :cond_2
    new-instance v0, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    aput-object v1, v4, v3

    invoke-direct {v0, v4}, Lcom/miui/home/recents/views/ThreeMenuViewPositionCalculator;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 371
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getTaskViewWithoutHeaderRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 372
    sget-object p1, Lcom/miui/home/recents/util/SpringAnimationUtils;->THUMBNAIL_SCALE_UP:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    iget p1, p1, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    invoke-static {v2, p1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 373
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 375
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mRecentsViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mRecentsViewRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    .line 377
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    iget v5, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHorizontalMargin:I

    .line 376
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->init(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 378
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    .line 379
    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowMenuAtTaskViewRight:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    move p2, p3

    .line 380
    :goto_0
    iget-object p4, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 381
    invoke-virtual {p4}, Lcom/miui/home/recents/views/TaskStackView;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->isMenuPositionDecidedByTaskViewPos()Z

    move-result p4

    xor-int/2addr p3, p4

    .line 378
    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->setPosInHorizontal(IZ)V

    .line 382
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuViewPositionCalculator:Lcom/miui/home/recents/views/MenuViewPositionCalculator;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/MenuViewPositionCalculator;->layoutMenuItem()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 196
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ShowTaskMenuEvent;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 402
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    if-nez v0, :cond_a

    .line 403
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 405
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 406
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    .line 407
    iget-object v1, p1, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->taskView:Lcom/miui/home/recents/views/TaskView;

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 408
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 409
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentMenuView;->isSupportMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 411
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mUnlockDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mLockDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLock:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v3, v3, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v3, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f100360

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f10035e

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 412
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v3

    const/16 v5, 0xff

    const/16 v6, 0x50

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 416
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f100024

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 418
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f100023

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 419
    invoke-direct {p0, v4}, Lcom/miui/home/recents/views/RecentMenuView;->setMenuItemSmallWindowEnable(Z)V

    .line 420
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v2, :cond_5

    .line 422
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 423
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 424
    new-instance v7, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$v4o1r_tWwVKLhBC6G-NRhGuAz9k;

    invoke-direct {v7, p0, v3, v2}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$v4o1r_tWwVKLhBC6G-NRhGuAz9k;-><init>(Lcom/miui/home/recents/views/RecentMenuView;Ljava/lang/String;I)V

    new-instance v2, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$TSVdIfDhm1sUyOqZrTZzvqGlXuk;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$TSVdIfDhm1sUyOqZrTZzvqGlXuk;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    const/4 v3, 0x0

    invoke-static {v7, v2, v3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 430
    :cond_5
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    xor-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 431
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move v5, v6

    :goto_5
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 433
    invoke-virtual {p1}, Lcom/miui/home/recents/messages/ShowTaskMenuEvent;->getRelativePosition()Lcom/miui/home/recents/util/RelativePosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->calculateMenuPositionToTaskView(Lcom/miui/home/recents/util/RelativePosition;)V

    .line 434
    invoke-virtual {p0, v4}, Lcom/miui/home/recents/views/RecentMenuView;->setVisibility(I)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->setFocusable(Z)V

    .line 437
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;J)V

    .line 438
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 439
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;J)V

    .line 440
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x50

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;J)V

    .line 441
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x78

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;J)V

    goto :goto_6

    .line 443
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;J)V

    .line 444
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    const-wide/16 v0, 0x64

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->startShowItemAnim(Landroid/view/View;J)V

    .line 447
    :goto_6
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 448
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 451
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShowTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V

    .line 454
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    const/4 v1, 0x4

    .line 455
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskView;->setImportantForAccessibility(I)V

    goto :goto_7

    .line 458
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

    .line 459
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    .line 460
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    .line 459
    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendLongCLickTaskEvent(Ljava/lang/String;I)V

    .line 462
    :cond_9
    new-instance p1, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$O6Qis6TVigA4WwyZcYlz_hhKDJs;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$O6Qis6TVigA4WwyZcYlz_hhKDJs;-><init>(Lcom/miui/home/recents/views/RecentMenuView;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onSmallestScreenWidthChanged()V
    .locals 3

    .line 557
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mVerticalMargin:I

    .line 559
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mHorizontalMargin:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    .line 222
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-nez v0, :cond_3

    .line 223
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewScaleDownMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 214
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskViewBound:Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    .line 215
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsTouchInTaskViewBound:Z

    if-eqz v0, :cond_3

    .line 216
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewScaleUpMenuModeAnim(Lcom/miui/home/recents/views/TaskView;)V

    .line 230
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 205
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeMenu(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    move-result p1

    return p1
.end method

.method public removeMenu(ZZ)Z
    .locals 4

    .line 492
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 493
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mIsShowing:Z

    .line 494
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowDock:Z

    .line 495
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/TaskStackView;->setIsShowingMenu(Z)V

    if-eqz p1, :cond_1

    .line 497
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemLockContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 498
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemMultiWindowContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 499
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 500
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemSmallWindowContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 502
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mMenuItemInfoContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentMenuView;->startHideItemAnim(Landroid/view/View;)V

    .line 504
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 505
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    const-wide/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 506
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mShowOrHideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 508
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p2, v0, v2, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startRemoveTaskMenuAnim(Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Z)V

    .line 511
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

    .line 512
    invoke-virtual {p2, v1}, Lcom/miui/home/recents/views/TaskView;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 514
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_4

    const/16 p2, 0x8

    .line 515
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->sendAccessibilityEvent(I)V

    .line 517
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView;->mTaskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-void
.end method