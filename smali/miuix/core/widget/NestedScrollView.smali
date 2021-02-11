.class public Lmiuix/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;,
        Lmiuix/core/widget/NestedScrollView$SavedState;,
        Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;,
        Lmiuix/core/widget/NestedScrollView$_lancet;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

.field private static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Lmiuix/overscroller/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 166
    new-instance v0, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lmiuix/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    .line 168
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Lmiuix/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method private abortAnimatedScroll()V
    .locals 1

    .line 1654
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x1

    .line 1655
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private canScroll()Z
    .locals 4

    .line 513
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 514
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 516
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 517
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private static clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1390
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p0, v1, p1}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1393
    :cond_0
    invoke-virtual {p0, v1, p1}, Lmiuix/core/widget/NestedScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 1931
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1933
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1934
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1936
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1937
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1938
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 2

    .line 1966
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1967
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    .line 1968
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1969
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1970
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1973
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1974
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_1
    :goto_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12

    const/4 v0, 0x2

    .line 1135
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_8

    .line 1149
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1150
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1151
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    const/4 v9, 0x1

    if-ge p2, v8, :cond_7

    if-ge v7, p3, :cond_7

    if-ge p2, v7, :cond_0

    if-ge v8, p3, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v2

    :goto_1
    if-nez v4, :cond_1

    move-object v4, v6

    move v5, v10

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    .line 1167
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1168
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_4

    :cond_3
    move v7, v9

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    move-object v4, v6

    move v5, v9

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    :goto_3
    move-object v4, v6

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v4
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .line 1028
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1029
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1030
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1031
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1036
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    goto :goto_0

    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_1
    :goto_0
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .locals 4

    .line 664
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 666
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 667
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_0

    .line 668
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    .line 669
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 670
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 676
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 677
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 684
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 685
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    .line 1368
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1907
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1908
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    .line 1376
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1377
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1379
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1380
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onNestedScrollInternal(II[I)V
    .locals 10

    .line 305
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0, v1, p1}, Lmiuix/core/widget/NestedScrollView;->scrollBy(II)V

    .line 307
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v4, v1, v0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 310
    aget v1, p3, v0

    add-int/2addr v1, v4

    aput v1, p3, v0

    :cond_0
    sub-int v6, p1, v4

    .line 314
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 984
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 985
    iget v2, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 990
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 991
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 992
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 993
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 690
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 692
    iput-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private runAnimatedScroll(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1645
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_0

    .line 1647
    :cond_0
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1649
    :goto_0
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1650
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 6

    .line 1284
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1285
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1289
    :goto_0
    invoke-direct {p0, v4, p2, p3}, Lmiuix/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int p2, p3, v0

    .line 1298
    :goto_1
    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    move v2, v3

    .line 1301
    :goto_2
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 1664
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1667
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1669
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1672
    invoke-virtual {p0, v0, p1}, Lmiuix/core/widget/NestedScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1685
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 1689
    invoke-virtual {p0, v0, p1}, Lmiuix/core/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1691
    :cond_1
    invoke-virtual {p0, v0, p1}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method

.method private smoothScrollBy(IIZ)V
    .locals 4

    .line 1416
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1420
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 p1, 0x0

    .line 1422
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1424
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1425
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1426
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v1

    .line 1427
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v2

    .line 1428
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, v2

    .line 1429
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/overscroller/widget/OverScroller;->startScroll(IIII)V

    .line 1430
    invoke-direct {p0, p3}, Lmiuix/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    goto :goto_0

    .line 1432
    :cond_1
    iget-object p3, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p3}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_2

    .line 1433
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 1435
    :cond_2
    invoke-virtual {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;->scrollBy(II)V

    .line 1437
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/core/widget/NestedScrollView;->mLastScroll:J

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 462
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 463
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 475
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 489
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 493
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 490
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 480
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 484
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 481
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(I)Z
    .locals 7

    .line 1314
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1317
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1319
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    .line 1321
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1322
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1323
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lmiuix/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1324
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1325
    invoke-direct {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    .line 1326
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    .line 1331
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 1332
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    .line 1334
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1335
    invoke-virtual {p0, v3}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1336
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1337
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    .line 1338
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 1339
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    .line 1345
    :goto_1
    invoke-direct {p0, v2}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_6

    .line 1348
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1349
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1355
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    .line 1356
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1357
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestFocus()Z

    .line 1358
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 1533
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1524
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1515
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 16

    move-object/from16 v10, p0

    .line 1569
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1573
    :cond_0
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 1574
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 1575
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    sub-int v6, v0, v1

    .line 1576
    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastScrollerY:I

    .line 1579
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v0, v12

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1586
    instance-of v2, v0, Lmiuix/core/view/NestedCurrentFling;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lmiuix/core/view/NestedCurrentFling;

    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 1587
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v3

    iget-object v4, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v4

    invoke-interface {v2, v3, v4}, Lmiuix/core/view/NestedCurrentFling;->onNestedCurrentFling(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1590
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1593
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 1597
    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    .line 1599
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v12

    sub-int v13, v6, v0

    .line 1601
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v14

    if-eqz v13, :cond_4

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v15

    const/4 v1, 0x0

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v2, v13

    move v4, v15

    move v6, v14

    invoke-virtual/range {v0 .. v9}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1607
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v15

    sub-int v8, v13, v2

    .line 1611
    iget-object v7, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aput v11, v7, v12

    const/4 v3, 0x0

    .line 1612
    iget-object v5, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 1614
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v12

    sub-int v13, v8, v0

    :cond_4
    if-eqz v13, :cond_9

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne v0, v12, :cond_6

    if-lez v14, :cond_6

    :cond_5
    move v11, v12

    :cond_6
    if-eqz v11, :cond_8

    .line 1622
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    if-gez v13, :cond_7

    .line 1624
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1625
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 1628
    :cond_7
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1629
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1633
    :cond_8
    :goto_2
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 1636
    :cond_9
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1637
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_3

    .line 1639
    :cond_a
    invoke-virtual {v10, v12}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    :goto_3
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10

    .line 1706
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1708
    :cond_0
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1709
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1713
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1718
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    .line 1725
    :cond_1
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1726
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1727
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    sub-int v4, v3, v4

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1733
    :goto_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v2, :cond_4

    .line 1738
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v0, :cond_3

    .line 1740
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    goto :goto_1

    .line 1743
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    add-int/2addr p1, v1

    .line 1747
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 1749
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    .line 1751
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_6

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_6

    .line 1756
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 1758
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_2

    .line 1761
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1765
    :goto_2
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_3
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 1506
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1497
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1471
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1472
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1477
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1478
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1479
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1480
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    .line 1481
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 610
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 288
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 293
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 283
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 244
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8

    .line 213
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 277
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1980
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1981
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    .line 1982
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1983
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-nez v1, :cond_4

    .line 1984
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1985
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getWidth()I

    move-result v4

    .line 1986
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    .line 1988
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1989
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v2

    goto :goto_1

    .line 1990
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 1991
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v2

    .line 1993
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1994
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v5, v8

    .line 1995
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    :cond_2
    int-to-float v7, v7

    int-to-float v6, v6

    .line 1997
    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1998
    iget-object v6, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1999
    iget-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2000
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2002
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2004
    :cond_4
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2005
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2006
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getWidth()I

    move-result v4

    .line 2007
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v5

    .line 2009
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 2010
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_5

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2011
    :cond_5
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 2012
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v2, v6

    .line 2014
    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_7

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2015
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v5, v3

    .line 2016
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_7
    sub-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v0, v0

    .line 2018
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v2, v4

    const/4 v3, 0x0

    .line 2019
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2020
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2021
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2022
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2024
    :cond_8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 622
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 624
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_3

    .line 625
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 626
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    .line 628
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 632
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1

    .line 638
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 639
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3e

    const/16 v4, 0x21

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 649
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 651
    :cond_4
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    .line 641
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 642
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 644
    :cond_5
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    .line 655
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    move v2, v4

    :cond_7
    invoke-virtual {p0, v2}, Lmiuix/core/widget/NestedScrollView;->pageScroll(I)Z

    :cond_8
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(I)V
    .locals 12

    .line 1919
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1921
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v11}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    const/4 p1, 0x1

    .line 1926
    invoke-direct {p0, p1}, Lmiuix/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1251
    :goto_0
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1253
    iget-object v4, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 1254
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_1

    .line 1257
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    sub-int/2addr v1, v0

    .line 1259
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1261
    iget-object v2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1262
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1266
    :cond_1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .line 425
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 431
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 432
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_1

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 446
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 398
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .locals 4

    .line 1108
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1109
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1111
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 1112
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 1113
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 410
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 415
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 231
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    .line 1539
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1544
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    .line 1545
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1544
    invoke-static {p2, v0, p3}, Lmiuix/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 1547
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1549
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 1555
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1558
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1557
    invoke-static {p2, p5, p3}, Lmiuix/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1560
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1563
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1873
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1875
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 1003
    :cond_0
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    .line 1004
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 1006
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1007
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    .line 1008
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    if-eq p1, v2, :cond_3

    .line 1016
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 718
    iget-boolean v3, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v2

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 733
    :pswitch_0
    iget v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    if-ne v0, v3, :cond_1

    goto/16 :goto_0

    .line 739
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string p1, "NestedScrollView"

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/core/widget/NestedScrollView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 746
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 747
    iget v3, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 748
    iget v5, p0, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_6

    .line 749
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_6

    .line 750
    iput-boolean v2, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 751
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 752
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 753
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 754
    iput v4, p0, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 755
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 757
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 795
    :pswitch_1
    iput-boolean v4, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 796
    iput v3, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 797
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 798
    iget-object v5, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 799
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 801
    :cond_3
    invoke-virtual {p0, v4}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    goto :goto_0

    .line 764
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v3, v0}, Lmiuix/core/widget/NestedScrollView;->inChild(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 766
    iput-boolean v4, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 767
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_0

    .line 775
    :cond_4
    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 776
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 778
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 779
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 786
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 787
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 788
    invoke-virtual {p0, v1, v4}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_0

    .line 804
    :cond_5
    invoke-direct {p0, p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 812
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1835
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1836
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1838
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1839
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p2, 0x0

    .line 1841
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1843
    iget-boolean p4, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_3

    .line 1845
    iget-object p4, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    if-eqz p4, :cond_1

    .line 1846
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result p4

    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    iget v0, v0, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1847
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 1853
    :cond_1
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 1854
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1856
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, p4

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    :cond_2
    sub-int/2addr p5, p3

    .line 1858
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 1859
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    .line 1860
    invoke-static {p2, p5, p1}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 1862
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    .line 1867
    :cond_3
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1868
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 574
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 576
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 585
    :cond_1
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 586
    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 587
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 589
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 590
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v2

    .line 591
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 592
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 598
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 597
    invoke-static {p1, v1, v0}, Lmiuix/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 601
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 602
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 384
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    .line 385
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 393
    invoke-virtual {p0, p2, p3}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 377
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    .line 347
    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 372
    invoke-direct {p0, p5, p1, p2}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    const/4 p1, 0x0

    .line 341
    invoke-direct {p0, p5, p6, p1}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 301
    invoke-direct {p0, p5, p6, p7}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 328
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x2

    .line 329
    invoke-virtual {p0, p1, p4}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1045
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1802
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1803
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    .line 1810
    :cond_3
    invoke-direct {p0, v0}, Lmiuix/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 1814
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2061
    instance-of v0, p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_0

    .line 2062
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2066
    :cond_0
    check-cast p1, Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 2067
    invoke-virtual {p1}, Lmiuix/core/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2068
    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mSavedState:Lmiuix/core/widget/NestedScrollView$SavedState;

    .line 2069
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2074
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2075
    new-instance v1, Lmiuix/core/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2076
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Lmiuix/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 565
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 567
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mOnScrollChangeListener:Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 568
    invoke-interface/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Lmiuix/core/widget/NestedScrollView;IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1880
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1882
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1891
    :cond_0
    invoke-static {p1, p0}, Lmiuix/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Lmiuix/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1892
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1893
    iget-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1894
    iget-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1895
    invoke-direct {p0, p1}, Lmiuix/core/widget/NestedScrollView;->doScrollY(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    .line 334
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 335
    invoke-virtual {p0, p2}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 817
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 819
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_0

    .line 822
    iput v12, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    .line 825
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 826
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, -0x1

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 969
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lmiuix/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 970
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_6

    .line 963
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 964
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 965
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_6

    .line 953
    :pswitch_3
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 954
    iget-object v2, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 955
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 954
    invoke-virtual/range {v2 .. v8}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 959
    :cond_1
    iput v1, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 960
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_6

    .line 855
    :pswitch_4
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    if-ne v15, v1, :cond_2

    const-string v0, "NestedScrollView"

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/core/widget/NestedScrollView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 861
    :cond_2
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    .line 862
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    sub-int/2addr v0, v6

    .line 863
    iget-boolean v1, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_5

    .line 864
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 866
    invoke-interface {v1, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 868
    :cond_3
    iput-boolean v14, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-lez v0, :cond_4

    .line 870
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v0, v1

    move v7, v0

    goto :goto_0

    .line 872
    :cond_4
    iget v1, v10, Lmiuix/core/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v0, v1

    move v7, v0

    goto :goto_0

    :cond_5
    move v7, v0

    .line 875
    :goto_0
    iget-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 877
    iget-object v3, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 879
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v14

    sub-int/2addr v7, v0

    .line 880
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    move/from16 v16, v7

    goto :goto_1

    :cond_6
    move/from16 v16, v7

    .line 884
    :goto_1
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    sub-int/2addr v6, v0

    iput v6, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 886
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v17

    .line 887
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v9

    .line 888
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v14, :cond_7

    if-lez v9, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v18, v12

    goto :goto_3

    :cond_8
    :goto_2
    move/from16 v18, v14

    :goto_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 894
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v6, v9

    move/from16 v20, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lmiuix/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 895
    invoke-virtual {v10, v12}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 897
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 900
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v17

    sub-int v4, v16, v2

    .line 903
    iget-object v7, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aput v12, v7, v14

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 905
    iget-object v5, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    .line 908
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mScrollOffset:[I

    aget v2, v1, v14

    sub-int/2addr v0, v2

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 909
    iget v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mNestedYOffset:I

    if-eqz v18, :cond_12

    .line 912
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v14

    sub-int v0, v16, v0

    .line 913
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->ensureGlows()V

    add-int v1, v17, v0

    if-gez v1, :cond_a

    .line 916
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 917
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 916
    invoke-static {v1, v0, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 918
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 919
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    :cond_a
    move/from16 v2, v20

    if-le v1, v2, :cond_b

    .line 922
    iget-object v1, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 923
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 924
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 922
    invoke-static {v1, v0, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 925
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 926
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 929
    :cond_b
    :goto_4
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_12

    .line 930
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_12

    .line 931
    :cond_c
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_6

    .line 937
    :pswitch_5
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    .line 938
    iget v4, v10, Lmiuix/core/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 939
    iget v3, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 940
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v10, Lmiuix/core/widget/NestedScrollView;->mMinimumVelocity:I

    if-lt v3, v4, :cond_d

    neg-int v0, v0

    int-to-float v3, v0

    .line 941
    invoke-virtual {v10, v2, v3}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_e

    .line 942
    invoke-virtual {v10, v2, v3, v14}, Lmiuix/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 943
    invoke-virtual {v10, v0}, Lmiuix/core/widget/NestedScrollView;->fling(I)V

    goto :goto_5

    .line 945
    :cond_d
    iget-object v15, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 946
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v21

    .line 945
    invoke-virtual/range {v15 .. v21}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 947
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 949
    :cond_e
    :goto_5
    iput v1, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    .line 950
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->endDrag()V

    goto :goto_6

    .line 830
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    return v12

    .line 833
    :cond_f
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v14

    iput-boolean v0, v10, Lmiuix/core/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_10

    .line 834
    invoke-virtual/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 836
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 844
    :cond_10
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_11

    .line 845
    invoke-direct/range {p0 .. p0}, Lmiuix/core/widget/NestedScrollView;->abortAnimatedScroll()V

    .line 849
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mLastMotionY:I

    .line 850
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/core/widget/NestedScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    .line 851
    invoke-virtual {v10, v0, v12}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 974
    :cond_12
    :goto_6
    iget-object v0, v10, Lmiuix/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_13

    .line 975
    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 977
    :cond_13
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    return v14

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

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 12

    move-object v0, p0

    .line 1053
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getOverScrollMode()I

    move-result v1

    .line 1055
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1057
    :goto_0
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v5

    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v5

    :goto_5
    add-int v3, p3, p1

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_6

    :cond_6
    move/from16 v2, p7

    :goto_6
    add-int v6, p4, p2

    if-nez v1, :cond_7

    move v1, v4

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    neg-int v7, v2

    add-int v2, v2, p5

    neg-int v8, v1

    add-int v1, v1, p6

    if-le v3, v2, :cond_8

    move v7, v2

    move v2, v5

    goto :goto_8

    :cond_8
    if-ge v3, v7, :cond_9

    move v2, v5

    goto :goto_8

    :cond_9
    move v7, v3

    move v2, v4

    :goto_8
    if-le v6, v1, :cond_a

    move v6, v1

    move v1, v5

    goto :goto_9

    :cond_a
    if-ge v6, v8, :cond_b

    move v1, v5

    move v6, v8

    goto :goto_9

    :cond_b
    move v1, v4

    :goto_9
    if-eqz v1, :cond_c

    .line 1097
    invoke-virtual {p0, v5}, Lmiuix/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1098
    iget-object v3, v0, Lmiuix/core/widget/NestedScrollView;->mScroller:Lmiuix/overscroller/widget/OverScroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    move-object p1, v3

    move p2, v7

    move p3, v6

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-virtual/range {p1 .. p7}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 1101
    :cond_c
    invoke-virtual {p0, v7, v6, v2, v1}, Lmiuix/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    :cond_d
    move v4, v5

    :cond_e
    return v4
.end method

.method public pageScroll(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1213
    :goto_0
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v3

    if-eqz v2, :cond_1

    .line 1216
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1217
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    sub-int/2addr v1, v0

    .line 1219
    invoke-virtual {p0, v1}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1221
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1222
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    if-le v1, v0, :cond_2

    .line 1223
    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1227
    :cond_1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1228
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2

    .line 1229
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1232
    :cond_2
    :goto_1
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1234
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lmiuix/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lmiuix/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1772
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1773
    invoke-direct {p0, p2}, Lmiuix/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1776
    :cond_0
    iput-object p2, p0, Lmiuix/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1778
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1821
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1822
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1821
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1824
    invoke-direct {p0, p2, p3}, Lmiuix/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 699
    invoke-direct {p0}, Lmiuix/core/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 701
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1829
    iput-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1830
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 6

    .line 1950
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1951
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1953
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1954
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1955
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1956
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v5

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 1957
    invoke-static {p1, v2, v3}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 1958
    invoke-static {p2, v4, v0}, Lmiuix/core/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 1959
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 1960
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    .line 541
    iget-boolean v0, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 542
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mFillViewport:Z

    .line 543
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lmiuix/core/widget/NestedScrollView;->mOnScrollChangeListener:Lmiuix/core/widget/NestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    .line 560
    iput-boolean p1, p0, Lmiuix/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1405
    invoke-direct {p0, p1, p2, v0}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method smoothScrollTo(IIZ)V
    .locals 1

    .line 1459
    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lmiuix/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Lmiuix/core/widget/NestedScrollView;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 221
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Lmiuix/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Lmiuix/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
