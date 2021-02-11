.class public Lcom/miui/home/launcher/CellLayout;
.super Lcom/miui/launcher/views/LauncherViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$LocationCalibration;
.implements Lcom/miui/home/launcher/DragView$DropTargetContainer;
.implements Lcom/miui/home/launcher/Launcher$IconContainer;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/PendingSource;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CellLayout$DrawableWorker;,
        Lcom/miui/home/launcher/CellLayout$Widget;,
        Lcom/miui/home/launcher/CellLayout$CellInfo;,
        Lcom/miui/home/launcher/CellLayout$LayoutParams;,
        Lcom/miui/home/launcher/CellLayout$ViewConfiguration;,
        Lcom/miui/home/launcher/CellLayout$ItemArea;,
        Lcom/miui/home/launcher/CellLayout$StayConfirm;,
        Lcom/miui/home/launcher/CellLayout$DragPos;,
        Lcom/miui/home/launcher/CellLayout$_lancet;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SHAKE_OFFSET:I

.field private static sOnInVisibaleIconDrawableWorker:Lcom/miui/home/launcher/CellLayout$DrawableWorker;

.field private static sOnVisibaleIconDrawableWorker:Lcom/miui/home/launcher/CellLayout$DrawableWorker;

.field private static sShakeAnimScaler:[I


# instance fields
.field private mAnimatorNum:I

.field private mBlurAnimator:Landroid/animation/ValueAnimator;

.field private mBlurCount:I

.field private mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mCellPaddingLeft:I

.field private mCellPaddingRight:I

.field private mCellPaddingTop:I

.field private mCellWidth:I

.field private mCellXIterateRange:[I

.field private mCellXY:[I

.field mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

.field private mDeleteSelfRunnable:Ljava/lang/Runnable;

.field private mDisableTouch:Z

.field private mDropAnimationCounter:I

.field private mDstPos:[I

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mEmptyCellMarkAnimator:Landroid/animation/ValueAnimator;

.field private mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mEmptyCellMarkDrawableAlpha:I

.field private mEmptyCellMarkLP:Lcom/miui/home/launcher/CellLayout$LayoutParams;

.field private mEmptyCellMarkStartAlpha:I

.field private mFirstPos:[I

.field private mHCells:I

.field private mHeightGap:I

.field private mIsDrawingInThumbnailView:Z

.field private mIsNoVacantMode:Z

.field private mIsShowEmptyCellMark:Z

.field private mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

.field private mLastDownOnOccupiedCell:Z

.field mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field private mLastDragedXY:[I

.field private mLastRelayoutTime:J

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLayoutBackupValid:Z

.field private mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

.field private mMoveAwayViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNotchEditModeGapDelta:I

.field private mNotchEditModePaddingTopDelta:I

.field private mOccupiedCell:[[Landroid/view/View;

.field private mOccupiedCellBak:[[Landroid/view/View;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

.field private mRandomOffset:[F

.field private final mRect:Landroid/graphics/Rect;

.field private mRectTmp:Landroid/graphics/Rect;

.field private mSpringAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/animate/SpringAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

.field private mStayConfirmSize:I

.field mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field protected mTmpXY:[I

.field private mToasted:Z

.field private mTotalCells:I

.field private mVCells:I

.field private mVisibleForMaml:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetCellHeight:I

.field private mWidgetCellPaddingBottom:I

.field private mWidgetCellPaddingLeft:I

.field private mWidgetCellPaddingRight:I

.field private mWidgetCellPaddingTop:I

.field private mWidgetCellWidth:I

.field private mWidthGap:I

.field private mXs:[I

.field private mYs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 103
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/CellLayout;->SHAKE_OFFSET:I

    const/4 v0, 0x0

    .line 161
    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sShakeAnimScaler:[I

    .line 3255
    new-instance v0, Lcom/miui/home/launcher/CellLayout$12;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$12;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sOnVisibaleIconDrawableWorker:Lcom/miui/home/launcher/CellLayout$DrawableWorker;

    .line 3274
    new-instance v0, Lcom/miui/home/launcher/CellLayout$13;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$13;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sOnInVisibaleIconDrawableWorker:Lcom/miui/home/launcher/CellLayout$DrawableWorker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 112
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    .line 130
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 131
    new-instance p3, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p3}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    const/4 p3, 0x2

    .line 133
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 134
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 135
    new-instance v0, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 136
    new-instance v0, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 138
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 154
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayViewList:Ljava/util/ArrayList;

    .line 162
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    .line 164
    new-instance v1, Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-direct {v1}, Lcom/miui/home/launcher/PendingSourceDelegate;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 166
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 167
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    .line 402
    iput p2, p0, Lcom/miui/home/launcher/CellLayout;->mAnimatorNum:I

    .line 403
    new-array v1, p3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 965
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    .line 1387
    new-instance v1, Lcom/miui/home/launcher/CellLayout$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$7;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    .line 1528
    new-instance v1, Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    const-wide/16 v1, 0x0

    .line 1530
    iput-wide v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    .line 2214
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 2286
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    .line 2334
    new-instance v1, Lcom/miui/home/launcher/CellLayout$9;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$9;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    .line 2509
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    .line 2856
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    .line 2857
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    .line 2997
    iput p2, p0, Lcom/miui/home/launcher/CellLayout;->mDropAnimationCounter:I

    .line 3046
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mIsShowEmptyCellMark:Z

    .line 3047
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 3048
    iput p2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawableAlpha:I

    .line 3055
    iput p2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkStartAlpha:I

    .line 3056
    new-instance v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkLP:Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 3057
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkAnimator:Landroid/animation/ValueAnimator;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->setCellPaddingTop(I)V

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 183
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingRight:I

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    .line 186
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingBottom:I

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 190
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/Launcher;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 191
    new-instance v1, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v1, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 193
    new-instance v1, Lcom/miui/home/launcher/CellBackground;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 194
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    new-instance v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    new-instance v1, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellBackground;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f080091

    .line 196
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    .line 198
    sget-object p1, Lcom/miui/home/launcher/CellLayout;->sShakeAnimScaler:[I

    if-nez p1, :cond_1

    const p1, 0x7f03000b

    .line 199
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/miui/home/launcher/CellLayout;->sShakeAnimScaler:[I

    move v1, p2

    .line 201
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/CellLayout;->sShakeAnimScaler:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 202
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    :cond_1
    new-array p1, p3, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    .line 208
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    const p2, 0x7f0b0017

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 210
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 211
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 212
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 213
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/miui/home/launcher/CellLayout$1;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/CellLayout$1;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/miui/home/launcher/CellLayout$2;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/CellLayout$2;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->setWillNotCacheDrawing(Z)V

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setNoVacantMode(Z)V

    .line 255
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x40800000    # 4.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellLayout;)[F
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mRandomOffset:[F

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/CellLayout;[F)[F
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mRandomOffset:[F

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayoutWithoutRelayout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsNoSpan(IIII)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/CellLayout;II)I
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/CellLayout;I)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->hasEmptyCellBeforeTargetIndex(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 86
    sget v0, Lcom/miui/home/launcher/CellLayout;->SHAKE_OFFSET:I

    return v0
.end method

.method static synthetic access$2000(IIII)I
    .locals 0

    .line 86
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->calculateX(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(IIIIII)I
    .locals 0

    .line 86
    invoke-static/range {p0 .. p5}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mIsShowEmptyCellMark:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/home/launcher/CellLayout;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkStartAlpha:I

    return p0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/CellLayout;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setEmptyCellMarkDrawableAlpha(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->onEnterAnimationEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsWithSpanForInnerItem(IIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsWithSpan(IIII)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    return-void
.end method

.method private backupLayout()V
    .locals 2

    .line 2217
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    const/4 v0, 0x1

    .line 2218
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    return-void
.end method

.method private calCellXRange(I)V
    .locals 4

    .line 968
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v3, v2

    :goto_0
    aput v3, v0, v1

    .line 969
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v1, p1, -0x1

    :cond_1
    aput v1, v0, v2

    return-void
.end method

.method private calFirstIconPos(I)V
    .locals 5

    .line 2893
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr p1, v2

    :goto_0
    aput p1, v0, v1

    .line 2894
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2895
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v1, p1, v2

    return-void

    .line 2898
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v1, p1, v2

    move p1, v1

    .line 2899
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge p1, v0, :cond_5

    move v0, v1

    .line 2900
    :goto_2
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v0, v3, :cond_4

    .line 2901
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v0

    aget-object v3, v3, p1

    if-nez v3, :cond_2

    goto :goto_3

    .line 2903
    :cond_2
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 2904
    iget v4, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v4, v2, :cond_3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v3, v2, :cond_3

    .line 2905
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput p1, v0, v2

    return-void

    .line 2908
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    add-int/lit8 v4, p1, 0x2

    aput v4, v3, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private calNextDstPos(I)V
    .locals 4

    .line 2860
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2861
    aget v3, v0, v1

    if-gez v3, :cond_0

    .line 2862
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr p1, v2

    aput p1, v0, v1

    .line 2863
    aget p1, v0, v2

    add-int/2addr p1, v2

    aput p1, v0, v2

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 2864
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v0, p1, v1

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt v0, v3, :cond_1

    .line 2865
    aput v1, p1, v1

    .line 2866
    aget v0, p1, v2

    add-int/2addr v0, v2

    aput v0, p1, v2

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateCellBackgroundAlpha(Lcom/miui/home/launcher/DragObject;)I
    .locals 0

    .line 2236
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x50

    return p1

    :cond_0
    const/16 p1, 0x26

    return p1
.end method

.method private calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I
    .locals 3

    .line 1930
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1931
    iget v1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    .line 1932
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1933
    iget p1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    if-nez p3, :cond_0

    add-int/2addr v0, v2

    .line 1936
    iget p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 1938
    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    add-int/2addr v1, p1

    .line 1940
    iget p1, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, p1

    goto :goto_0

    .line 1942
    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p1, v1

    :goto_0
    return v0
.end method

.method private static calculateX(IIII)I
    .locals 0

    add-int/2addr p2, p3

    mul-int/2addr p0, p2

    add-int/2addr p1, p0

    return p1
.end method

.method private calculateXsAndYs()V
    .locals 15

    .line 821
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 825
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingLeft:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    :goto_1
    if-eqz v0, :cond_3

    .line 826
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    :goto_2
    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_3

    .line 827
    :cond_4
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    :goto_3
    if-eqz v0, :cond_5

    .line 828
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    goto :goto_4

    :cond_5
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    .line 829
    :goto_4
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v12

    if-eqz v0, :cond_6

    .line 830
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellHeight()I

    move-result v6

    goto :goto_5

    :cond_6
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    :goto_5
    move v13, v6

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_6

    .line 831
    :cond_7
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    .line 832
    :goto_6
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v14

    move v6, v2

    .line 833
    :goto_7
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    array-length v8, v7

    if-ge v6, v8, :cond_8

    .line 834
    invoke-static {v6, v1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->calculateX(IIII)I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 836
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    array-length v3, v1

    if-ge v2, v3, :cond_9

    move v6, v2

    move v7, v5

    move v8, v12

    move v9, v13

    move v10, v0

    move v11, v14

    .line 837
    invoke-static/range {v6 .. v11}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    return-void

    :cond_a
    :goto_9
    return-void
.end method

.method private static calculateY(IIIIII)I
    .locals 0

    add-int/2addr p1, p2

    add-int/2addr p3, p4

    sub-int/2addr p3, p5

    mul-int/2addr p0, p3

    add-int/2addr p1, p0

    return p1
.end method

.method private cellToPositionIndex(II)I
    .locals 1

    .line 2627
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private cellToPositionIndexIgnoreRTL(II)I
    .locals 1

    .line 2631
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private checkEmptyAreaSize(IIII)Z
    .locals 4

    mul-int/2addr p3, p4

    const/4 p1, 0x0

    move p2, p1

    move p4, p2

    .line 1650
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    const/4 v1, 0x1

    if-ge p2, v0, :cond_1

    .line 1651
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1652
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v3, v2, p1

    aget-object v0, v0, v3

    aget v1, v2, v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    add-int/lit8 p4, p4, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-ge p4, p3, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method private copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2224
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v3, :cond_2

    move v3, v2

    move v2, v0

    .line 2225
    :goto_1
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v4, :cond_1

    .line 2226
    aget-object v4, p2, v2

    aget-object v4, v4, v1

    aget-object v5, p1, v2

    aget-object v5, v5, v1

    if-eq v4, v5, :cond_0

    .line 2227
    aget-object v3, p2, v2

    aget-object v4, p1, v2

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method private correctCellPositionRuntime()V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 335
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 336
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findTheFarthestEmptyCell(ZII)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1607
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-eqz p1, :cond_0

    .line 1608
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge p2, v4, :cond_4

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_4

    .line 1609
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    .line 1610
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v5, v0, v1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p3, :cond_1

    goto :goto_2

    :cond_1
    move v3, p2

    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    move p2, v3

    .line 1617
    :goto_2
    new-instance p1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private findViewsTouchEdge(Landroid/view/View;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2019
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 2049
    :pswitch_0
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr p2, v0

    .line 2050
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-lt p2, v0, :cond_0

    return-void

    .line 2051
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :goto_0
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 2052
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, v0

    aget-object v2, v2, p2

    if-eqz v2, :cond_1

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2053
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2031
    :pswitch_1
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr p2, v0

    .line 2032
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt p2, v0, :cond_2

    return-void

    .line 2033
    :cond_2
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_1
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 2034
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, p2

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2035
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2040
    :pswitch_2
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_4

    return-void

    .line 2042
    :cond_4
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :goto_2
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 2043
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, v0

    aget-object v2, v2, p2

    if-eqz v2, :cond_5

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2044
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2022
    :pswitch_3
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_6

    return-void

    .line 2024
    :cond_6
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_3
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 2025
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, p2

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2026
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    return-object p1
.end method

.method private getEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;)Lcom/miui/home/launcher/CellLayout$ItemArea;
    .locals 7

    .line 1754
    new-instance v6, Lcom/miui/home/launcher/CellLayout$ItemArea;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1755
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$Ht3QlUOJNcQXdxd6R4RF9An8ka4;

    invoke-direct {v0, p0, v6}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$Ht3QlUOJNcQXdxd6R4RF9An8ka4;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInArea(Ljava8/util/function/Consumer;)V

    return-object v6
.end method

.method private getHeightGapDelta()I
    .locals 1

    .line 2731
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModeGapDelta:I

    return v0
.end method

.method private getMaxIndex()I
    .locals 2

    .line 1099
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getPaddingTopDelta()I
    .locals 1

    .line 2727
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModePaddingTopDelta:I

    return v0
.end method

.method private getPushDirections()[I
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 1748
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support other stay type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :pswitch_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 1739
    :pswitch_1
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 1736
    :pswitch_2
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 1742
    :pswitch_3
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
        0x3
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x1
        0x0
        0x2
    .end array-data
.end method

.method private handleAllShortcuts(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 394
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 395
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-interface {p1, v1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hasEmptyCellBeforeTargetIndex(I)Z
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 1534
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isCellVacant(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isCellVacant(I)Z
    .locals 3

    .line 1542
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1543
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1544
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    const/4 v1, 0x0

    aget v2, v0, v1

    aget-object p1, p1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isScreenType(I)Z
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$doEditModeAnimation$2(FFLandroid/view/View;FIFIF)V
    .locals 0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    mul-float/2addr p0, p7

    add-float/2addr p0, p1

    .line 439
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    .line 440
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    int-to-float p0, p4

    add-float/2addr p3, p0

    mul-float/2addr p3, p7

    sub-float/2addr p3, p0

    .line 441
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, p6

    add-float/2addr p5, p0

    mul-float/2addr p5, p7

    sub-float/2addr p5, p0

    .line 442
    invoke-virtual {p2, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$doEditModeAnimation$3(Lcom/miui/home/launcher/CellLayout;FLandroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 478
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mBlurCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mBlurCount:I

    .line 479
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 481
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mBlurCount:I

    rem-int/lit8 v0, v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_0

    cmpl-float v0, p3, v2

    if-nez v0, :cond_1

    :cond_0
    sub-float/2addr v2, p1

    mul-float/2addr p3, v2

    add-float/2addr p1, p3

    const/4 p3, 0x0

    .line 482
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$doEditModeAnimation$4(Lcom/miui/home/launcher/CellLayout;F)V
    .locals 2

    .line 494
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    add-float/2addr v1, p1

    .line 495
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    return-void
.end method

.method public static synthetic lambda$doEditModeAnimation$5(Lcom/miui/home/launcher/CellLayout;Landroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 512
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mBlurCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mBlurCount:I

    .line 513
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 515
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mBlurCount:I

    rem-int/lit8 v0, v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    :cond_0
    sub-float/2addr v2, p2

    const/4 p2, 0x0

    .line 516
    invoke-static {v2, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getEffectedArea$7(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/view/View;)V
    .locals 4

    if-eqz p2, :cond_7

    .line 1757
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    .line 1758
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-le v0, v2, :cond_1

    .line 1759
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1761
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-le v0, v2, :cond_3

    .line 1762
    :cond_2
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    .line 1764
    :cond_3
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 1765
    :cond_4
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v2

    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1767
    :cond_5
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_7

    .line 1768
    :cond_6
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v0, p2

    iget p2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    sub-int/2addr v0, p2

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    :cond_7
    return-void
.end method

.method public static synthetic lambda$moveEffectedArea$8(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1808
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1809
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1810
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$pushItemsInDistance$6(Lcom/miui/home/launcher/CellLayout;IILandroid/view/View;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 1729
    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->pushViewInDistance(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$quickShowOrHideAllShortcutsCheckBox$1(ZLcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 390
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->quickHideOrShowCheckbox(Z)V

    return-void
.end method

.method static synthetic lambda$setEditMode$0(ZLcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 386
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(Z)V

    return-void
.end method

.method private loadGridConfig()V
    .locals 9

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    const/4 v1, 0x1

    .line 276
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->isScreenType(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/CellLayout;->isScreenType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 305
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    .line 306
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    if-eqz v2, :cond_1

    array-length v3, v2

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ne v3, v5, :cond_1

    aget-object v2, v2, v4

    array-length v2, v2

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-eq v2, v3, :cond_2

    .line 308
    :cond_1
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Landroid/view/View;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/view/View;

    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 310
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 311
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellWidth()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellWidth:I

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellHeight()I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellHeight:I

    .line 314
    iput v4, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingRight:I

    iput v4, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingLeft:I

    goto/16 :goto_4

    .line 277
    :cond_3
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 278
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 279
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 280
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    .line 281
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 282
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    goto :goto_1

    .line 284
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellCountX()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 285
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellCountY()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    .line 286
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellWidth()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellWidth:I

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 287
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellHeight()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellHeight:I

    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 289
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, Landroid/view/View;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Landroid/view/View;

    iput-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    if-eqz v0, :cond_7

    .line 292
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v5

    if-ne v5, v1, :cond_6

    move v3, v4

    .line 293
    :goto_2
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v5, :cond_7

    move v5, v4

    .line 294
    :goto_3
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v5, v6, :cond_5

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    .line 296
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v7, v7, v5

    rem-int v8, v6, v2

    aget-object v8, v0, v8

    div-int/2addr v6, v2

    aget-object v6, v8, v6

    aput-object v6, v7, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 299
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 300
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 316
    :cond_7
    :goto_4
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Landroid/view/View;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/view/View;

    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    .line 317
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    if-nez v0, :cond_8

    .line 319
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    .line 321
    :cond_8
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    .line 322
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    .line 323
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_a

    .line 324
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 325
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_9

    .line 326
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 329
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method private loadMoveAwayViews(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 6

    .line 1914
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1915
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1916
    iget-object v3, p1, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 1917
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ne v4, v5, :cond_1

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eq v2, v3, :cond_0

    .line 1918
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1921
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mRandomOffset:[F

    const/4 p1, 0x0

    .line 1923
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1924
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mRandomOffset:[F

    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    aput v2, v0, p1

    move p1, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private makeEmptyCellsNoSpan(IIII)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    move p4, v1

    .line 1553
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndexIgnoreRTL(II)I

    move-result p2

    if-eqz p4, :cond_1

    add-int/lit8 p3, p2, -0x1

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    if-eqz p4, :cond_2

    move v2, p2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p2, 0x1

    :goto_2
    if-eqz p4, :cond_6

    .line 1557
    iget-boolean p4, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    if-eqz p4, :cond_4

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->hasEmptyCellBeforeTargetIndex(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v1

    move p4, p2

    goto :goto_4

    .line 1558
    :cond_4
    :goto_3
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/CellLayout;->searchRight(II)Landroid/util/Pair;

    move-result-object p2

    .line 1559
    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1560
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_4
    if-ge p2, p1, :cond_5

    if-ltz p3, :cond_5

    .line 1563
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/CellLayout;->searchLeft(II)Landroid/util/Pair;

    move-result-object p1

    .line 1564
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1565
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_5
    move p1, v1

    move v3, p1

    goto :goto_5

    .line 1568
    :cond_6
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/CellLayout;->searchLeft(II)Landroid/util/Pair;

    move-result-object p4

    .line 1569
    iget-object v3, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1570
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ge p4, p1, :cond_7

    .line 1571
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-gt v2, v4, :cond_7

    .line 1572
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/CellLayout;->searchRight(II)Landroid/util/Pair;

    move-result-object p1

    .line 1573
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1574
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v5, p2

    move p2, p1

    move p1, p4

    move p4, v5

    goto :goto_5

    :cond_7
    move p1, p4

    move p2, v1

    move p4, p2

    :goto_5
    if-lez p2, :cond_8

    .line 1579
    invoke-direct {p0, p4, v1, v2}, Lcom/miui/home/launcher/CellLayout;->squeezePosition(IZI)Z

    move-result p2

    or-int/2addr v1, p2

    :cond_8
    if-lez p1, :cond_9

    .line 1582
    invoke-direct {p0, v3, v0, p3}, Lcom/miui/home/launcher/CellLayout;->squeezePosition(IZI)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_9
    if-eqz v1, :cond_a

    .line 1585
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    .line 1587
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    return-void
.end method

.method private makeEmptyCellsWithSpan(IIII)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-ltz v1, :cond_8

    if-ltz v2, :cond_8

    .line 1850
    invoke-direct/range {p0 .. p4}, Lcom/miui/home/launcher/CellLayout;->checkEmptyAreaSize(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1853
    :cond_0
    iget-object v0, v6, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    iget-object v0, v6, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1855
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v7, v2, v4

    invoke-direct {v0, v1, v2, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1856
    new-instance v8, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    .line 1857
    invoke-virtual {v6, v8}, Lcom/miui/home/launcher/CellLayout;->saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    .line 1859
    iget v9, v6, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v10, v6, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-class v10, Landroid/view/View;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Landroid/view/View;

    .line 1860
    iget-object v10, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v6, v10, v9}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1861
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v2

    :goto_0
    const/4 v12, 0x0

    if-ge v11, v7, :cond_4

    move v14, v1

    :goto_1
    if-ge v14, v5, :cond_3

    .line 1864
    iget-object v15, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v15, v15, v14

    aget-object v15, v15, v11

    if-eqz v15, :cond_2

    const/4 v13, 0x2

    .line 1866
    invoke-direct {v6, v15, v0, v13}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x3

    .line 1867
    invoke-direct {v6, v15, v0, v13}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1868
    invoke-direct {v6, v15, v0, v12}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    .line 1869
    invoke-direct {v6, v15, v0, v13}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1871
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1872
    invoke-virtual {v6, v15, v13}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1878
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    .line 1879
    iget-object v5, v6, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v0, v12, v7}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    .line 1881
    iget-object v5, v8, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->comparator:Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;

    .line 1882
    iput v12, v5, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->whichDirection:I

    .line 1883
    invoke-static {v10, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1884
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1885
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1886
    invoke-direct {v6, v7}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    .line 1887
    iget v11, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v13, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v14, v10, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v15, v10, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v6, v11, v13, v14, v15}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v13, 0x1

    .line 1889
    invoke-virtual {v6, v7, v13}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1890
    aget v14, v11, v12

    iput v14, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1891
    aget v11, v11, v13

    iput v11, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1892
    invoke-virtual {v6, v7, v12}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_2

    .line 1895
    :cond_5
    iget-object v5, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v6, v9, v5}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1896
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    goto :goto_3

    :cond_6
    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_7

    .line 1904
    iget-object v5, v6, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v0, v7, v7}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v8

    .line 1910
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    return-void

    .line 1906
    :cond_7
    iget-object v0, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v6, v9, v0}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1907
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method private makeEmptyCellsWithSpanForInnerItem(IIII)V
    .locals 9

    .line 1777
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1780
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[Landroid/view/View;

    .line 1781
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v6}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1782
    new-instance v7, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    .line 1783
    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/CellLayout;->saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    .line 1785
    new-instance v8, Lcom/miui/home/launcher/CellLayout$ItemArea;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1786
    invoke-direct {p0, v8}, Lcom/miui/home/launcher/CellLayout;->getEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;)Lcom/miui/home/launcher/CellLayout$ItemArea;

    move-result-object v0

    .line 1788
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getPushDirections()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 1789
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1790
    aget v3, v1, v2

    invoke-direct {p0, v8, v0, v3}, Lcom/miui/home/launcher/CellLayout;->pushItemsInDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    .line 1791
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    return-void

    .line 1794
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/CellLayout;->resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1798
    :cond_2
    invoke-direct {p0, v0, v8}, Lcom/miui/home/launcher/CellLayout;->moveEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    .line 1799
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    goto :goto_1

    .line 1801
    :cond_3
    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/CellLayout;->resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    :goto_1
    return-void
.end method

.method private moveEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;)Z
    .locals 12

    .line 1806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$CellLayout$44_S0eYD1yj1iqu53RV4QvI9jjk;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$44_S0eYD1yj1iqu53RV4QvI9jjk;-><init>(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInArea(Ljava8/util/function/Consumer;)V

    .line 1813
    new-instance v1, Lcom/miui/home/launcher/ItemInfo;

    iget v2, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v3, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v4, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    iget v5, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    .line 1814
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    .line 1815
    iget v6, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v7, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v8, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    iget v9, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object p2

    .line 1816
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v2, v1, v4, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    if-eqz p2, :cond_1

    .line 1818
    aget v1, p2, v3

    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    sub-int/2addr v1, v2

    .line 1819
    aget p2, p2, v4

    iget p1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    sub-int/2addr p2, p1

    .line 1820
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1821
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1822
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v5, v1

    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1823
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v5, p2

    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1824
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    return v3
.end method

.method private onEnterAnimationEnd()V
    .locals 1

    .line 528
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mAnimatorNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mAnimatorNum:I

    .line 529
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mAnimatorNum:I

    if-nez v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->scaleCellLayout()V

    .line 531
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->resetAllViews()V

    .line 532
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationEnterEnd()V

    :cond_0
    return-void
.end method

.method private onRemoveViews(II)V
    .locals 5

    if-gez p1, :cond_0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_2

    add-int p2, p1, v0

    .line 2816
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2817
    instance-of v1, p2, Lcom/miui/home/launcher/CellBackground;

    if-nez v1, :cond_1

    .line 2818
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2819
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_1
    move p2, v0

    goto :goto_0

    .line 2823
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 0

    .line 1832
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x2

    .line 1833
    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p1, p3, p4

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 1834
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)V

    .line 1836
    :cond_0
    invoke-direct {p0, p5}, Lcom/miui/home/launcher/CellLayout;->loadMoveAwayViews(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    .line 1837
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 1838
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    .line 1840
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    return-void
.end method

.method private positionIndexToCellIgnoreRTL(I[I)V
    .locals 3

    .line 2640
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    rem-int v1, p1, v0

    const/4 v2, 0x0

    aput v1, p2, v2

    .line 2641
    div-int/2addr p1, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    return-void
.end method

.method private predict(Landroid/graphics/Region;Ljava/util/ArrayList;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Region;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CellLayout$Widget;",
            ">;I)Z"
        }
    .end annotation

    .line 3173
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    .line 3176
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3177
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 3178
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout$Widget;

    .line 3179
    iget-boolean v5, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    if-nez v5, :cond_4

    .line 3180
    iput-boolean v1, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    .line 3181
    new-instance v5, Landroid/graphics/RegionIterator;

    invoke-direct {v5, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 3182
    :cond_1
    :goto_1
    invoke-virtual {v5, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3183
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    if-lt v6, v7, :cond_1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    if-lt v6, v7, :cond_1

    .line 3184
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 3185
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v6, p3, 0x1

    .line 3186
    invoke-direct {p0, p1, p2, v6}, Lcom/miui/home/launcher/CellLayout;->predict(Landroid/graphics/Region;Ljava/util/ArrayList;I)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    .line 3190
    :cond_2
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .line 3193
    :cond_3
    iput-boolean v2, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method private pushItemsInDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;I)Z
    .locals 1

    .line 1727
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout$ItemArea;->getCoveringRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/miui/home/launcher/CellLayout;->calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I

    move-result p2

    .line 1728
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$MUsIhb2HBpnDmxPuoEr5DTCpbsI;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$MUsIhb2HBpnDmxPuoEr5DTCpbsI;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInAreaInterruptably(Ljava8/util/function/Predicate;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z
    .locals 8

    .line 1979
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1980
    new-instance v7, Lcom/miui/home/launcher/CellLayout$ItemArea;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1981
    invoke-direct {p0, v7, p2, p3}, Lcom/miui/home/launcher/CellLayout;->calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I

    move-result p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1986
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->pushViewInDistance(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method private pushViewInDistance(Landroid/view/View;II)Z
    .locals 7

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 1951
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1952
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Landroid/view/View;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/view/View;

    .line 1953
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1954
    new-instance v3, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    :cond_1
    const/4 v4, 0x1

    if-lez p2, :cond_3

    .line 1956
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1957
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1959
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1960
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1961
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1963
    invoke-direct {p0, v6, p3, v5}, Lcom/miui/home/launcher/CellLayout;->findViewsTouchEdge(Landroid/view/View;ILjava/util/ArrayList;)V

    .line 1964
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1969
    invoke-direct {p0, v1, p3, v4}, Lcom/miui/home/launcher/CellLayout;->shiftViews(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1970
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1971
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return v0

    :cond_3
    return v4
.end method

.method private resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 1

    .line 1844
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1845
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return-void
.end method

.method private resetAllViews()V
    .locals 3

    const/4 v0, 0x0

    .line 537
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 538
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 539
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 540
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 541
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 542
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rollbackLayout()V
    .locals 2

    .line 2180
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2182
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    :cond_0
    return-void
.end method

.method private rollbackLayoutWithoutRelayout()V
    .locals 2

    .line 2188
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private saveCurrentLayout()V
    .locals 17

    move-object/from16 v1, p0

    .line 2378
    iget-boolean v0, v1, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez v0, :cond_0

    return-void

    .line 2379
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    move v13, v4

    .line 2381
    :goto_0
    iget v5, v1, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v13, v5, :cond_7

    move v14, v4

    .line 2382
    :goto_1
    iget v5, v1, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v14, v5, :cond_6

    .line 2383
    iget-object v5, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v14

    aget-object v15, v5, v13

    if-eqz v15, :cond_5

    .line 2386
    :try_start_0
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    if-eqz v5, :cond_1

    .line 2387
    iget-wide v6, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    :cond_1
    if-eqz v5, :cond_2

    .line 2389
    iput-wide v2, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 2391
    :cond_2
    invoke-direct {v1, v15}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v12

    .line 2392
    iget-object v5, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v5, v5, v14

    aget-object v5, v5, v13

    if-ne v15, v5, :cond_3

    iget-object v5, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget v6, v12, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v6, v14

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    iget v6, v12, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v6, v13

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    if-eq v15, v5, :cond_5

    .line 2393
    :cond_3
    iput v14, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2394
    iput v13, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-wide/16 v6, -0x64

    .line 2398
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v10

    move-object v5, v12

    move v11, v14

    move-object/from16 v16, v12

    move v12, v13

    .line 2395
    invoke-static/range {v5 .. v12}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Launcher.CellLayout"

    .line 2400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCurrentLayout, info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Launcher.CellLayout"

    .line 2405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHCells: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mVCells: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mOccupiedCellBak size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v4, v5, v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", layoutRTL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2405
    invoke-static {v2, v3}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_4

    .line 2409
    invoke-direct {v1, v15}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 2410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " at ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") of screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " with spanX "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", spanY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.CellLayout"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_4
    throw v0

    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2417
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2418
    iget-object v2, v1, Lcom/miui/home/launcher/CellLayout;->mContext:Landroid/content/Context;

    const-string v3, "com.miui.home.launcher.settings"

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2420
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    return-void
.end method

.method private searchLeft(II)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    .line 1599
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findTheFarthestEmptyCell(ZII)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1601
    :cond_0
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private searchRight(II)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1591
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-eq p1, v0, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    .line 1592
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findTheFarthestEmptyCell(ZII)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1594
    :cond_0
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private setEmptyCellMarkDrawableAlpha(I)V
    .locals 1

    .line 3050
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 3051
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 3052
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawableAlpha:I

    :cond_0
    return-void
.end method

.method private setNoVacantMode(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return-void
.end method

.method private shiftViews(Ljava/util/ArrayList;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 1990
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1991
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1992
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 2004
    :pswitch_0
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_1

    .line 1998
    :pswitch_1
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_1

    .line 2001
    :pswitch_2
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_1

    .line 1995
    :pswitch_3
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2009
    :goto_1
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/miui/home/launcher/CellLayout;->isItemPosInvalid(IIII)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2012
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private squeezePosition(IZI)Z
    .locals 9

    .line 1622
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    move v4, v3

    .line 1626
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    .line 1627
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v6, v0, v1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v7, v0, v6

    aget-object v5, v5, v7

    if-eqz v5, :cond_3

    .line 1629
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    .line 1630
    iget v8, v7, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v8, v6, :cond_3

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v7, v6, :cond_3

    .line 1631
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v7, v0, v1

    aget-object v4, v4, v7

    aget v7, v0, v6

    const/4 v8, 0x0

    aput-object v8, v4, v7

    :cond_1
    if-eqz p2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    neg-int v4, v3

    :goto_1
    add-int/2addr v4, p1

    .line 1633
    invoke-direct {p0, v4, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    add-int/lit8 v3, v3, 0x1

    .line 1635
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v7, v0, v1

    aget-object v7, v4, v7

    aget v8, v0, v6

    aget-object v7, v7, v8

    if-nez v7, :cond_1

    .line 1636
    aget v7, v0, v1

    aget-object v4, v4, v7

    aget v7, v0, v6

    aput-object v5, v4, v7

    move v4, v6

    :cond_3
    if-eqz p2, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-eqz p2, :cond_5

    if-gt v2, p3, :cond_6

    goto :goto_0

    :cond_5
    if-ge v2, p3, :cond_0

    :cond_6
    return v4
.end method

.method private updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)V
    .locals 4

    .line 2501
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 2502
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v2, p2, v3

    if-eq v0, v2, :cond_1

    .line 2503
    :cond_0
    aget v0, p2, v1

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2504
    aget p2, p2, v3

    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2505
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method private updateCellBackgroundPositionWhenDragOver(Lcom/miui/home/launcher/CellBackground;[IIILcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 2485
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 2488
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p5

    .line 2489
    iget v0, p5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v0, p3, :cond_1

    iget v0, p5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v0, p4, :cond_2

    .line 2490
    :cond_1
    iput p3, p5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 2491
    iput p4, p5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 2492
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 2494
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)V

    .line 2495
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellBackground;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 2496
    new-instance p3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p3}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateChildColorIfNeed()V
    .locals 4

    .line 1308
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1310
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1311
    instance-of v3, v2, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    if-eqz v3, :cond_0

    .line 1312
    check-cast v2, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->updateColor()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private workOnAllCellLayoutIconDrawable(Lcom/miui/home/launcher/CellLayout$DrawableWorker;)V
    .locals 3

    .line 3246
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3247
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3248
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_0

    .line 3249
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/CellLayout$DrawableWorker;->process(Landroid/graphics/drawable/Drawable;)V

    .line 3250
    invoke-interface {p1, v1}, Lcom/miui/home/launcher/CellLayout$DrawableWorker;->process(Lcom/miui/home/launcher/ShortcutIcon;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 577
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 578
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 582
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getIsScreenOrientationChanged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 586
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 590
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 591
    invoke-super {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public alignIconsToTop(Z)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2947
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2950
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v4

    .line 2951
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 2952
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    .line 2953
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    aput v8, v5, v7

    .line 2954
    aget v6, v6, v3

    aput v6, v5, v3

    move v5, v3

    .line 2955
    :goto_0
    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v5, v6, :cond_9

    .line 2956
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v3

    :goto_1
    if-ne v4, v7, :cond_0

    .line 2957
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v8, v8, v7

    if-gt v6, v8, :cond_8

    goto :goto_2

    :cond_0
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v8, v8, v7

    if-lt v6, v8, :cond_8

    .line 2959
    :goto_2
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v8, v8, v6

    aget-object v8, v8, v5

    if-nez v8, :cond_1

    goto/16 :goto_4

    .line 2961
    :cond_1
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    .line 2962
    iget v10, v9, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v10, v7, :cond_7

    iget v10, v9, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v10, v7, :cond_7

    .line 2963
    :goto_3
    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v11, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v12, v11, v3

    aget-object v12, v10, v12

    aget v13, v11, v7

    aget-object v12, v12, v13

    if-eqz v12, :cond_3

    aget v12, v11, v3

    aget-object v10, v10, v12

    aget v11, v11, v7

    aget-object v10, v10, v11

    .line 2964
    invoke-direct {v0, v10}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    iget v10, v10, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v10, v7, :cond_2

    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v11, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v12, v11, v3

    aget-object v10, v10, v12

    aget v11, v11, v7

    aget-object v10, v10, v11

    .line 2965
    invoke-direct {v0, v10}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    iget v10, v10, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v10, v7, :cond_3

    .line 2966
    :cond_2
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calNextDstPos(I)V

    goto :goto_3

    .line 2968
    :cond_3
    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v11, v10, v3

    if-ne v6, v11, :cond_4

    aget v10, v10, v7

    if-eq v5, v10, :cond_6

    .line 2969
    :cond_4
    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v11, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v12, v11, v3

    aget-object v12, v10, v12

    aget v13, v11, v7

    aput-object v8, v12, v13

    .line 2970
    aget-object v10, v10, v6

    const/4 v12, 0x0

    aput-object v12, v10, v5

    .line 2971
    aget v10, v11, v3

    iput v10, v9, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2972
    aget v10, v11, v7

    iput v10, v9, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eqz v1, :cond_5

    .line 2973
    instance-of v10, v8, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v10, :cond_5

    .line 2974
    move-object v10, v8

    check-cast v10, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v10, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 2977
    :cond_5
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v11

    const-wide/16 v12, -0x64

    .line 2979
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v16

    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v17, v8, v3

    aget v18, v8, v7

    .line 2976
    invoke-static/range {v11 .. v18}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "Launcher.CellLayout"

    .line 2981
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alignIconsToTopWithSaveDb, info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :cond_6
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calNextDstPos(I)V

    :cond_7
    :goto_4
    add-int/2addr v6, v4

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2987
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2988
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_a
    return-object v2
.end method

.method public alignIconsToTopWithSaveDb(Z)Z
    .locals 2

    .line 2937
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTop(Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 2938
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2939
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v1, "com.miui.home.launcher.settings"

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2940
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public allowDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 3108
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

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

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public canBeDeleted()Z
    .locals 2

    .line 1368
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->needShowLastEmptyScreen()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1371
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->isPendingItemsEmtpy()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public cancelLongPress()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 344
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 349
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 3

    .line 725
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v2, v1

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 726
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v0

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method cellToPoint(II[I)V
    .locals 3

    .line 738
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 739
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v0, v1

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 2670
    instance-of p1, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    return p1
.end method

.method public checkToDeleteSelf()V
    .locals 1

    .line 1381
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertUIThread()V

    .line 1382
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1384
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method clearBackupLayout()V
    .locals 5

    .line 2424
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2426
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 2427
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 2428
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aput-object v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2431
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    return-void
.end method

.method public clearCellBackground()V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1343
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method clearDraggingState(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 2360
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2362
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2364
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->clear()V

    if-eqz p1, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2366
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2367
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2368
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2369
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 2371
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 2373
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2374
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mMoveAwayShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method public clearOthersToasted()V
    .locals 3

    .line 2299
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2303
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    .line 2304
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2305
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 2307
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->clearToasted()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearToasted()V
    .locals 1

    const/4 v0, 0x0

    .line 2295
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    return-void
.end method

.method public collectAllIcons(Ljava8/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2871
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 2872
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 2873
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    move v2, v0

    .line 2874
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_5

    .line 2875
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v3, v3, v0

    :goto_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 2876
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v5, v5, v4

    if-gt v3, v5, :cond_4

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_4

    .line 2878
    :goto_2
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    if-nez v5, :cond_1

    goto :goto_3

    .line 2880
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ItemInfo;

    .line 2881
    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v7, :cond_2

    instance-of v7, v6, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v7, :cond_3

    .line 2882
    :cond_2
    invoke-virtual {p0, v5, v4, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    .line 2883
    invoke-interface {p1, v6}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2884
    invoke-super {p0, v5}, Lcom/miui/launcher/views/LauncherViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_3
    add-int/2addr v3, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public containsOnlyEmptyFolders(Lcom/miui/home/launcher/DragObject;)Z
    .locals 5

    .line 3200
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3202
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3203
    instance-of v4, v3, Lcom/miui/home/launcher/FolderIcon;

    if-nez v4, :cond_0

    return v1

    .line 3206
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    .line 3207
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3208
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3209
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/FolderInfo;->isAllItemDragging(Lcom/miui/home/launcher/DragObject;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public deleteSelf()V
    .locals 3

    .line 1376
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->deleteScreen(J)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 607
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 609
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 611
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 614
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    const/4 v6, 0x0

    if-ltz v5, :cond_3

    .line 618
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 620
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 621
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 622
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 623
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 624
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 625
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    .line 626
    instance-of v9, v7, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 627
    move-object v8, v7

    check-cast v8, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v8, p0, v3, v4}, Lcom/miui/home/launcher/ItemIcon;->isHintClick(Landroid/view/ViewGroup;II)Z

    move-result v8

    :cond_1
    if-eqz v8, :cond_2

    .line 630
    invoke-direct {p0, v7}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 631
    iput-object v7, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 632
    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v5, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 633
    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v5, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 634
    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v5, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 635
    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v5, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const-string v5, "Launcher.CellLayout"

    .line 637
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "touch item:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 643
    :goto_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    if-nez v0, :cond_4

    .line 646
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 647
    invoke-virtual {p0, v3, v4, v0}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    const/4 v3, 0x0

    .line 648
    iput-object v3, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 649
    aget v3, v0, v6

    iput v3, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 650
    aget v0, v0, v2

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 651
    iput v2, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 652
    iput v2, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 655
    :cond_4
    iget-object v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 656
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v0, v2, :cond_6

    .line 660
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    .line 662
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 664
    :cond_7
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doEditModeAnimation(Z)V
    .locals 23

    move-object/from16 v0, p0

    .line 406
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 408
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 409
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getDragLayerBackground()Lcom/miui/home/launcher/Background;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/Background;->getTouchrawX()F

    move-result v5

    .line 410
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getDragLayerBackground()Lcom/miui/home/launcher/Background;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/Background;->getTouchrawY()F

    move-result v6

    .line 411
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->calculateXsAndYs()V

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v7}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v7

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v8}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v8

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScaleY()F

    move-result v17

    .line 416
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v18

    sub-float v19, v17, v18

    const/4 v15, 0x0

    .line 418
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v9

    if-ge v15, v9, :cond_0

    .line 419
    invoke-virtual {v0, v15}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 420
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 421
    iget v10, v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    .line 422
    iget v9, v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    .line 423
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/home/launcher/ItemInfo;

    .line 424
    iget-object v13, v0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    iget v14, v11, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v13, v13, v14

    .line 425
    iget-object v14, v0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    iget v11, v11, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v11, v14, v11

    sub-int v14, v13, v10

    sub-int v3, v11, v9

    int-to-float v10, v10

    sub-float v10, v5, v10

    int-to-float v9, v9

    sub-float v9, v6, v9

    .line 428
    invoke-static {v10, v9}, Lcom/miui/home/launcher/common/Utilities;->calcDistance(FF)I

    move-result v9

    int-to-float v9, v9

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    div-float v20, v9, v10

    neg-int v9, v14

    int-to-float v9, v9

    .line 430
    invoke-virtual {v12, v9}, Landroid/view/View;->setTranslationX(F)V

    neg-int v9, v3

    int-to-float v9, v9

    .line 431
    invoke-virtual {v12, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 432
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v12, v9}, Landroid/view/View;->setPivotX(F)V

    .line 433
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v12, v9}, Landroid/view/View;->setPivotY(F)V

    int-to-float v9, v13

    sub-float v9, v8, v9

    .line 434
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float v9, v9, v19

    div-float v13, v9, v17

    int-to-float v9, v11

    sub-float v9, v7, v9

    .line 435
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float v9, v9, v19

    div-float v16, v9, v17

    .line 436
    new-instance v11, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3e19999a    # 0.15f

    mul-float v10, v10, v20

    add-float/2addr v10, v9

    const v9, 0x3eb33333    # 0.35f

    const v21, 0x3dcccccd    # 0.1f

    mul-float v21, v21, v20

    add-float v9, v21, v9

    invoke-direct {v11, v10, v9, v2, v4}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 437
    new-instance v10, Lcom/miui/home/launcher/-$$Lambda$CellLayout$3rko5Ig38aR01gTLfiwqw9oFqSY;

    move-object v9, v10

    move-object v2, v10

    move/from16 v10, v18

    move-object v4, v11

    move/from16 v11, v17

    move/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v3

    invoke-direct/range {v9 .. v16}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$3rko5Ig38aR01gTLfiwqw9oFqSY;-><init>(FFLandroid/view/View;FIFI)V

    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 444
    invoke-virtual {v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->registerEndAnimationMessage()V

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v2, v2, v20

    float-to-long v2, v2

    .line 445
    invoke-virtual {v4, v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->startDelay(J)V

    .line 446
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v22, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 448
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 449
    invoke-static {v2}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setDisableAutoLayoutAnimation(Z)V

    .line 450
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/CellLayout;->mAnimatorNum:I

    const/4 v2, 0x0

    .line 451
    :goto_1
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 452
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-nez v2, :cond_1

    .line 454
    new-instance v4, Lcom/miui/home/launcher/CellLayout$3;

    invoke-direct {v4, v0}, Lcom/miui/home/launcher/CellLayout$3;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_2

    .line 466
    :cond_1
    new-instance v4, Lcom/miui/home/launcher/CellLayout$4;

    invoke-direct {v4, v0}, Lcom/miui/home/launcher/CellLayout$4;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    sub-float v4, v2, v17

    sub-float v3, v2, v18

    div-float/2addr v4, v3

    .line 475
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 476
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 477
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$CellLayout$kQTipaiK_UhbqUdYamZtTfSQ8Zw;

    invoke-direct {v4, v0, v2, v1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$kQTipaiK_UhbqUdYamZtTfSQ8Zw;-><init>(Lcom/miui/home/launcher/CellLayout;FLandroid/view/Window;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_5

    .line 487
    :cond_4
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 488
    invoke-virtual {v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    goto :goto_4

    .line 490
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 492
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 493
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$CellLayout$yYdc67h1Qm4pPBlAsRrsgQDuL18;

    invoke-direct {v3, v0}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$yYdc67h1Qm4pPBlAsRrsgQDuL18;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 498
    new-instance v3, Lcom/miui/home/launcher/CellLayout$5;

    invoke-direct {v3, v0}, Lcom/miui/home/launcher/CellLayout$5;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 509
    invoke-virtual {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 510
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 511
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$CellLayout$o1a-la0Kc5XvZ2DrattAD0NKeV0;

    invoke-direct {v3, v0, v1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$o1a-la0Kc5XvZ2DrattAD0NKeV0;-><init>(Lcom/miui/home/launcher/CellLayout;Landroid/view/Window;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 520
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 521
    iput v1, v0, Lcom/miui/home/launcher/CellLayout;->mBlurCount:I

    .line 522
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 3131
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/miui/home/launcher/CellBackground;

    if-eqz v0, :cond_0

    return v1

    .line 3134
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    .line 3135
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3139
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public fillEmptyCellAuto(II)V
    .locals 11

    const-string v0, "Launcher.CellLayout"

    const-string v1, "Start filling empty cell auto on cellX=%d,cellY=%d with mHCells=%d,mVCells=%d"

    const/4 v2, 0x4

    .line 2126
    new-array v3, v2, [Ljava/lang/Object;

    .line 2127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 2126
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge p1, v0, :cond_4

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2134
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 2135
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 2136
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge p2, v0, :cond_3

    .line 2137
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 2138
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v3, v1, v5

    aget-object v0, v0, v3

    aget v1, v1, v6

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 2139
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_2

    .line 2140
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 2141
    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-gt v3, v6, :cond_2

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v3, v6, :cond_1

    goto :goto_1

    .line 2144
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v9, v4, v5

    aget-object v3, v3, v9

    aget v9, v4, v6

    const/4 v10, 0x0

    aput-object v10, v3, v9

    .line 2145
    invoke-virtual {p0, p1, v4}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    const-string p1, "Launcher.CellLayout"

    const-string v3, "Move item from (%d,%d) to (%d,%d)"

    .line 2146
    new-array v4, v2, [Ljava/lang/Object;

    iget v9, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2147
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    iget v9, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v6

    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v9, v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v9, v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    .line 2146
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v3, p1, v5

    iput v3, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2149
    aget v3, p1, v6

    iput v3, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2150
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v3, p1, v5

    aget-object v1, v1, v3

    aget p1, p1, v6

    aput-object v0, v1, p1

    move p1, p2

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 2154
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 2155
    new-instance p1, Lcom/miui/home/launcher/CellLayout$8;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellLayout$8;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_2
    const-string p1, "Launcher.CellLayout"

    const-string p2, "Fail to fill empty cell auto"

    .line 2130
    invoke-static {p1, p2}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I
    .locals 10

    .line 1184
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1186
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1208
    :pswitch_0
    iget p1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1209
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, 0x0

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aput v3, p1, v1

    .line 1210
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aput v0, p1, v2

    .line 1211
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    goto :goto_1

    .line 1189
    :pswitch_1
    iget p1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object p1

    goto :goto_1

    .line 1192
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int v4, v1, v2

    iget v1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int v5, v1, p1

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->findNearestLinearVacantArea(IIIIZ)[I

    move-result-object p1

    goto :goto_1

    .line 1196
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    if-eqz v1, :cond_1

    .line 1197
    invoke-virtual {p0, v2, v2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p1

    goto :goto_1

    .line 1199
    :cond_1
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int v4, v1, v2

    iget v1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int v5, v1, p1

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v7, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object p1

    goto :goto_1

    .line 1205
    :pswitch_3
    iget p1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findFirstVacantArea(II)[I
    .locals 7

    .line 1050
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1051
    aput v2, v0, v1

    .line 1052
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v2

    .line 1053
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    move v3, v1

    .line 1054
    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_3

    .line 1055
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v4, v4, v1

    :goto_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 1056
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v5

    if-gt v4, v6, :cond_2

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v5

    if-lt v4, v6, :cond_2

    .line 1058
    :goto_2
    invoke-virtual {p0, v4, v3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1059
    aput v4, v0, v1

    .line 1060
    aput v3, v0, v5

    return-object v0

    :cond_1
    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findLastEmptyCell(II)[I
    .locals 11

    .line 973
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 974
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 975
    aput v2, v0, v3

    const/4 v4, 0x1

    .line 976
    aput v2, v0, v4

    .line 977
    invoke-static {v4}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v2

    .line 978
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 979
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v4

    :goto_0
    if-ltz v5, :cond_e

    .line 980
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v3

    :goto_1
    if-ne v2, v4, :cond_0

    .line 981
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v4

    if-gt v6, v7, :cond_d

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v4

    if-lt v6, v7, :cond_d

    .line 983
    :goto_2
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v8, v7, v6

    aget-object v8, v8, v5

    if-eqz v8, :cond_c

    .line 984
    aget-object v2, v7, v6

    aget-object v2, v2, v5

    .line 985
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 991
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    sub-int/2addr v5, p2

    if-gez v5, :cond_1

    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v6, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v5, v6

    sub-int/2addr v5, p2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_3

    :cond_1
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_3
    if-eqz v1, :cond_2

    .line 993
    iget v6, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr v6, v4

    goto :goto_4

    :cond_2
    iget v6, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v6, v7

    :goto_4
    if-eqz v1, :cond_3

    move v7, v3

    goto :goto_5

    .line 994
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v7, v4

    .line 995
    :goto_5
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v8

    :goto_6
    if-eqz v1, :cond_4

    if-lt v6, v7, :cond_9

    goto :goto_7

    :cond_4
    if-gt v6, v7, :cond_9

    .line 997
    :goto_7
    iget v9, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v10, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v4

    :goto_8
    if-lt v9, v5, :cond_7

    .line 999
    iget-object v10, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v10, v10, v6

    aget-object v10, v10, v9

    if-eqz v10, :cond_5

    goto :goto_9

    .line 1001
    :cond_5
    invoke-virtual {p0, v6, v9, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1002
    aput v6, v0, v3

    .line 1003
    aput v9, v0, v4

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 1006
    :cond_7
    :goto_9
    aget v9, v0, v3

    if-ltz v9, :cond_8

    aget v9, v0, v4

    if-ltz v9, :cond_8

    return-object v0

    :cond_8
    add-int/2addr v6, v8

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    .line 1010
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v1, p1

    goto :goto_a

    :cond_a
    move v1, v3

    :goto_a
    aput v1, v0, v3

    .line 1011
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 1012
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p1

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    const/4 p1, 0x0

    return-object p1

    :cond_c
    add-int/2addr v6, v2

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v1, :cond_f

    .line 1020
    iget p2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int p1, p2, p1

    goto :goto_b

    :cond_f
    move p1, v3

    :goto_b
    aput p1, v0, v3

    .line 1021
    aput v3, v0, v4

    return-object v0
.end method

.method findLastVacantArea(II)[I
    .locals 8

    .line 1026
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1027
    aput v1, v0, v2

    const/4 v3, 0x1

    .line 1029
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v4

    .line 1030
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 1031
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_4

    .line 1032
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v2

    :goto_1
    if-ne v4, v3, :cond_0

    .line 1033
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v3

    if-gt v6, v7, :cond_3

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v3

    if-lt v6, v7, :cond_3

    .line 1035
    :goto_2
    invoke-virtual {p0, v6, v5, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1036
    aput v6, v0, v2

    .line 1037
    aput v5, v0, v3

    goto :goto_3

    .line 1038
    :cond_1
    aget v7, v0, v2

    if-eq v7, v1, :cond_2

    return-object v0

    :cond_2
    :goto_3
    add-int/2addr v6, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1043
    :cond_4
    aget p1, v0, v2

    if-eq p1, v1, :cond_5

    return-object v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method findNearestLinearVacantArea(IIIIZ)[I
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1070
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    if-eqz p5, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 1075
    aget p2, v0, p1

    const/4 p5, 0x1

    aget v1, v0, p5

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p2

    move v1, p2

    .line 1077
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v1, v2, :cond_2

    .line 1078
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1079
    aget v2, v0, p1

    aget v3, v0, p5

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr p2, p5

    :goto_1
    if-ltz p2, :cond_4

    .line 1085
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1086
    aget v1, v0, p1

    aget v2, v0, p5

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method findNearestVacantArea(IIIIZZ)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    if-nez p5, :cond_0

    mul-int v4, v1, v2

    .line 1126
    iget v5, v0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-le v4, v5, :cond_0

    return-object v3

    .line 1129
    :cond_0
    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1130
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 1136
    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v6, v2

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    if-ltz v6, :cond_5

    .line 1137
    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v11, v1

    :goto_1
    if-ltz v11, :cond_4

    if-eqz p6, :cond_1

    .line 1140
    invoke-virtual {v0, v11, v6, v5}, Lcom/miui/home/launcher/CellLayout;->cellToCenterPoint(II[I)V

    goto :goto_2

    .line 1142
    :cond_1
    invoke-virtual {v0, v11, v6, v5}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    :goto_2
    const/4 v12, 0x0

    .line 1144
    aget v13, v5, v12

    sub-int v13, v13, p1

    int-to-double v13, v13

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const/16 v16, 0x1

    aget v17, v5, v16

    sub-int v15, v17, p2

    move-object/from16 v17, v4

    int-to-double v3, v15

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v13

    cmpl-double v7, v3, v9

    if-ltz v7, :cond_2

    goto :goto_3

    :cond_2
    if-nez p5, :cond_3

    .line 1150
    invoke-virtual {v0, v11, v6, v1, v2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 1156
    :cond_3
    aput v11, v17, v12

    .line 1157
    aput v6, v17, v16

    move-wide v9, v3

    :goto_3
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, v17

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v17, v4

    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v17, v4

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v1, v9, v3

    if-gez v1, :cond_6

    return-object v17

    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method findNearestVacantAreaByCellPos(IIII)[I
    .locals 7

    .line 1094
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 1095
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 p2, 0x0

    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2665
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2675
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCellHeight()I
    .locals 1

    .line 747
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellHeightGap()I
    .locals 1

    .line 755
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .line 743
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    return v0
.end method

.method getCellWidthGap()I
    .locals 1

    .line 751
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    return v0
.end method

.method getChildVisualPosByTag(Ljava/lang/Object;[I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1170
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1171
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 1172
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 1173
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1174
    aput v2, p2, v0

    const/4 p1, 0x1

    .line 1175
    aput v1, p2, p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getEmptyCellsNum()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3098
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v1, v3, :cond_1

    .line 3099
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 3100
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v5, v4, v0

    aget-object v3, v3, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getItemMoveDescription(II)Ljava/lang/String;
    .locals 4

    .line 3232
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v1, v3

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f10006b

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastItemInfo(II)Lcom/miui/home/launcher/ItemInfo;
    .locals 4

    .line 1673
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1674
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 1675
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v2, v1

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1676
    aget-object v2, v2, v1

    aget-object v2, v2, v0

    .line 1677
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 1678
    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v3, p1, :cond_0

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getLastOccupiedIndex()I
    .locals 5

    .line 1103
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1104
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getMaxIndex()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    .line 1105
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    const/4 v2, 0x0

    .line 1106
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p0, v2, v4, v3, v3}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 1

    .line 3217
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object v0
.end method

.method public getScreenId()J
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-wide v0
.end method

.method public getScreenType()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    return v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 699
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getWidgetCellHeight()I
    .locals 1

    .line 763
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellHeight:I

    return v0
.end method

.method getWidgetCellWidth()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellWidth:I

    return v0
.end method

.method getWidgetMeasureSpec(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    if-nez p3, :cond_0

    .line 768
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellWidth()I

    move-result v0

    mul-int/2addr v0, p1

    int-to-float p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 771
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellHeight()I

    move-result p1

    mul-int/2addr p1, p2

    int-to-float p1, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    iput p1, p3, Landroid/graphics/Rect;->top:I

    return-object p3
.end method

.method public hasToastedNoSpace()Z
    .locals 1

    .line 1278
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    return v0
.end method

.method public isCellOccupied(IIII)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_4

    add-int v2, p1, v1

    .line 950
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    return v4

    :cond_0
    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_3

    add-int v5, p2, v3

    .line 954
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-lt v5, v6, :cond_1

    return v4

    .line 957
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v6, v6, v2

    aget-object v5, v6, v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1661
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1662
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_1

    .line 1663
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isFull()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3221
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 3222
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 3223
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method isItemPosInvalid(IIII)Z
    .locals 0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int/2addr p1, p3

    .line 940
    iget p3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-gt p1, p3, :cond_1

    add-int/2addr p2, p4

    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-le p2, p1, :cond_0

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

.method public isNoVacantMode()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return v0
.end method

.method public isPendingItemsEmtpy()Z
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PendingSourceDelegate;->isPendingItemsEmtpy()Z

    move-result v0

    return v0
.end method

.method public isQuickCallCellLayout()Z
    .locals 1

    const/4 v0, 0x3

    .line 382
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->isScreenType(I)Z

    move-result v0

    return v0
.end method

.method public isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 2281
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result v0

    .line 2282
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getRemainedDraggingSize()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 2283
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    mul-int/2addr v1, p1

    if-gt v1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVisibleForMaml()Z
    .locals 1

    .line 3294
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    return v0
.end method

.method public isWidgetScreenType()Z
    .locals 2

    .line 3236
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .line 2752
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 7

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    .line 844
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    if-ne p1, v1, :cond_2

    .line 845
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellBackground;->isIconCellBackground()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget v1, v4, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v1, v2, :cond_2

    .line 846
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 847
    iget v2, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v4, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v5, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    goto :goto_0

    .line 849
    :cond_2
    iget v2, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v4, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 851
    :goto_0
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 852
    iget v0, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    .line 853
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 854
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public needAlignIconsToTop()Z
    .locals 7

    const/4 v0, 0x0

    .line 2915
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 2916
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    .line 2920
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v0

    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aget v5, v5, v3

    if-lt v2, v5, :cond_5

    if-ne v1, v3, :cond_0

    .line 2921
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    if-ne v1, v3, :cond_1

    if-ltz v5, :cond_4

    goto :goto_2

    .line 2922
    :cond_1
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_4

    .line 2924
    :goto_2
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v6, v6, v5

    aget-object v6, v6, v2

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    return v3

    :cond_2
    if-nez v4, :cond_3

    if-eqz v6, :cond_3

    .line 2928
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCell1x1()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v3

    :cond_3
    sub-int/2addr v5, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public offset([FLcom/miui/home/launcher/DragObject;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1398
    array-length v0, p1

    if-lez v0, :cond_2

    .line 1399
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1400
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/miui/home/launcher/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 1401
    aget v2, p1, v1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    aput v2, p1, v1

    .line 1402
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 1404
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 1405
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    .line 1406
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    sub-int v2, v0, v2

    .line 1407
    :goto_0
    aget v0, p1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    .line 1409
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isIgnoreSearchLayoutTranY()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1410
    aget p2, p1, v1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScreen()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p2, v0

    aput p2, p1, v1

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2346
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onAttachedToWindow()V

    .line 2347
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 2348
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2353
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onDetachedFromWindow()V

    .line 2354
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2355
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2

    .line 1336
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    .line 1337
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1338
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 2244
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    .line 2245
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 2246
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2248
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2251
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2254
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->calculateCellBackgroundAlpha(Lcom/miui/home/launcher/DragObject;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    .line 2255
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->bindDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 2256
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    .line 2257
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2258
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->showEmptyCellMark(Z)V

    .line 2260
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 2261
    aput v2, v0, v1

    .line 2262
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2263
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_2

    .line 2265
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2266
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2267
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 2270
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->predictWidgetCanBeAdded(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2271
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_2

    .line 2273
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_2

    .line 2268
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    .line 2277
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearOthersToasted()V

    return-void
.end method

.method onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 2313
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->clearDraggingState(Lcom/miui/home/launcher/DragObject;)V

    .line 2314
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2315
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 2316
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 2317
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 2318
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v0, 0x0

    .line 2319
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->unbindDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 2323
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 2324
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->showEmptyCellMark(Z)V

    :cond_1
    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2513
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v9, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 2514
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v10, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 2515
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_2

    .line 2517
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 2518
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2520
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2521
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2523
    :cond_1
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    move-object/from16 v0, p0

    move-object v2, v11

    move v3, v9

    move v4, v10

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPositionWhenDragOver(Lcom/miui/home/launcher/CellBackground;[IIILcom/miui/home/launcher/DragObject;)V

    .line 2526
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_2

    .line 2527
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    aget v1, v11, v12

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2528
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    aget v1, v11, v13

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :cond_2
    if-gt v9, v13, :cond_4

    if-le v10, v13, :cond_3

    goto :goto_1

    .line 2540
    :cond_3
    iget v0, v8, Lcom/miui/home/launcher/DragObject;->x:I

    .line 2541
    iget v1, v8, Lcom/miui/home/launcher/DragObject;->y:I

    move v14, v0

    move v15, v1

    move v6, v13

    goto :goto_2

    .line 2536
    :cond_4
    :goto_1
    iget v0, v8, Lcom/miui/home/launcher/DragObject;->x:I

    iget v1, v8, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int/2addr v0, v1

    .line 2537
    iget v1, v8, Lcom/miui/home/launcher/DragObject;->y:I

    iget v2, v8, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int/2addr v1, v2

    move v14, v0

    move v15, v1

    move v6, v12

    .line 2544
    :goto_2
    iget-object v5, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move v3, v9

    move v4, v10

    move-object v13, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object v0

    iput-object v0, v13, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    .line 2546
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v12

    aget-object v0, v0, v1

    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    aget-object v0, v0, v1

    .line 2548
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isIconPositionFixed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x5

    const/4 v3, 0x2

    if-gt v9, v2, :cond_f

    if-le v10, v2, :cond_6

    goto/16 :goto_5

    .line 2569
    :cond_6
    instance-of v2, v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v4, 0x0

    if-eqz v2, :cond_d

    .line 2570
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v2, v5, v6, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2571
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/FolderInfo;

    const/4 v13, 0x3

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 2574
    :cond_7
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    add-int/2addr v2, v5

    if-ge v14, v2, :cond_8

    .line 2575
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v5, 0x1

    iput v5, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2576
    :cond_8
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    sub-int/2addr v2, v5

    if-le v14, v2, :cond_9

    .line 2577
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v13, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2579
    :cond_9
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2580
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v3, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2582
    :cond_a
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v12, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    move-object v0, v4

    goto :goto_4

    .line 2572
    :cond_b
    :goto_3
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v5, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    if-ge v14, v5, :cond_c

    const/4 v13, 0x1

    :cond_c
    iput v13, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    :cond_d
    if-nez v0, :cond_e

    .line 2588
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v12, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2590
    :cond_e
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v3, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 2593
    :goto_4
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v2, :cond_15

    if-eq v0, v2, :cond_15

    .line 2594
    invoke-interface {v2, v8}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 2595
    iput-object v4, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    goto :goto_8

    .line 2553
    :cond_f
    :goto_5
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v12

    add-int/2addr v2, v9

    iget v4, v7, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-le v2, v4, :cond_10

    .line 2554
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    iget v4, v7, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v4, v9

    aput v4, v2, v12

    .line 2556
    :cond_10
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v2, v10

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-le v2, v5, :cond_11

    .line 2557
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v10

    aput v5, v2, v4

    .line 2559
    :cond_11
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 2560
    iget-object v5, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v5, v5, v12

    iget-object v6, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v6, v6, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v6, v6, v4

    invoke-virtual {v7, v5, v6, v2}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 2561
    aget v5, v2, v12

    sub-int/2addr v5, v14

    .line 2562
    aget v2, v2, v4

    sub-int/2addr v2, v15

    .line 2563
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v4, v6, :cond_13

    .line 2564
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-lez v5, :cond_12

    const/4 v4, 0x6

    goto :goto_6

    :cond_12
    const/4 v4, 0x7

    :goto_6
    iput v4, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_8

    .line 2566
    :cond_13
    iget-object v4, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-lez v2, :cond_14

    const/4 v2, 0x4

    goto :goto_7

    :cond_14
    move v2, v1

    :goto_7
    iput v2, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 2599
    :cond_15
    :goto_8
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aget v4, v2, v12

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    const/4 v4, 0x1

    aget v6, v2, v4

    if-eq v6, v5, :cond_17

    aget v2, v2, v12

    sub-int/2addr v2, v14

    .line 2601
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v1, :cond_17

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aget v2, v2, v4

    sub-int/2addr v2, v15

    .line 2602
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v1, :cond_17

    return-void

    :cond_16
    const/4 v4, 0x1

    .line 2606
    :cond_17
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aput v14, v1, v12

    .line 2607
    aput v15, v1, v4

    .line 2609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v7, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v1, v4

    if-lez v1, :cond_1b

    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 2610
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout$DragPos;->equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2611
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout$DragPos;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v11, :cond_18

    .line 2612
    aget v1, v11, v12

    const/4 v2, 0x1

    aget v2, v11, v2

    invoke-virtual {v7, v1, v2}, Lcom/miui/home/launcher/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 2614
    :cond_18
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout$DragPos;->set(Lcom/miui/home/launcher/CellLayout$DragPos;)V

    .line 2615
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2616
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-static {v1, v8}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->access$1902(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DragObject;

    .line 2617
    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    .line 2618
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2619
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    iget-object v6, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v6, v6, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v6, v3, :cond_19

    const/16 v0, 0x64

    int-to-long v4, v0

    goto :goto_9

    :cond_19
    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    const-wide/16 v4, 0x12c

    :cond_1a
    :goto_9
    invoke-virtual {v7, v2, v4, v5}, Lcom/miui/home/launcher/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 3010
    invoke-super/range {p0 .. p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3011
    iget v1, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawableAlpha:I

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    if-eqz v1, :cond_5

    .line 3012
    iget v1, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    :goto_0
    if-ltz v1, :cond_5

    .line 3013
    iget v2, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    move v15, v2

    :goto_1
    if-ltz v15, :cond_4

    const/4 v2, 0x0

    .line 3015
    iget v3, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v15, v3, :cond_0

    iget v3, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v3, :cond_0

    .line 3016
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v15

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 3018
    invoke-direct {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    .line 3021
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3022
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 3024
    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-le v15, v3, :cond_2

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-ge v15, v3, :cond_2

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-le v1, v3, :cond_2

    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_2

    move-object/from16 v3, p1

    goto/16 :goto_3

    .line 3028
    :cond_2
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    const/4 v14, 0x2

    if-ne v2, v14, :cond_3

    .line 3029
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkLP:Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellWidth()I

    move-result v7

    .line 3030
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingLeft:I

    iget v12, v0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v16

    move v3, v15

    move v4, v1

    move/from16 v17, v14

    move/from16 v14, v16

    .line 3029
    invoke-virtual/range {v2 .. v14}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIIIIIIIII)V

    goto :goto_2

    :cond_3
    move/from16 v17, v14

    .line 3032
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkLP:Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget v7, v0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v8, v0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v9, v0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    iget v10, v0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v12, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    .line 3033
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v14

    move v3, v15

    move v4, v1

    .line 3032
    invoke-virtual/range {v2 .. v14}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIIIIIIIII)V

    .line 3035
    :goto_2
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkLP:Lcom/miui/home/launcher/CellLayout$LayoutParams;

    iget v2, v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 3036
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkLP:Lcom/miui/home/launcher/CellLayout$LayoutParams;

    iget v3, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 3037
    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 3038
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 3039
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 3037
    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 3040
    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v3, p1

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z
    .locals 7

    .line 1218
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1222
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    instance-of v2, p2, Lcom/miui/home/launcher/ItemIcon;

    if-nez v2, :cond_2

    .line 1223
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v1

    .line 1226
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1227
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_5

    .line 1228
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result p2

    .line 1229
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1230
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 p1, 0x0

    .line 1231
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 1232
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    :cond_4
    return p2

    .line 1237
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v0

    if-nez v0, :cond_6

    return v1

    .line 1242
    :cond_6
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-nez p2, :cond_7

    .line 1246
    aget p1, v0, v1

    iput p1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1247
    aget p1, v0, v3

    iput p1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    return v3

    .line 1251
    :cond_7
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    .line 1252
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1253
    aget v5, v0, v1

    iput v5, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1254
    aget v0, v0, v3

    iput v0, v4, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-wide/16 v5, -0x64

    .line 1255
    iput-wide v5, v4, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1257
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1258
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1259
    iput-boolean v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 1260
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v1, -0x1

    .line 1261
    invoke-virtual {p0, p2, v1, v0}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1263
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 1264
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1266
    :goto_0
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_9

    .line 1267
    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(Z)V

    .line 1269
    :cond_9
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/CellLayout$6;

    invoke-direct {p2, p0, v2}, Lcom/miui/home/launcher/CellLayout$6;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return v3
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2

    .line 1318
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1323
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v0, 0x0

    .line 1324
    iput-boolean v0, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1325
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    :cond_1
    return-void
.end method

.method onDropCompleted()V
    .locals 0

    .line 1302
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 1303
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 1304
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateChildColorIfNeed()V

    return-void
.end method

.method public onDropFormThumbnail(Landroid/view/View;)Z
    .locals 4

    .line 1282
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const-wide/16 v1, -0x64

    .line 1283
    iput-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1284
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    .line 1285
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    const/4 v2, 0x1

    .line 1286
    iput-boolean v2, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 1287
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, -0x1

    .line 1288
    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1290
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1291
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1293
    :goto_0
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_1

    .line 1294
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 1296
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1297
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return v2
.end method

.method onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 2329
    iget-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez p1, :cond_0

    .line 2330
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    :cond_0
    return-void
.end method

.method public onInvisible()V
    .locals 1

    .line 3285
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sOnInVisibaleIconDrawableWorker:Lcom/miui/home/launcher/CellLayout$DrawableWorker;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutIconDrawable(Lcom/miui/home/launcher/CellLayout$DrawableWorker;)V

    const/4 v0, 0x0

    .line 3286
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 873
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    if-nez p1, :cond_0

    goto :goto_2

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_2

    .line 879
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 880
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_1

    .line 882
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 883
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v1, v1, v2

    .line 890
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v0, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    iget v2, p5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v2, v1

    iget v3, p5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v3, v0

    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 898
    iget-boolean p4, p5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz p4, :cond_1

    .line 899
    iput-boolean p2, p5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 901
    iget-object p4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 902
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/CellLayout;->getLocationOnScreen([I)V

    .line 903
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const-string v4, "android.home.drop"

    aget v5, p4, p2

    add-int/2addr v5, v1

    iget v1, p5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    const/4 v1, 0x1

    aget p4, p4, v1

    add-int/2addr p4, v0

    iget p5, p5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    div-int/lit8 p5, p5, 0x2

    add-int v6, p4, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_1

    :catch_0
    const-string p1, "Launcher.CellLayout"

    const-string p2, "onLayout exception"

    .line 892
    invoke-static {p1, p2}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 799
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 800
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 802
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 803
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 811
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 812
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->calculateXsAndYs()V

    .line 813
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 815
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 816
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->measureChild(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 806
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 3299
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3300
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3301
    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    .line 3302
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    .line 3303
    instance-of v1, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v1, :cond_0

    .line 3304
    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->requestPreviewLayout()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 2842
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2843
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setCellPaddingTop(I)V

    .line 2845
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig()V

    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 0

    .line 2833
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig()V

    .line 2834
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->correctCellPositionRuntime()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 2838
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 680
    iget-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    if-eqz p1, :cond_0

    .line 681
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {p1}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 682
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 2828
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2829
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onVisible()V
    .locals 1

    .line 3270
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sOnVisibaleIconDrawableWorker:Lcom/miui/home/launcher/CellLayout$DrawableWorker;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutIconDrawable(Lcom/miui/home/launcher/CellLayout$DrawableWorker;)V

    const/4 v0, 0x1

    .line 3271
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 555
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 556
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public performDropFinishAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method pointToCell(II[I)V
    .locals 2

    .line 709
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, p3, v0

    .line 710
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr p1, v1

    div-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 712
    aget p2, p3, v0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p3, v0

    .line 713
    aget p2, p3, p1

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p3, p1

    return-void
.end method

.method protected positionIndexToCell(I[I)V
    .locals 2

    .line 2635
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v1, v0, -0x1

    rem-int v0, p1, v0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    rem-int v1, p1, v0

    :goto_0
    const/4 v0, 0x0

    aput v1, p2, v0

    .line 2636
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    div-int/2addr p1, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    return-void
.end method

.method public preRemoveView(Landroid/view/View;)V
    .locals 1

    .line 2849
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2850
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    const/4 v0, 0x1

    .line 2852
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 2853
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    return-void
.end method

.method public predictWidgetCanBeAdded(Lcom/miui/home/launcher/DragObject;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3154
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3158
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3159
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 3161
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v4, :cond_2

    .line 3162
    iget v5, v4, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    iget v5, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v5, v6, :cond_2

    .line 3163
    :cond_1
    new-instance v5, Lcom/miui/home/launcher/CellLayout$Widget;

    iget v6, v4, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {v5, p0, v6, v4}, Lcom/miui/home/launcher/CellLayout$Widget;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3166
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 3167
    new-instance v2, Lcom/miui/home/launcher/CellLayout$Widget;

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/home/launcher/CellLayout$Widget;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3168
    new-instance p1, Landroid/graphics/Region;

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-direct {p1, v0, v0, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 3169
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/home/launcher/CellLayout;->predict(Landroid/graphics/Region;Ljava/util/ArrayList;I)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    const-string p1, "Launcher.CellLayout"

    const-string v1, "invalidate params in predictWidgetCanBeAdded"

    .line 3155
    invoke-static {p1, v1}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public quickShowOrHideAllShortcutsCheckBox(Z)V
    .locals 1

    .line 390
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0dJuy4I2gXbcERieLIg6MVffgzc;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0dJuy4I2gXbcERieLIg6MVffgzc;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->handleAllShortcuts(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public relayoutByOccupiedCells()V
    .locals 9

    .line 2194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 2195
    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 2196
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v4, v5, :cond_1

    .line 2197
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    .line 2199
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 2200
    iget-wide v7, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v7, v7, v0

    if-eqz v7, :cond_0

    .line 2201
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    .line 2202
    iput v4, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2203
    iput v3, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2204
    iput-wide v0, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2209
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v2, v0, v2

    const/4 v1, 0x1

    .line 2210
    aput v2, v0, v1

    .line 2211
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .line 2797
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2798
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeChild(J)Landroid/view/View;
    .locals 4

    .line 2762
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2764
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2765
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 2766
    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2767
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeChild(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 2756
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget-object v0, v0, v1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget-object p1, v0, p1

    .line 2758
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    .line 1356
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    .line 1357
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method public removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I
    .locals 4

    .line 565
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const-string v1, "Launcher.CellLayout"

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 568
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->invalidate()V

    const/4 p1, -0x1

    return p1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 2779
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2780
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2803
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2804
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    .line 2785
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2786
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .line 2809
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2810
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 2791
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2792
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 596
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 598
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 599
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 600
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public resetTouchCellInfo()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v1, -0x1

    .line 669
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 670
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    const/4 v1, 0x0

    .line 671
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 672
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    return-void
.end method

.method saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 7

    .line 2060
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->clear()V

    .line 2061
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, v1

    .line 2062
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v2, v3, :cond_1

    .line 2063
    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 2064
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v4, v0, v1

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 2065
    aget v4, v0, v1

    aget-object v3, v3, v4

    aget v4, v0, v5

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scaleCellLayout()V
    .locals 1

    .line 547
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 548
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    .line 549
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 550
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    return-void
.end method

.method protected setAllLayoutValues(Z)V
    .locals 6

    .line 776
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 778
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetWorkingWidth()I

    move-result v0

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellWidth:I

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v3, v4

    sub-int/2addr v0, v3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingRight:I

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingRight:I

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingLeft:I

    .line 779
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellPaddingTop()I

    move-result v0

    .line 780
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetWorkingHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellHeight:I

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    .line 781
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setCellPaddingTop(I)V

    .line 782
    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 783
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->setHeightGap(I)V

    goto :goto_0

    .line 785
    :cond_0
    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingLeft:I

    .line 786
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHorizontalSpacing()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 787
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setHeightGap(I)V

    :goto_0
    if-eqz p1, :cond_1

    .line 789
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNotchEditModePaddingTopDelta()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModePaddingTopDelta:I

    .line 790
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModePaddingTopDelta:I

    sub-int/2addr p1, v0

    div-int v2, v1, p1

    :cond_2
    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModeGapDelta:I

    return-void
.end method

.method public setCellPaddingTop(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    return-void
.end method

.method setContainerId(I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    return-void
.end method

.method setDisableTouch(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    return-void
.end method

.method public setDropAnimating(Z)V
    .locals 1

    .line 3000
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mDropAnimationCounter:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mDropAnimationCounter:I

    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 386
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$GnvPj8ymqrmljReveihQ7MPzwWc;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$GnvPj8ymqrmljReveihQ7MPzwWc;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->handleAllShortcuts(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public setHeightGap(I)V
    .locals 0

    .line 794
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 3112
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3113
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3114
    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_0

    .line 3115
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/ItemIcon;->setIsDrawingInThumbnailView(Z)V

    .line 3118
    :cond_0
    instance-of v2, v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 3120
    check-cast v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    invoke-interface {v1}, Lcom/miui/home/launcher/common/ViewPropertyBackuper;->backupProperty()V

    goto :goto_1

    .line 3122
    :cond_1
    check-cast v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    invoke-interface {v1}, Lcom/miui/home/launcher/common/ViewPropertyBackuper;->restoreProperty()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3126
    :cond_3
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method setScreenId(J)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput-wide p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-void
.end method

.method setScreenType(I)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    if-eq v0, p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    .line 369
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig()V

    :cond_0
    return-void
.end method

.method public setVisibleForMaml(Z)V
    .locals 0

    .line 3290
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    return-void
.end method

.method public setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V
    .locals 27

    move-object/from16 v0, p0

    if-eqz p5, :cond_0

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellWidth()I

    move-result v6

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getWidgetCellHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingLeft:I

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v13

    move-object/from16 v1, p6

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 863
    invoke-virtual/range {v1 .. v13}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIIIIIIIII)V

    goto :goto_0

    .line 866
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, v0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v3, v0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    iget v4, v0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    iget v5, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v25

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v26

    move-object/from16 v14, p6

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    .line 866
    invoke-virtual/range {v14 .. v26}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIIIIIIIII)V

    :goto_0
    return-void
.end method

.method public setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V
    .locals 7

    .line 858
    iget v3, p3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v4, p3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    return-void
.end method

.method public showEmptyCellMark(Z)V
    .locals 2

    .line 3059
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsShowEmptyCellMark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3063
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mIsShowEmptyCellMark:Z

    .line 3064
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3065
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800b5

    .line 3066
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 3067
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setEmptyCellMarkDrawableAlpha(I)V

    .line 3069
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkDrawableAlpha:I

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkStartAlpha:I

    .line 3070
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 3071
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkAnimator:Landroid/animation/ValueAnimator;

    .line 3072
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/CellLayout$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$10;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3083
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/CellLayout$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$11;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3092
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setWillNotDraw(Z)V

    .line 3093
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellMarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V
    .locals 1

    .line 2288
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2289
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    .line 2291
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragObject;->showNoSpaceToast(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHCells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVCells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTotalCells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellXY[0]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellXY[1]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EmptyCellsNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3319
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 3320
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[ tag "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childWidth "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childHeight "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childTranslationX "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childTranslationY "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childX "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "| "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childY "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "| "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childAlpha "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V
    .locals 5

    .line 916
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v0, v2, :cond_3

    .line 917
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    :goto_1
    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-lt v2, v3, :cond_2

    if-eqz p3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v3, v0

    aget-object v4, v4, v2

    if-ne p1, v4, :cond_1

    .line 924
    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    goto :goto_2

    .line 927
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v0

    aput-object p1, v3, v2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const-string p1, "Launcher.CellLayout"

    const-string v0, "updateCellOccupiedMarks, %s, %s"

    const/4 v2, 0x2

    .line 931
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    const-string v4, "remove"

    goto :goto_3

    :cond_4
    const-string v4, "update"

    :goto_3
    aput-object v4, v2, v3

    .line 932
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 931
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/CellLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 934
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    .line 936
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 945
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    return-void
.end method

.method public updateCellOccupiedMarks(Landroid/view/View;ZZ)V
    .locals 1

    .line 912
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    return-void
.end method
