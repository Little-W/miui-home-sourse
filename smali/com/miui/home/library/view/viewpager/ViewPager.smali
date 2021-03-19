.class public Lcom/miui/home/library/view/viewpager/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/view/viewpager/ViewPager$ViewPositionComparator;,
        Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;,
        Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;,
        Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;,
        Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;,
        Lcom/miui/home/library/view/viewpager/ViewPager$DecorView;,
        Lcom/miui/home/library/view/viewpager/ViewPager$OnAdapterChangeListener;,
        Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;,
        Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;,
        Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/miui/home/library/view/viewpager/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/library/view/viewpager/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 121
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/miui/home/library/view/viewpager/ViewPager;->LAYOUT_ATTRS:[I

    .line 139
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$1;

    invoke-direct {v0}, Lcom/miui/home/library/view/viewpager/ViewPager$1;-><init>()V

    sput-object v0, Lcom/miui/home/library/view/viewpager/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 146
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$2;

    invoke-direct {v0}, Lcom/miui/home/library/view/viewpager/ViewPager$2;-><init>()V

    sput-object v0, Lcom/miui/home/library/view/viewpager/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 250
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/miui/home/library/view/viewpager/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/miui/home/library/view/viewpager/ViewPager;->sPositionComparator:Lcom/miui/home/library/view/viewpager/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 390
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 155
    new-instance p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    invoke-direct {p1}, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempItem:Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 157
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 161
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 163
    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 178
    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 179
    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    const/4 v0, 0x1

    .line 188
    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 206
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    .line 233
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 268
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/miui/home/library/view/viewpager/ViewPager$3;-><init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 276
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollState:I

    .line 391
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 155
    new-instance p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    invoke-direct {p1}, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempItem:Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 157
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 161
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 162
    iput-object p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 163
    iput-object p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 178
    iput p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 179
    iput p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    const/4 p2, 0x1

    .line 188
    iput p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 206
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    .line 233
    iput-boolean p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 268
    new-instance p2, Lcom/miui/home/library/view/viewpager/ViewPager$3;

    invoke-direct {p2, p0}, Lcom/miui/home/library/view/viewpager/ViewPager$3;-><init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V

    iput-object p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 276
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollState:I

    .line 396
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;ILcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;)V
    .locals 10

    .line 1296
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    .line 1297
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 1298
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 1301
    iget v3, p3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    .line 1303
    iget v4, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 1306
    iget v4, p3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    iget p3, p3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 1308
    :goto_1
    iget v5, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 1309
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1310
    :goto_2
    iget v6, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 1312
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_2

    .line 1314
    :cond_1
    :goto_3
    iget v6, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    .line 1317
    iget-object v6, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v6, v3}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1320
    :cond_2
    iput v4, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1321
    iget v5, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1323
    :cond_3
    iget v4, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_6

    .line 1324
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1326
    iget p3, p3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 1328
    :goto_4
    iget v5, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 1329
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1330
    :goto_5
    iget v6, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1332
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_5

    .line 1334
    :cond_4
    :goto_6
    iget v6, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    .line 1337
    iget-object v6, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v6, v3}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1340
    :cond_5
    iget v6, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1341
    iput p3, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1347
    :cond_6
    iget-object p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1348
    iget v3, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1349
    iget v4, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, -0x1

    .line 1350
    iget v5, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-nez v5, :cond_7

    iget v5, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    .line 1351
    iget v5, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_8

    iget v5, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_8

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    add-int/lit8 v5, p2, -0x1

    :goto_9
    if-ltz v5, :cond_b

    .line 1355
    iget-object v7, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1356
    :goto_a
    iget v8, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-le v4, v8, :cond_9

    .line 1357
    iget-object v8, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    move v4, v9

    goto :goto_a

    .line 1359
    :cond_9
    iget v8, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 1360
    iput v3, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1361
    iget v7, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-nez v7, :cond_a

    iput v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 1363
    :cond_b
    iget v3, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1364
    iget p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 1367
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1368
    :goto_c
    iget v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    .line 1369
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    .line 1371
    :cond_c
    iget v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_d

    .line 1372
    iget v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    .line 1374
    :cond_d
    iput v3, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1375
    iget v4, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 1378
    :cond_e
    iput-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 1973
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1976
    invoke-direct {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1977
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 1979
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1980
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v3

    .line 1981
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollY()I

    move-result v4

    .line 1982
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1983
    iget-object v6, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1985
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    .line 1987
    invoke-direct {p0, v5}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageScrolled(I)Z

    .line 1992
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    move v3, v0

    move v0, v2

    .line 1993
    :goto_1
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1994
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1995
    iget-boolean v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    .line 1997
    iput-boolean v2, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->scrolling:Z

    move v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    .line 2002
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2004
    :cond_5
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 2405
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2408
    :cond_1
    iget p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 2412
    :goto_1
    iget-object p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 2413
    iget-object p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 2414
    iget-object p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 2417
    iget p2, p2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget p3, p3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3

    .line 1922
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1923
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1926
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1927
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1929
    invoke-interface {v2, p1, p2, p3}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1933
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInternalPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1934
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3

    .line 1939
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1940
    invoke-interface {v0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1942
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1943
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1944
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1946
    invoke-interface {v2, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1950
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInternalPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1951
    invoke-interface {v0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3

    .line 1956
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1957
    invoke-interface {v0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1960
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1961
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1963
    invoke-interface {v2, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1967
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInternalPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1968
    invoke-interface {v0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 6

    .line 2014
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2016
    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageTransformerLayerType:I

    goto :goto_1

    :cond_0
    move v3, v1

    .line 2018
    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 2656
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2657
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 2659
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2660
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2661
    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2857
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2860
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2863
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2864
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2865
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2866
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2868
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2869
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2870
    check-cast p2, Landroid/view/ViewGroup;

    .line 2871
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2872
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2873
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2874
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2876
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 599
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;
    .locals 12

    .line 2362
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2363
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 2364
    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move v5, v6

    .line 2371
    :goto_2
    iget-object v10, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    .line 2372
    iget-object v10, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    if-nez v5, :cond_2

    .line 2374
    iget v11, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 2376
    iget-object v10, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempItem:Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 2377
    iput v8, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    .line 2378
    iput v7, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    .line 2379
    iget-object v7, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget v8, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, -0x1

    .line 2382
    :cond_2
    iget v8, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    .line 2385
    iget v7, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v5, :cond_4

    cmpl-float v5, v2, v8

    if-ltz v5, :cond_3

    goto :goto_3

    :cond_3
    return-object v3

    :cond_4
    :goto_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_6

    .line 2387
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_5

    goto :goto_4

    .line 2394
    :cond_5
    iget v7, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    .line 2396
    iget v9, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move-object v3, v10

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v3
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 1

    .line 1497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1498
    const-class v0, Lcom/miui/home/library/view/viewpager/ViewPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    .line 2010
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2642
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2643
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2647
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2648
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    .line 2649
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2650
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 6

    .line 1817
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1818
    iget-boolean p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    if-eqz p1, :cond_0

    return v1

    .line 1823
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 1824
    invoke-virtual {p0, v1, p1, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->onPageScrolled(IFI)V

    .line 1825
    iget-boolean p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_1

    return v1

    .line 1826
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1831
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForCurrentScrollPosition()Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v0

    .line 1832
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v2

    .line 1833
    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    add-int v4, v2, v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 1835
    iget v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 1836
    iget v2, v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v2

    iget v0, v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v3

    div-float/2addr p1, v0

    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1840
    iput-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCalledSuper:Z

    .line 1841
    invoke-virtual {p0, v5, p1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->onPageScrolled(IFI)V

    .line 1842
    iget-boolean p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 1843
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performDrag(F)Z
    .locals 9

    .line 2311
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2312
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2314
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2316
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2318
    iget v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    .line 2319
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    .line 2323
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 2324
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 2325
    iget v6, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    .line 2327
    iget v1, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    .line 2329
    :goto_0
    iget v6, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v8, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v8}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2331
    iget v2, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 2337
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 2344
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_4
    move p1, v2

    .line 2350
    :cond_5
    :goto_2
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2351
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    .line 2352
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 1658
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 1659
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1661
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 1665
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    goto :goto_1

    .line 1668
    :cond_1
    iget p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForPosition(I)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1669
    iget p2, p2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    iget p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1671
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1672
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 1673
    invoke-direct {p0, p2}, Lcom/miui/home/library/view/viewpager/ViewPager;->completeScroll(Z)V

    .line 1674
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    .line 554
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 555
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 557
    iget-boolean v1, v1, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 2302
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2304
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    const/4 v0, -0x1

    .line 2293
    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    .line 2294
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->endDrag()V

    .line 2295
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2296
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2297
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 675
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForPosition(I)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 679
    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    iget v0, v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    .line 680
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 679
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 683
    invoke-virtual {p0, v0, v1, p3}, Lcom/miui/home/library/view/viewpager/ViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_3

    .line 685
    invoke-direct {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 689
    invoke-direct {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->dispatchOnPageSelected(I)V

    .line 691
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->completeScroll(Z)V

    .line 692
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    .line 693
    invoke-direct {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageScrolled(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2666
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2667
    iput-boolean p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1280
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1284
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1286
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1288
    invoke-virtual {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1289
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/library/view/viewpager/ViewPager;->sPositionComparator:Lcom/miui/home/library/view/viewpager/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2902
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2904
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2907
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2908
    invoke-virtual {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2909
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2910
    invoke-virtual {p0, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2911
    iget v4, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2912
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2923
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2926
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2930
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2934
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;
    .locals 2

    .line 1006
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;-><init>()V

    .line 1007
    iput p1, v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    .line 1008
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1009
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_1

    .line 1010
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1011
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public addOnAdapterChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnAdapterChangeListener;)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2947
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2948
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2949
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2950
    invoke-virtual {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2951
    iget v2, v2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2952
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1471
    invoke-virtual {p0, p3}, Lcom/miui/home/library/view/viewpager/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    invoke-virtual {p0, p3}, Lcom/miui/home/library/view/viewpager/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1474
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 1476
    iget-boolean v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    .line 1477
    iget-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 1478
    iget-boolean v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1479
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1481
    iput-boolean v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1482
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/library/view/viewpager/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1484
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 7

    .line 2790
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 2795
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_1

    .line 2796
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    .line 2804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2805
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2808
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "ViewPager"

    .line 2810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2810
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v3, v0

    .line 2818
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    if-ne p1, v5, :cond_6

    .line 2824
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2825
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_5

    if-lt v1, v2, :cond_5

    .line 2827
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageLeft()Z

    move-result v0

    move v2, v0

    goto :goto_5

    .line 2829
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    move v2, v0

    goto :goto_5

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2834
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2835
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 2837
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageRight()Z

    move-result v0

    move v2, v0

    goto :goto_5

    .line 2839
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    move v2, v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_4

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2847
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_5

    .line 2844
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageLeft()Z

    move-result v2

    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    .line 2850
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 2526
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2529
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragging:Z

    .line 2530
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 2531
    iput v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    .line 2532
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 2533
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2535
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2537
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 2538
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2539
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2540
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2541
    iput-wide v10, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2716
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2717
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2718
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2719
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2720
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2725
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2726
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2727
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2728
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2729
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2728
    invoke-virtual/range {v6 .. v11}, Lcom/miui/home/library/view/viewpager/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2735
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2689
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2693
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v0

    .line 2694
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 2696
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_4

    int-to-float p1, v0

    .line 2698
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    move v1, v3

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3026
    instance-of v0, p1, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 744
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1792
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsScrollStarted:Z

    .line 1793
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1794
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v0

    .line 1795
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollY()I

    move-result v1

    .line 1796
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1797
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1800
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    .line 1801
    invoke-direct {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1802
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1803
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    .line 1808
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 1813
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->completeScroll(Z)V

    return-void
.end method

.method dataSetChanged()V
    .locals 10

    .line 1021
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    .line 1022
    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mExpectedAdapterCount:I

    .line 1023
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 1024
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1025
    :goto_0
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    move v5, v1

    move v6, v2

    move v1, v4

    move v2, v1

    .line 1028
    :goto_1
    iget-object v7, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 1029
    iget-object v7, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1030
    iget-object v8, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget-object v9, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 1037
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_2

    .line 1041
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v2, p0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v2, v3

    .line 1045
    :cond_2
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget v8, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1048
    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    iget v7, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_3

    .line 1050
    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_2

    .line 1056
    :cond_4
    iget v9, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    .line 1057
    iget v5, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v9, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne v5, v9, :cond_5

    move v6, v8

    .line 1062
    :cond_5
    iput v8, v7, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    move v5, v3

    :cond_6
    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 1068
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1071
    :cond_8
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/home/library/view/viewpager/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b

    .line 1075
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_a

    .line 1077
    invoke-virtual {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1078
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 1079
    iget-boolean v5, v2, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_9

    const/4 v5, 0x0

    .line 1080
    iput v5, v2, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->widthFactor:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1084
    :cond_a
    invoke-virtual {p0, v6, v4, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1085
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2741
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 2994
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2995
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 2999
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3001
    invoke-virtual {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3002
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3003
    invoke-virtual {p0, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3004
    iget v4, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3005
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 927
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2425
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2428
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2429
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2431
    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2455
    :cond_0
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2456
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2432
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2434
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2435
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2437
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2438
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2439
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2440
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2441
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2443
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2445
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getWidth()I

    move-result v2

    .line 2446
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2448
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2449
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2450
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2451
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2452
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2461
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 913
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 914
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .line 2552
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_1

    .line 2556
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 2558
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2559
    iget v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 2560
    iput-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    .line 2561
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v2

    .line 2562
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v3

    .line 2563
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForCurrentScrollPosition()Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    .line 2564
    iget v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 2565
    iget v2, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 2566
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    iget v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2567
    invoke-direct {p0, v5, v3, v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2569
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2571
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 2573
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragging:Z

    return-void

    .line 2553
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2754
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 2755
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2764
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2765
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageRight()Z

    move-result p1

    goto :goto_1

    :cond_0
    const/16 p1, 0x42

    .line 2767
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    .line 2757
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2758
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageLeft()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/16 p1, 0x11

    .line 2760
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    .line 2771
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2772
    invoke-virtual {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 2773
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2774
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fakeDragBy(F)V
    .locals 10

    .line 2584
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_5

    .line 2588
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2592
    :cond_0
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2594
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 2596
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2598
    iget v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstOffset:F

    mul-float/2addr v1, p1

    .line 2599
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastOffset:F

    mul-float/2addr v2, p1

    .line 2601
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 2602
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 2603
    iget v5, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-eqz v5, :cond_1

    .line 2604
    iget v1, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, p1

    .line 2606
    :cond_1
    iget v3, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v5}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 2607
    iget v2, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, p1

    :cond_2
    cmpg-float p1, v0, v1

    if-gez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    cmpl-float p1, v0, v2

    if-lez p1, :cond_4

    move v0, v2

    .line 2616
    :cond_4
    :goto_0
    iget p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2617
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    .line 2618
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->pageScrolled(I)Z

    .line 2621
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2622
    iget-wide v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    iget v7, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2624
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 2585
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3016
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3031
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3021
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lcom/miui/home/library/view/viewpager/PagerAdapter;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 800
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 801
    :cond_0
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 802
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    iget p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->childIndex:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 626
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 826
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 882
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;
    .locals 1

    .line 1522
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1523
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1526
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1528
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 1511
    :goto_0
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1512
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1513
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget-object v3, v1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method infoForPosition(I)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1532
    :goto_0
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1533
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1534
    iget v2, v1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initViewPager()V
    .locals 5

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 401
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 402
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setFocusable(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 404
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/miui/home/library/view/viewpager/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 405
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 406
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 408
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 409
    iput v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMinimumVelocity:I

    .line 410
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMaximumVelocity:I

    .line 411
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 412
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 414
    iput v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFlingDistance:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 415
    iput v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCloseEnough:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 416
    iput v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDefaultGutterSize:I

    .line 418
    new-instance v1, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;-><init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 420
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 426
    :cond_0
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$4;

    invoke-direct {v0, p0}, Lcom/miui/home/library/view/viewpager/ViewPager$4;-><init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 2637
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1543
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1544
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 480
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 483
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2467
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2470
    iget v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v1, :cond_4

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v1

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getWidth()I

    move-result v2

    .line 2474
    iget v3, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2476
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 2477
    iget v7, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    .line 2478
    iget-object v8, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2479
    iget v9, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    .line 2480
    iget-object v10, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    iget v10, v10, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 2482
    :goto_1
    iget v11, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2483
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_1

    .line 2487
    :cond_0
    iget v11, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1

    .line 2488
    iget v7, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    iget v11, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v11

    mul-float/2addr v7, v4

    .line 2489
    iget v11, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_2

    .line 2491
    :cond_1
    iget-object v11, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v11, v9}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    .line 2496
    :goto_2
    iget v12, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 2497
    iget-object v12, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTopPageBounds:I

    iget v15, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    .line 2498
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mBottomPageBounds:I

    .line 2497
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2499
    iget-object v3, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2030
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2043
    iget-boolean v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    return v9

    .line 2047
    :cond_1
    iget-boolean v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 2147
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2064
    :cond_4
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 2070
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2071
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2072
    iget v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 2073
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2074
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2075
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_6

    .line 2078
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2079
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/library/view/viewpager/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2081
    iput v10, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2082
    iput v12, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionY:F

    .line 2083
    iput-boolean v9, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsUnableToDrag:Z

    return v8

    .line 2086
    :cond_6
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_8

    .line 2088
    iput-boolean v9, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2089
    invoke-direct {p0, v9}, Lcom/miui/home/library/view/viewpager/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2090
    invoke-virtual {p0, v9}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollState(I)V

    if-lez v14, :cond_7

    .line 2091
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2093
    iput v12, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionY:F

    .line 2094
    invoke-direct {p0, v9}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 2095
    :cond_8
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 2101
    iput-boolean v9, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 2103
    :cond_9
    :goto_1
    iget-boolean v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_c

    .line 2105
    invoke-direct {p0, v10}, Lcom/miui/home/library/view/viewpager/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2106
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 2117
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    iput v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2118
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionY:F

    iput v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionY:F

    .line 2119
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    .line 2120
    iput-boolean v8, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 2122
    iput-boolean v9, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsScrollStarted:Z

    .line 2123
    iget-object v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2124
    iget v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollState:I

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2125
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 2127
    iget-object v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2128
    iput-boolean v8, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    .line 2129
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    .line 2130
    iput-boolean v9, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2131
    invoke-direct {p0, v9}, Lcom/miui/home/library/view/viewpager/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2132
    invoke-virtual {p0, v9}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollState(I)V

    goto :goto_2

    .line 2134
    :cond_b
    invoke-direct {p0, v8}, Lcom/miui/home/library/view/viewpager/ViewPager;->completeScroll(Z)V

    .line 2135
    iput-boolean v8, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2151
    :cond_c
    :goto_2
    iget-object v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 2152
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2154
    :cond_d
    iget-object v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2160
    iget-boolean v0, v6, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 2036
    :cond_e
    :goto_3
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->resetTouch()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1681
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1685
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 1695
    invoke-virtual {v0, v4}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1696
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1697
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 1700
    iget-boolean v14, v12, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 1701
    iget v14, v12, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1702
    iget v12, v12, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v5

    goto :goto_1

    :cond_0
    sub-int v14, v2, v6

    .line 1716
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1717
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1709
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_1

    .line 1712
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    sub-int v12, v3, v10

    .line 1733
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1734
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 1726
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    .line 1729
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v14, v8

    .line 1739
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 1740
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    .line 1738
    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    .line 1749
    invoke-virtual {v0, v4}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1750
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    .line 1751
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 1753
    iget-boolean v9, v8, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_9

    invoke-virtual {v0, v6}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v13, v2

    .line 1754
    iget v9, v9, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 1757
    iget-boolean v14, v8, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1760
    iput-boolean v14, v8, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1761
    iget v8, v8, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v8

    float-to-int v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v14, v3, v7

    sub-int/2addr v14, v10

    .line 1764
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1767
    invoke-virtual {v6, v8, v13}, Landroid/view/View;->measure(II)V

    .line 1775
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    .line 1776
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 1774
    invoke-virtual {v6, v9, v7, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1780
    :cond_a
    iput v7, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v10

    .line 1781
    iput v3, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mBottomPageBounds:I

    .line 1782
    iput v11, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDecorChildCount:I

    .line 1784
    iget-boolean v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1785
    iget v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 1787
    :goto_4
    iput-boolean v2, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1554
    invoke-static {v1, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    .line 1555
    invoke-static {v1, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1554
    invoke-virtual {v0, v2, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->setMeasuredDimension(II)V

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getMeasuredWidth()I

    move-result v2

    .line 1558
    div-int/lit8 v3, v2, 0xa

    .line 1559
    iget v4, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mGutterSize:I

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1570
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v4

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_c

    .line 1572
    invoke-virtual {v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1573
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    .line 1574
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    if-eqz v6, :cond_b

    .line 1575
    iget-boolean v10, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_b

    .line 1576
    iget v10, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1577
    iget v11, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    move v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v7

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    move v7, v1

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    move v12, v10

    move v10, v8

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    move v12, v8

    goto :goto_4

    :cond_5
    move v12, v10

    .line 1591
    :goto_4
    iget v13, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    .line 1593
    iget v10, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_6

    .line 1594
    iget v10, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->width:I

    move v13, v10

    move v10, v8

    goto :goto_5

    :cond_6
    move v13, v3

    move v10, v8

    goto :goto_5

    :cond_7
    move v13, v3

    .line 1597
    :goto_5
    iget v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_9

    .line 1599
    iget v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_8

    .line 1600
    iget v1, v6, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->height:I

    goto :goto_6

    :cond_8
    move v1, v5

    goto :goto_6

    :cond_9
    move v1, v5

    move v8, v12

    .line 1603
    :goto_6
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1604
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1605
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    .line 1608
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_7

    :cond_a
    if-eqz v7, :cond_b

    .line 1610
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_b
    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1616
    :cond_c
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    .line 1617
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    .line 1620
    iput-boolean v7, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInLayout:Z

    .line 1621
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    const/4 v1, 0x0

    .line 1622
    iput-boolean v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInLayout:Z

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v2

    :goto_8
    if-ge v1, v2, :cond_f

    .line 1627
    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1628
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_e

    .line 1633
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    if-eqz v5, :cond_d

    .line 1634
    iget-boolean v7, v5, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v3

    .line 1635
    iget v5, v5, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1637
    iget v7, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 12

    .line 1864
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 1865
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v0

    .line 1866
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result v3

    .line 1867
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result v4

    .line 1868
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getWidth()I

    move-result v5

    .line 1869
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    .line 1871
    invoke-virtual {p0, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1872
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 1873
    iget-boolean v10, v9, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_0

    goto :goto_2

    .line 1875
    :cond_0
    iget v9, v9, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    sub-int v9, v5, v7

    .line 1890
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1891
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    move v11, v9

    move v9, v4

    move v4, v11

    goto :goto_1

    .line 1883
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_1

    .line 1886
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v11, v9

    move v9, v4

    move v4, v11

    :goto_1
    add-int/2addr v4, v0

    .line 1896
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_4

    .line 1898
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v4, v9

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1903
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/library/view/viewpager/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1905
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageTransformer:Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;

    if-eqz p1, :cond_7

    .line 1906
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result p1

    .line 1907
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v1, p2, :cond_7

    .line 1909
    invoke-virtual {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1910
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 1912
    iget-boolean v0, v0, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_6

    goto :goto_4

    .line 1913
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1914
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageTransformer:Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1918
    :cond_7
    iput-boolean v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2967
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2978
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2979
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2980
    invoke-virtual {p0, v5}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2981
    iget v6, v6, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2982
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1451
    instance-of v0, p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1452
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1456
    :cond_0
    check-cast p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    .line 1457
    invoke-virtual {p1}, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1459
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1460
    iget-object v1, p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1461
    iget p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1463
    :cond_1
    iget v0, p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->position:I

    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredCurItem:I

    .line 1464
    iget-object v0, p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1465
    iget-object p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1440
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1441
    new-instance v1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1442
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    iput v0, v1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->position:I

    .line 1443
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1645
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1649
    iget p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/miui/home/library/view/viewpager/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2165
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2172
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2178
    :cond_1
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 2183
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2184
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2186
    :cond_3
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2281
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2282
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2274
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2275
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2276
    iput v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2277
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2268
    :pswitch_3
    iget-boolean p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_7

    .line 2269
    iget p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollToItem(IZIZ)V

    .line 2270
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2204
    :pswitch_4
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_6

    .line 2205
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 2209
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2212
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2213
    iget v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2214
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2215
    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2219
    iget v6, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 2221
    iput-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2222
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2223
    iget v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2225
    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionY:F

    .line 2226
    invoke-virtual {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollState(I)V

    .line 2227
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2230
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2232
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2237
    :cond_6
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    .line 2239
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2240
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2241
    invoke-direct {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 2245
    :pswitch_5
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    .line 2246
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 2247
    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2248
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2249
    iput-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    .line 2250
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v2

    .line 2251
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v3

    .line 2252
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForCurrentScrollPosition()Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    .line 2253
    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 2254
    iget v6, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2255
    iget v2, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 2257
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2258
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2259
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 2260
    invoke-direct {p0, v6, v3, v0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2262
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2264
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->resetTouch()Z

    move-result v2

    goto :goto_1

    .line 2193
    :pswitch_6
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2194
    iput-boolean v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    .line 2195
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    .line 2198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionX:F

    .line 2199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mLastMotionY:F

    .line 2200
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mActivePointerId:I

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 2286
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_8
    return v1

    :cond_9
    :goto_2
    return v2

    nop

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

.method pageLeft()Z
    .locals 2

    .line 2882
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2883
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 2890
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2891
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 1

    .line 1090
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1095
    iget v2, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-eq v2, v1, :cond_0

    .line 1096
    invoke-virtual {v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForPosition(I)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v2

    .line 1097
    iput v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1100
    :goto_0
    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-nez v1, :cond_1

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1109
    :cond_1
    iget-boolean v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_2

    .line 1111
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1118
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1122
    :cond_3
    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1124
    iget v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 1125
    iget v4, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1126
    iget-object v6, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v6}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1127
    iget v8, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1129
    iget v7, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mExpectedAdapterCount:I

    if-ne v6, v7, :cond_22

    move v7, v5

    .line 1147
    :goto_1
    iget-object v8, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1148
    iget-object v8, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 1149
    iget v9, v8, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v10, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-lt v9, v10, :cond_4

    .line 1150
    iget v9, v8, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v10, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1156
    iget v8, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {v0, v8, v7}, Lcom/miui/home/library/view/viewpager/ViewPager;->addNewItem(II)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_1b

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    .line 1165
    iget-object v11, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1166
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    move v3, v9

    goto :goto_4

    .line 1167
    :cond_8
    iget v14, v8, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    sub-float v14, v13, v14

    .line 1168
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float v3, v14, v15

    .line 1169
    :goto_4
    iget v14, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v14, v14, -0x1

    move v15, v10

    move v10, v7

    move v7, v9

    :goto_5
    if-ltz v14, :cond_10

    cmpl-float v16, v7, v3

    if-ltz v16, :cond_b

    if-ge v14, v4, :cond_b

    if-nez v11, :cond_9

    goto :goto_a

    .line 1174
    :cond_9
    iget v5, v11, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v14, v5, :cond_f

    iget-boolean v5, v11, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_f

    .line 1175
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1176
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget-object v11, v11, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v0, v14, v11}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v10, v10, -0x1

    if-ltz v15, :cond_a

    .line 1183
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    move-object v11, v5

    goto :goto_9

    :cond_b
    if-eqz v11, :cond_d

    .line 1185
    iget v5, v11, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v14, v5, :cond_d

    .line 1186
    iget v5, v11, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v5

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_c

    .line 1188
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    move-object v11, v5

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v15, 0x1

    .line 1190
    invoke-virtual {v0, v14, v5}, Lcom/miui/home/library/view/viewpager/ViewPager;->addNewItem(II)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v5

    .line 1191
    iget v5, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v15, :cond_e

    .line 1193
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    move-object v11, v5

    :cond_f
    :goto_9
    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 1197
    :cond_10
    :goto_a
    iget v3, v8, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v10, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_1a

    .line 1200
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_b
    if-gtz v12, :cond_12

    move v7, v9

    goto :goto_c

    .line 1202
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v11, v12

    div-float/2addr v7, v11

    add-float/2addr v7, v13

    .line 1203
    :goto_c
    iget v11, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    :goto_d
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_1a

    cmpl-float v12, v3, v7

    if-ltz v12, :cond_15

    if-le v11, v1, :cond_15

    if-nez v5, :cond_13

    goto :goto_f

    .line 1208
    :cond_13
    iget v12, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_19

    iget-boolean v12, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_19

    .line 1209
    iget-object v12, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1210
    iget-object v12, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget-object v5, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1215
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_e

    :cond_14
    const/4 v5, 0x0

    goto :goto_e

    :cond_15
    if-eqz v5, :cond_17

    .line 1217
    iget v12, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_17

    .line 1218
    iget v5, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 1220
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    goto :goto_e

    .line 1222
    :cond_17
    invoke-virtual {v0, v11, v4}, Lcom/miui/home/library/view/viewpager/ViewPager;->addNewItem(II)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1224
    iget v5, v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    .line 1225
    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_18

    iget-object v5, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    goto :goto_e

    :cond_18
    const/4 v5, 0x0

    :cond_19
    :goto_e
    goto :goto_d

    .line 1230
    :cond_1a
    :goto_f
    invoke-direct {v0, v8, v10, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->calculatePageOffsets(Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;ILcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;)V

    .line 1232
    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget v2, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    iget-object v3, v8, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1242
    :cond_1b
    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1d

    .line 1248
    invoke-virtual {v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1249
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;

    .line 1250
    iput v2, v4, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->childIndex:I

    .line 1251
    iget-boolean v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_1c

    iget v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->widthFactor:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1c

    .line 1253
    invoke-virtual {v0, v3}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1255
    iget v5, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->widthFactor:F

    iput v5, v4, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->widthFactor:F

    .line 1256
    iget v3, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iput v3, v4, Lcom/miui/home/library/view/viewpager/ViewPager$LayoutParams;->position:I

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1260
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->sortChildDrawingOrder()V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 1264
    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v3

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_1f

    .line 1265
    iget v1, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v2, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-eq v1, v2, :cond_21

    :cond_1f
    const/4 v1, 0x0

    .line 1266
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1267
    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1268
    invoke-virtual {v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1269
    iget v3, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget v4, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_20

    const/4 v3, 0x2

    .line 1270
    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_13

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_21
    :goto_13
    return-void

    .line 1132
    :cond_22
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    .line 1134
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1136
    :goto_14
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    .line 1141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeOnAdapterChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnAdapterChangeListener;)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1503
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1506
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/miui/home/library/view/viewpager/PagerAdapter;)V
    .locals 7

    .line 505
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 507
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 508
    :goto_0
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 509
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    .line 510
    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget v5, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v3, v3, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 513
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 514
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->removeNonDecorViews()V

    .line 515
    iput v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    .line 516
    invoke-virtual {p0, v2, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollTo(II)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    .line 520
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    .line 521
    iput v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mExpectedAdapterCount:I

    .line 523
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz v3, :cond_5

    .line 524
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mObserver:Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 525
    new-instance v3, Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;

    invoke-direct {v3, p0}, Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;-><init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V

    iput-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mObserver:Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;

    .line 527
    :cond_2
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget-object v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mObserver:Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 528
    iput-boolean v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    .line 529
    iget-boolean v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 530
    iput-boolean v4, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    .line 531
    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v5}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mExpectedAdapterCount:I

    .line 532
    iget v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 533
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget-object v5, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 534
    iget v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v2, v4}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v3, -0x1

    .line 535
    iput v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredCurItem:I

    .line 536
    iput-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 537
    iput-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 539
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    goto :goto_1

    .line 541
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->requestLayout()V

    .line 546
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 547
    iget-object v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_6

    .line 548
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/library/view/viewpager/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/miui/home/library/view/viewpager/ViewPager;Lcom/miui/home/library/view/viewpager/PagerAdapter;Lcom/miui/home/library/view/viewpager/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    .line 611
    iget-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 621
    iput-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPopulatePending:Z

    .line 622
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 630
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 638
    iget p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 639
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 646
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {p1}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 648
    :cond_3
    :goto_0
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 649
    iget v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 653
    :goto_1
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 654
    iget-object v2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_5
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    .line 659
    :goto_2
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_8

    .line 662
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    if-eqz p3, :cond_7

    .line 664
    invoke-direct {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->dispatchOnPageSelected(I)V

    .line 666
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->requestLayout()V

    goto :goto_3

    .line 668
    :cond_8
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate(I)V

    .line 669
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/miui/home/library/view/viewpager/ViewPager;->scrollToItem(IZIZ)V

    :goto_3
    return-void

    .line 635
    :cond_9
    :goto_4
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method setInternalPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInternalPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    .line 814
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mInternalPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string v1, "ViewPager"

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 852
    :cond_0
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 853
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 854
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 707
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mOnPageChangeListener:Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 867
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    .line 868
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    .line 870
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getWidth()I

    move-result v1

    .line 871
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->recomputeScrollPosition(IIII)V

    .line 873
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 893
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setWillNotDraw(Z)V

    .line 894
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;)V
    .locals 1

    const/4 v0, 0x2

    .line 767
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->setPageTransformer(ZLcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 786
    :goto_0
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageTransformer:Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    .line 787
    :goto_2
    iput-object p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageTransformer:Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;

    .line 788
    invoke-virtual {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 790
    :cond_3
    iput v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrder:I

    .line 791
    iput p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageTransformerLayerType:I

    goto :goto_3

    .line 793
    :cond_4
    iput v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mDrawingOrder:I

    :goto_3
    if-eqz v3, :cond_5

    .line 795
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    :cond_5
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 487
    iget v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 491
    :cond_0
    iput p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScrollState:I

    .line 492
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageTransformer:Lcom/miui/home/library/view/viewpager/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 494
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->enableLayers(Z)V

    .line 496
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 937
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 9

    .line 948
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 950
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 961
    iget-boolean v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 963
    :goto_1
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 964
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    move v4, v0

    goto :goto_2

    .line 966
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollX()I

    move-result v0

    move v4, v0

    .line 968
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 972
    invoke-direct {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->completeScroll(Z)V

    .line 973
    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    .line 974
    invoke-virtual {p0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollState(I)V

    return-void

    .line 978
    :cond_4
    invoke-direct {p0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 979
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollState(I)V

    .line 981
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getClientWidth()I

    move-result p1

    .line 982
    div-int/lit8 p2, p1, 0x2

    .line 983
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 985
    invoke-virtual {p0, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 988
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_5

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 990
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 992
    :cond_5
    iget-object p2, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    iget p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 993
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    .line 996
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1000
    iput-boolean v1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mIsScrollStarted:Z

    .line 1001
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1002
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 908
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
