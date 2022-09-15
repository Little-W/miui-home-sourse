.class public Lcom/miui/home/launcher/CellLayout;
.super Lcom/miui/launcher/views/LauncherViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$LocationCalibration;
.implements Lcom/miui/home/launcher/IconContainer;
.implements Lcom/miui/home/launcher/NewInstallIconContainer;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/PendingSource;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;,
        Lcom/miui/home/launcher/CellLayout$Widget;,
        Lcom/miui/home/launcher/CellLayout$CellInfo;,
        Lcom/miui/home/launcher/CellLayout$LayoutParams;,
        Lcom/miui/home/launcher/CellLayout$ViewConfiguration;,
        Lcom/miui/home/launcher/CellLayout$ItemArea;,
        Lcom/miui/home/launcher/CellLayout$StayConfirm;,
        Lcom/miui/home/launcher/CellLayout$DragPos;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SHAKE_OFFSET:I

.field private static final sOnItemInvisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

.field private static sOnItemVisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

.field private static sUpdateMamlDownloadVisible:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;


# instance fields
.field private final mCellBackground:Lcom/miui/home/launcher/CellBackground;

.field private mCellContainerHeight:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mCellPaddingLeft:I

.field private mCellPaddingTop:I

.field private mCellWidth:I

.field private mCellXIterateRange:[I

.field private final mCellXY:[I

.field mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

.field private mDeleteSelfRunnable:Ljava/lang/Runnable;

.field private mDisableTouch:Z

.field private mDrawCallback:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;

.field private mDstPos:[I

.field private final mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mFirstPos:[I

.field private mHCells:I

.field private mHasNewInstallApps:Z

.field private mHeightGap:I

.field private mIsDrawingInThumbnailView:Z

.field private mIsNoVacantMode:Z

.field private mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

.field private mLastDownOnOccupiedCell:Z

.field mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field private final mLastDragedXY:[I

.field private mLastRelayoutTime:J

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLayoutBackupValid:Z

.field private mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

.field private mNotchEditModeGapDelta:I

.field private mNotchEditModePaddingTopDelta:I

.field private mOccupiedCell:[[Landroid/view/View;

.field private mOccupiedCellBak:[[Landroid/view/View;

.field private final mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private final mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

.field private final mRect:Landroid/graphics/Rect;

.field private mRectTmp:Landroid/graphics/Rect;

.field private mStartShowingTime:J

.field private mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

.field private mStayConfirmSize:I

.field mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field protected mTmpXY:[I

.field private mToasted:Z

.field private mTotalCells:I

.field private mVCells:I

.field private mVisibleForMaml:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I

.field private mXs:[I

.field private mYs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 108
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/CellLayout;->SHAKE_OFFSET:I

    .line 3010
    new-instance v0, Lcom/miui/home/launcher/CellLayout$6;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$6;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemVisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    .line 3034
    new-instance v0, Lcom/miui/home/launcher/CellLayout$7;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$7;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sUpdateMamlDownloadVisible:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    .line 3073
    new-instance v0, Lcom/miui/home/launcher/CellLayout$8;

    invoke-direct {v0}, Lcom/miui/home/launcher/CellLayout$8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemInvisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 118
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

    .line 158
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    .line 160
    new-instance v1, Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-direct {v1}, Lcom/miui/home/launcher/PendingSourceDelegate;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 162
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 163
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    .line 169
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    .line 742
    new-array v1, p3, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    .line 1177
    new-instance v1, Lcom/miui/home/launcher/CellLayout$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$3;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    .line 1341
    new-instance v1, Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    const-wide/16 v0, 0x0

    .line 1343
    iput-wide v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    .line 2011
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 2098
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    .line 2144
    new-instance p2, Lcom/miui/home/launcher/CellLayout$5;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellLayout$5;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    .line 2318
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    .line 2699
    new-array p2, p3, [I

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    .line 2700
    new-array p2, p3, [I

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    .line 3045
    iput-wide v0, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/CellLayout;->setCellPaddingTop(I)V

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 188
    move-object p3, p1

    check-cast p3, Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 189
    new-instance p3, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {p3, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 191
    new-instance p3, Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    .line 192
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    new-instance p3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p3}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    new-instance p3, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p3}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellBackground;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0801b8

    .line 194
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setWillNotCacheDrawing(Z)V

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setNoVacantMode(Z)V

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 201
    new-instance p1, Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;-><init>(Lcom/miui/home/launcher/NewInstallIconContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellLayout;)Landroid/app/WallpaperManager;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/CellLayout;II)I
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/CellLayout;I)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->hasEmptyCellBeforeTargetIndex(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(IIII)I
    .locals 0

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->calculateX(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(IIIIII)I
    .locals 0

    .line 91
    invoke-static/range {p0 .. p5}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsWithSpanForInnerItem(IIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsWithSpan(IIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayoutWithoutRelayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellsNoSpan(IIII)V

    return-void
.end method

.method private backupLayout()V
    .locals 2

    .line 2014
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    return-void
.end method

.method private calCellXRange(I)V
    .locals 4

    .line 745
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

    .line 746
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

    .line 2736
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

    .line 2737
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2738
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v1, p1, v2

    return-void

    .line 2741
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v1, p1, v2

    move p1, v1

    .line 2742
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge p1, v0, :cond_5

    move v0, v1

    .line 2743
    :goto_2
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v0, v3, :cond_4

    .line 2744
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v0

    aget-object v3, v3, p1

    if-nez v3, :cond_2

    goto :goto_3

    .line 2746
    :cond_2
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 2747
    iget v4, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v4, v2, :cond_3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v3, v2, :cond_3

    .line 2748
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput p1, v0, v2

    return-void

    .line 2751
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

    .line 2703
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2704
    aget v3, v0, v1

    if-gez v3, :cond_0

    .line 2705
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr p1, v2

    aput p1, v0, v1

    .line 2706
    aget p1, v0, v2

    add-int/2addr p1, v2

    aput p1, v0, v2

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 2707
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v0, p1, v1

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt v0, v3, :cond_1

    .line 2708
    aput v1, p1, v1

    .line 2709
    aget v0, p1, v2

    add-int/2addr v0, v2

    aput v0, p1, v2

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateCellBackgroundAlpha(Lcom/miui/home/launcher/DragObject;)I
    .locals 0

    .line 2033
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

    .line 1720
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1721
    iget v1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    .line 1722
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1723
    iget p1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    if-nez p3, :cond_0

    add-int/2addr v0, v2

    .line 1726
    iget p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 1728
    iget p1, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    add-int/2addr v1, p1

    .line 1730
    iget p1, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, p1

    goto :goto_0

    .line 1732
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

.method private static calculateY(IIIIII)I
    .locals 0

    if-ge p4, p5, :cond_0

    move p4, p5

    :cond_0
    add-int/2addr p1, p2

    add-int/2addr p3, p4

    sub-int/2addr p3, p5

    mul-int/2addr p0, p3

    add-int/2addr p1, p0

    return p1
.end method

.method private cellToPositionIndex(II)I
    .locals 1

    .line 2436
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

    .line 2440
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

    .line 1463
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    const/4 v1, 0x1

    if-ge p2, v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1465
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

    .line 2021
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v3, :cond_2

    move v3, v2

    move v2, v0

    .line 2022
    :goto_1
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v4, :cond_1

    .line 2023
    aget-object v4, p2, v2

    aget-object v4, v4, v1

    aget-object v5, p1, v2

    aget-object v5, v5, v1

    if-eq v4, v5, :cond_0

    .line 2024
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

.method private debugIcon(Landroid/view/View;)V
    .locals 0

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

    .line 1420
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-eqz p1, :cond_0

    .line 1421
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge p2, v4, :cond_4

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_4

    .line 1422
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    .line 1423
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

    .line 1430
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

    .line 1809
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 1839
    :pswitch_0
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr p2, v0

    .line 1840
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-lt p2, v0, :cond_0

    return-void

    .line 1841
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :goto_0
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 1842
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, v0

    aget-object v2, v2, p2

    if-eqz v2, :cond_1

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1843
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1821
    :pswitch_1
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr p2, v0

    .line 1822
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt p2, v0, :cond_2

    return-void

    .line 1823
    :cond_2
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_1
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 1824
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, p2

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1825
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1830
    :pswitch_2
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_4

    return-void

    .line 1832
    :cond_4
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :goto_2
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 1833
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, v0

    aget-object v2, v2, p2

    if-eqz v2, :cond_5

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1834
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1812
    :pswitch_3
    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_6

    return-void

    .line 1814
    :cond_6
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_3
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 1815
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v1, p2

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    aget-object v1, v1, p2

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1816
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

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    return-object p1
.end method

.method private getEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;)Lcom/miui/home/launcher/CellLayout$ItemArea;
    .locals 7

    .line 1567
    new-instance v6, Lcom/miui/home/launcher/CellLayout$ItemArea;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1568
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$OxePxCtMy_7ILvjd-8BCz9F7CSA;

    invoke-direct {v0, p0, v6}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$OxePxCtMy_7ILvjd-8BCz9F7CSA;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInArea(Ljava/util/function/Consumer;)V

    return-object v6
.end method

.method private getFirstPersonView()Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 3059
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 3060
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3061
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 3062
    instance-of v4, v3, Lcom/miui/home/launcher/FolderInfo;

    if-nez v4, :cond_0

    sget-object v4, Lcom/miui/home/launcher/allapps/AllAppsStore;->WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    invoke-virtual {v4, v3, v2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getHeightGapDelta()I
    .locals 1

    .line 2544
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModeGapDelta:I

    return v0
.end method

.method private getMaxIndex()I
    .locals 2

    .line 877
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getPushDirections()[I
    .locals 2

    .line 1547
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 1561
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support other stay type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :pswitch_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 1552
    :pswitch_1
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 1549
    :pswitch_2
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 1555
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

.method private handleAllEditables(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/interfaces/IEditable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 314
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/interfaces/IEditable;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleAllShortcuts(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 305
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 306
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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

    .line 1347
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

    .line 1355
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 1356
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1357
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

.method private isItemPosEmpty(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1917
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isScreenType(I)Z
    .locals 1

    .line 285
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

.method public static synthetic lambda$getEffectedArea$4(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/view/View;)V
    .locals 4

    if-eqz p2, :cond_7

    .line 1570
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    .line 1571
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-le v0, v2, :cond_1

    .line 1572
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1574
    :cond_1
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-le v0, v2, :cond_3

    .line 1575
    :cond_2
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    .line 1577
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

    .line 1578
    :cond_4
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v2

    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1580
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

    .line 1581
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

.method public static synthetic lambda$moveEffectedArea$5(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1618
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1619
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1620
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$pushItemsInDistance$3(Lcom/miui/home/launcher/CellLayout;IILandroid/view/View;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 1542
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

.method static synthetic lambda$quickShowOrHideAllShortcutsCheckBox$2(ZLcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 301
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->quickHideOrShowCheckbox(Z)V

    return-void
.end method

.method public static synthetic lambda$setCellBackgroundImage$6(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V
    .locals 1

    .line 2078
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellBackground;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-ne p2, p0, :cond_1

    .line 2079
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2080
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2081
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 2083
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2084
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2086
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->calculateCellBackgroundAlpha(Lcom/miui/home/launcher/DragObject;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$setEditMode$0(ZLcom/miui/home/launcher/interfaces/IEditable;)V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-interface {p1, p0, v0}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    return-void
.end method

.method static synthetic lambda$setEditMode$1(ZLcom/miui/home/launcher/interfaces/IEditable;)V
    .locals 1

    const/4 v0, 0x1

    .line 296
    invoke-interface {p1, p0, v0}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    return-void
.end method

.method private loadGridConfig()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 222
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 223
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    .line 224
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    if-eqz v1, :cond_0

    array-length v2, v1

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-eq v1, v2, :cond_1

    .line 226
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 228
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 231
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    .line 232
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    if-nez v0, :cond_2

    .line 234
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    .line 236
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    .line 237
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 239
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 240
    instance-of v3, v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v3, :cond_3

    .line 241
    check-cast v2, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 244
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellContainerHeight()V

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

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

    .line 1366
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

    .line 1370
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

    .line 1371
    :cond_4
    :goto_3
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/CellLayout;->searchRight(II)Landroid/util/Pair;

    move-result-object p2

    .line 1372
    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1373
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_4
    if-ge p2, p1, :cond_5

    if-ltz p3, :cond_5

    .line 1376
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/CellLayout;->searchLeft(II)Landroid/util/Pair;

    move-result-object p1

    .line 1377
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1378
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_5
    move p1, v1

    move v3, p1

    goto :goto_5

    .line 1381
    :cond_6
    invoke-direct {p0, p3, p1}, Lcom/miui/home/launcher/CellLayout;->searchLeft(II)Landroid/util/Pair;

    move-result-object p4

    .line 1382
    iget-object v3, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1383
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ge p4, p1, :cond_7

    .line 1384
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-gt v2, v4, :cond_7

    .line 1385
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/CellLayout;->searchRight(II)Landroid/util/Pair;

    move-result-object p1

    .line 1386
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1387
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

    .line 1392
    invoke-direct {p0, p4, v1, v2}, Lcom/miui/home/launcher/CellLayout;->squeezePosition(IZI)Z

    move-result p2

    or-int/2addr v1, p2

    :cond_8
    if-lez p1, :cond_9

    .line 1395
    invoke-direct {p0, v3, v0, p3}, Lcom/miui/home/launcher/CellLayout;->squeezePosition(IZI)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_9
    if-eqz v1, :cond_a

    .line 1398
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    .line 1400
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

    if-ltz v1, :cond_7

    if-ltz v2, :cond_7

    .line 1658
    invoke-direct/range {p0 .. p4}, Lcom/miui/home/launcher/CellLayout;->checkEmptyAreaSize(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1661
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v7, v2, v4

    invoke-direct {v0, v1, v2, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1662
    new-instance v8, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    .line 1663
    invoke-virtual {v6, v8}, Lcom/miui/home/launcher/CellLayout;->saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    .line 1665
    iget v9, v6, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v10, v6, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v9, v10}, [I

    move-result-object v9

    const-class v10, Landroid/view/View;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Landroid/view/View;

    .line 1666
    iget-object v10, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v6, v10, v9}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1667
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v2

    :goto_0
    const/4 v12, 0x0

    if-ge v11, v7, :cond_3

    move v14, v1

    :goto_1
    if-ge v14, v5, :cond_2

    .line 1670
    iget-object v15, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v15, v15, v14

    aget-object v15, v15, v11

    if-eqz v15, :cond_1

    const/4 v13, 0x2

    .line 1672
    invoke-direct {v6, v15, v0, v13}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x3

    .line 1673
    invoke-direct {v6, v15, v0, v13}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1674
    invoke-direct {v6, v15, v0, v12}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    .line 1675
    invoke-direct {v6, v15, v0, v13}, Lcom/miui/home/launcher/CellLayout;->pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1677
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    invoke-virtual {v6, v15, v13}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1684
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    .line 1685
    iget-object v5, v6, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v0, v12, v7}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    .line 1687
    iget-object v5, v8, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->comparator:Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;

    .line 1688
    iput v12, v5, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->whichDirection:I

    .line 1689
    invoke-static {v10, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1690
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1691
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1692
    invoke-direct {v6, v7}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    .line 1693
    iget v11, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v13, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v14, v10, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v15, v10, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v6, v11, v13, v14, v15}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v13, 0x1

    .line 1695
    invoke-virtual {v6, v7, v13}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1696
    aget v14, v11, v12

    iput v14, v10, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1697
    aget v11, v11, v13

    iput v11, v10, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1698
    invoke-virtual {v6, v7, v12}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_2

    .line 1701
    :cond_4
    iget-object v5, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v6, v9, v5}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1702
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    goto :goto_3

    :cond_5
    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_6

    .line 1710
    iget-object v5, v6, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v0, v7, v7}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v8

    .line 1716
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    return-void

    .line 1712
    :cond_6
    iget-object v0, v6, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {v6, v9, v0}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1713
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method private makeEmptyCellsWithSpanForInnerItem(IIII)V
    .locals 9

    .line 1590
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[Landroid/view/View;

    .line 1591
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v6}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1592
    new-instance v7, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    .line 1593
    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/CellLayout;->saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    .line 1595
    new-instance v8, Lcom/miui/home/launcher/CellLayout$ItemArea;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1596
    invoke-direct {p0, v8}, Lcom/miui/home/launcher/CellLayout;->getEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;)Lcom/miui/home/launcher/CellLayout$ItemArea;

    move-result-object v0

    .line 1598
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getPushDirections()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 1599
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1600
    aget v3, v1, v2

    invoke-direct {p0, v8, v0, v3}, Lcom/miui/home/launcher/CellLayout;->pushItemsInDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    .line 1601
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    return-void

    .line 1604
    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/CellLayout;->resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1608
    :cond_1
    invoke-direct {p0, v0, v8}, Lcom/miui/home/launcher/CellLayout;->moveEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    .line 1609
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->onSuccessMoved(IIIILcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    goto :goto_1

    .line 1611
    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/CellLayout;->resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    :goto_1
    return-void
.end method

.method private moveEffectedArea(Lcom/miui/home/launcher/CellLayout$ItemArea;Lcom/miui/home/launcher/CellLayout$ItemArea;)Z
    .locals 12

    .line 1616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$CellLayout$tB9IqxMe-BHE07EGgIp9o6T5tuY;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$tB9IqxMe-BHE07EGgIp9o6T5tuY;-><init>(Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInArea(Ljava/util/function/Consumer;)V

    .line 1623
    new-instance v1, Lcom/miui/home/launcher/ItemInfo;

    iget v2, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v3, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v4, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    iget v5, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    .line 1624
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    .line 1625
    iget v6, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v7, p2, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v8, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    iget v9, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZZ)[I

    move-result-object p2

    .line 1626
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v2, v1, v4, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    if-eqz p2, :cond_1

    .line 1628
    aget v1, p2, v3

    iget v2, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    sub-int/2addr v1, v2

    .line 1629
    aget p2, p2, v4

    iget p1, p1, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    sub-int/2addr p2, p1

    .line 1630
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1631
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1632
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v5, v1

    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1633
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v5, p2

    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1634
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    return v3
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

    .line 2636
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2637
    instance-of v1, p2, Lcom/miui/home/launcher/CellBackground;

    if-nez v1, :cond_1

    .line 2638
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2639
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    :cond_1
    move p2, v0

    goto :goto_0

    .line 2643
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateNewInstallFlags()V

    .line 2644
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

    .line 1642
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x2

    .line 1643
    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p1, p3, p4

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 1644
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)V

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 1647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    .line 1648
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    return-void
.end method

.method private positionIndexToCellIgnoreRTL(I[I)V
    .locals 3

    .line 2449
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    rem-int v1, p1, v0

    const/4 v2, 0x0

    aput v1, p2, v2

    .line 2450
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

    .line 2922
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    .line 2925
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 2926
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2927
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout$Widget;

    .line 2928
    iget-boolean v5, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    if-nez v5, :cond_4

    .line 2929
    iput-boolean v1, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mAlreadyPut:Z

    .line 2930
    new-instance v5, Landroid/graphics/RegionIterator;

    invoke-direct {v5, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 2931
    :cond_1
    :goto_1
    invoke-virtual {v5, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2932
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

    .line 2933
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

    .line 2934
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v6, p3, 0x1

    .line 2935
    invoke-direct {p0, p1, p2, v6}, Lcom/miui/home/launcher/CellLayout;->predict(Landroid/graphics/Region;Ljava/util/ArrayList;I)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    .line 2939
    :cond_2
    iget-object v6, v4, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .line 2942
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

    .line 1540
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout$ItemArea;->getCoveringRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/miui/home/launcher/CellLayout;->calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I

    move-result p2

    .line 1541
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$-4pFE7ATiFmBqYeJFZNcS_d_gnI;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout$ItemArea;->iterateAllViewsInAreaInterruptably(Ljava/util/function/Predicate;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private pushView(Landroid/view/View;Landroid/graphics/Rect;I)Z
    .locals 8

    .line 1769
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1770
    new-instance v7, Lcom/miui/home/launcher/CellLayout$ItemArea;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/CellLayout$ItemArea;-><init>(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1771
    invoke-direct {p0, v7, p2, p3}, Lcom/miui/home/launcher/CellLayout;->calculatePushDistance(Lcom/miui/home/launcher/CellLayout$ItemArea;Landroid/graphics/Rect;I)I

    move-result p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1776
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

    .line 1741
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Landroid/view/View;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/view/View;

    .line 1743
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1744
    new-instance v3, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    :cond_1
    const/4 v4, 0x1

    if-lez p2, :cond_3

    .line 1746
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1747
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1749
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1750
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1751
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1753
    invoke-direct {p0, v6, p3, v5}, Lcom/miui/home/launcher/CellLayout;->findViewsTouchEdge(Landroid/view/View;ILjava/util/ArrayList;)V

    .line 1754
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1759
    invoke-direct {p0, v1, p3, v4}, Lcom/miui/home/launcher/CellLayout;->shiftViews(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1760
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1761
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return v0

    :cond_3
    return v4
.end method

.method private resetAllItems([[Landroid/view/View;Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 1653
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->resetViewConfig()V

    return-void
.end method

.method private rollbackLayout()V
    .locals 2

    .line 1975
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    :cond_0
    return-void
.end method

.method private rollbackLayoutWithoutRelayout()V
    .locals 2

    .line 1983
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.CellLayout"

    const-string v1, "rollbackLayoutWithoutRelayout"

    .line 1984
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private saveCurrentLayout()V
    .locals 17

    move-object/from16 v1, p0

    .line 2187
    iget-boolean v0, v1, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez v0, :cond_0

    return-void

    .line 2188
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    move v13, v4

    .line 2190
    :goto_0
    iget v5, v1, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v13, v5, :cond_7

    move v14, v4

    .line 2191
    :goto_1
    iget v5, v1, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v14, v5, :cond_6

    .line 2192
    iget-object v5, v1, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v14

    aget-object v15, v5, v13

    if-eqz v15, :cond_5

    .line 2195
    :try_start_0
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    if-eqz v5, :cond_1

    .line 2196
    iget-wide v6, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    :cond_1
    if-eqz v5, :cond_2

    .line 2198
    iput-wide v2, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 2200
    :cond_2
    invoke-direct {v1, v15}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v12

    .line 2201
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

    .line 2202
    :cond_3
    iput v14, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2203
    iput v13, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-wide/16 v6, -0x64

    .line 2207
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v10

    move-object v5, v12

    move v11, v14

    move-object/from16 v16, v12

    move v12, v13

    .line 2204
    invoke-static/range {v5 .. v12}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Launcher.CellLayout"

    .line 2209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCurrentLayout, info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Launcher.CellLayout"

    .line 2214
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

    .line 2216
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2214
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_4

    .line 2218
    invoke-direct {v1, v15}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 2219
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

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_4
    throw v0

    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2226
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2227
    iget-object v2, v1, Lcom/miui/home/launcher/CellLayout;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2229
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

    .line 1412
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findTheFarthestEmptyCell(ZII)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1414
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

    .line 1404
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-eq p1, v0, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    .line 1405
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findTheFarthestEmptyCell(ZII)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1407
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

.method private setNoVacantMode(Z)V
    .locals 0

    .line 209
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

    .line 1780
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

    .line 1781
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1782
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 1794
    :pswitch_0
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_1

    .line 1788
    :pswitch_1
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_1

    .line 1791
    :pswitch_2
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_1

    .line 1785
    :pswitch_3
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr v1, p3

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1799
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

    .line 1802
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

    .line 1435
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    move v4, v3

    .line 1439
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    .line 1440
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v6, v0, v1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v7, v0, v6

    aget-object v5, v5, v7

    if-eqz v5, :cond_3

    .line 1442
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    .line 1443
    iget v8, v7, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v8, v6, :cond_3

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v7, v6, :cond_3

    .line 1444
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

    .line 1446
    invoke-direct {p0, v4, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCellIgnoreRTL(I[I)V

    add-int/lit8 v3, v3, 0x1

    .line 1448
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v7, v0, v1

    aget-object v7, v4, v7

    aget v8, v0, v6

    aget-object v7, v7, v8

    if-nez v7, :cond_1

    .line 1449
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

.method private trackExposeEvent()V
    .locals 8

    .line 3116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 3117
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3118
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v2, v0, v1, v6, v7}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackScreenExpose(Lcom/miui/home/launcher/Launcher;JJ)V

    .line 3120
    :cond_0
    iput-wide v4, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    return-void
.end method

.method private updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)V
    .locals 4

    .line 2310
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 2311
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v2, p2, v3

    if-eq v0, v2, :cond_1

    .line 2312
    :cond_0
    aget v0, p2, v1

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2313
    aget p2, p2, v3

    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2314
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method private updateCellBackgroundPositionWhenDragOver(Lcom/miui/home/launcher/CellBackground;[IIILcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 2294
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 2297
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p5

    .line 2298
    iget v0, p5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v0, p3, :cond_1

    iget v0, p5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v0, p4, :cond_2

    .line 2299
    :cond_1
    iput p3, p5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 2300
    iput p4, p5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 2301
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 2303
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPosition(Lcom/miui/home/launcher/CellBackground;[I)V

    .line 2304
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellBackground;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 2305
    new-instance p3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p3}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateCellContainerHeight()V
    .locals 6

    .line 620
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNotchEditModePaddingTopDelta()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getNotchEditModeGapDelta()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellContainerHeight:I

    return-void
.end method

.method private updateChildColorIfNeed()V
    .locals 4

    .line 1098
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1100
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1101
    instance-of v3, v2, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    if-eqz v3, :cond_0

    .line 1102
    check-cast v2, Lcom/miui/home/launcher/gadget/ColorUpdatable;

    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/ColorUpdatable;->notifyColorChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V
    .locals 3

    .line 2997
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 2998
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2999
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_0

    .line 3000
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p1, v2, p2}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Landroid/graphics/drawable/Drawable;I)V

    .line 3001
    invoke-interface {p1, v1, p2}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/ShortcutIcon;I)V

    goto :goto_1

    .line 3002
    :cond_0
    instance-of v2, v1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v2, :cond_1

    .line 3003
    check-cast v1, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/LauncherWidgetView;)V

    goto :goto_1

    .line 3004
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v2, :cond_2

    .line 3005
    check-cast v1, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;->process(Lcom/miui/home/launcher/maml/MaMlWidgetView;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 1140
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 381
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 382
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setEnableAutoLayoutAnimation(Z)V

    .line 385
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellBackground;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 389
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 390
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

    .line 2790
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2793
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v4

    .line 2794
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 2795
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    .line 2796
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    aput v8, v5, v7

    .line 2797
    aget v6, v6, v3

    aput v6, v5, v3

    move v5, v3

    .line 2798
    :goto_0
    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v5, v6, :cond_9

    .line 2799
    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v3

    :goto_1
    if-ne v4, v7, :cond_0

    .line 2800
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v8, v8, v7

    if-gt v6, v8, :cond_8

    goto :goto_2

    :cond_0
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v8, v8, v7

    if-lt v6, v8, :cond_8

    .line 2802
    :goto_2
    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v8, v8, v6

    aget-object v8, v8, v5

    if-nez v8, :cond_1

    goto/16 :goto_4

    .line 2804
    :cond_1
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    .line 2805
    iget v10, v9, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v10, v7, :cond_7

    iget v10, v9, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v10, v7, :cond_7

    .line 2806
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

    .line 2807
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

    .line 2808
    invoke-direct {v0, v10}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    iget v10, v10, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v10, v7, :cond_3

    .line 2809
    :cond_2
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calNextDstPos(I)V

    goto :goto_3

    .line 2811
    :cond_3
    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v11, v10, v3

    if-ne v6, v11, :cond_4

    aget v10, v10, v7

    if-eq v5, v10, :cond_6

    .line 2812
    :cond_4
    iget-object v10, v0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v11, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v12, v11, v3

    aget-object v12, v10, v12

    aget v13, v11, v7

    aput-object v8, v12, v13

    .line 2813
    aget-object v10, v10, v6

    const/4 v12, 0x0

    aput-object v12, v10, v5

    .line 2814
    aget v10, v11, v3

    iput v10, v9, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2815
    aget v10, v11, v7

    iput v10, v9, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eqz v1, :cond_5

    .line 2816
    instance-of v10, v8, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v10, :cond_5

    .line 2817
    move-object v10, v8

    check-cast v10, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v10, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 2820
    :cond_5
    invoke-direct {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v11

    const-wide/16 v12, -0x64

    .line 2822
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v16

    iget-object v8, v0, Lcom/miui/home/launcher/CellLayout;->mDstPos:[I

    aget v17, v8, v3

    aget v18, v8, v7

    .line 2819
    invoke-static/range {v11 .. v18}, Lcom/miui/home/launcher/LauncherModel;->makeMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJIII)Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "Launcher.CellLayout"

    .line 2824
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alignIconsToTopWithSaveDb, info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_6
    invoke-direct {v0, v4}, Lcom/miui/home/launcher/CellLayout;->calNextDstPos(I)V

    :cond_7
    :goto_4
    add-int/2addr v6, v4

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2830
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    :cond_a
    return-object v2
.end method

.method public alignIconsToTopWithSaveDb(Z)Z
    .locals 2

    .line 2780
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTop(Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 2781
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2783
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public allowDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 2852
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

.method public calculateXsAndYs()V
    .locals 14

    .line 600
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    if-nez v0, :cond_0

    goto :goto_2

    .line 603
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 604
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 605
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 606
    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    .line 607
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v10

    .line 608
    iget v11, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 609
    iget v12, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    .line 610
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v13

    const/4 v3, 0x0

    move v4, v3

    .line 611
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 612
    invoke-static {v4, v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->calculateX(IIII)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 614
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    move v3, v0

    move v4, v9

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v13

    .line 615
    invoke-static/range {v3 .. v8}, Lcom/miui/home/launcher/CellLayout;->calculateY(IIIIII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public canBeDeleted()Z
    .locals 2

    .line 1158
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    .line 1159
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

    .line 1161
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

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 251
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 256
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 3

    .line 526
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

    .line 527
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

    .line 538
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 539
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

    .line 2479
    instance-of p1, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    return p1
.end method

.method public checkToDeleteSelf()V
    .locals 1

    .line 1171
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertUIThread()V

    .line 1172
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1174
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method clearBackupLayout()V
    .locals 5

    .line 2233
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2235
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 2236
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 2237
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aput-object v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2240
    :cond_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    return-void
.end method

.method public clearCellBackground()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1133
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method clearDraggingState(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 2171
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->clear()V

    if-eqz p1, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2177
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2178
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2179
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2180
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 2182
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    :goto_0
    return-void
.end method

.method public clearOthersToasted()V
    .locals 3

    .line 2112
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2116
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    .line 2117
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2118
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 2120
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

    .line 2108
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    return-void
.end method

.method public collectAllIcons(Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2714
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 2715
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 2716
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    move v2, v0

    .line 2717
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_5

    .line 2718
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v3, v3, v0

    :goto_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 2719
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v5, v5, v4

    if-gt v3, v5, :cond_4

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_4

    .line 2721
    :goto_2
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    if-nez v5, :cond_1

    goto :goto_3

    .line 2723
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ItemInfo;

    .line 2724
    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v7, :cond_2

    instance-of v7, v6, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v7, :cond_3

    .line 2725
    :cond_2
    invoke-virtual {p0, v5, v4, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    .line 2726
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2727
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

    .line 2949
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2951
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2952
    instance-of v4, v3, Lcom/miui/home/launcher/FolderIcon;

    if-nez v4, :cond_0

    return v1

    .line 2955
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    .line 2956
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2957
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2958
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

    .line 1166
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->deleteScreen(J)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 3205
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDrawCallback:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;

    if-eqz v0, :cond_0

    .line 3206
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;->onDraw(Landroid/graphics/Canvas;)V

    .line 3208
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    iget-boolean v1, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/anim/EditAnimController;->drawEditBackground(ZLandroid/graphics/Canvas;)V

    .line 3209
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 408
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 413
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    const/4 v6, 0x0

    if-ltz v5, :cond_5

    .line 417
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 418
    invoke-direct {p0, v7}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    .line 419
    instance-of v9, v8, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v9, :cond_0

    move-object v9, v8

    check-cast v9, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v9, v9, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-ne v9, v2, :cond_0

    move v9, v2

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    if-eqz v9, :cond_1

    .line 421
    invoke-virtual {v7}, Landroid/view/View;->isClickable()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 422
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 423
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 424
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 425
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 426
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    .line 427
    instance-of v10, v7, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 428
    move-object v9, v7

    check-cast v9, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v9, p0, v3, v4}, Lcom/miui/home/launcher/ItemIcon;->isHintClick(Landroid/view/ViewGroup;II)Z

    move-result v9

    :cond_3
    if-eqz v9, :cond_4

    .line 431
    iput-object v7, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 432
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 433
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 434
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 435
    iget v0, v8, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const-string v0, "Launcher.CellLayout"

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touch item:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 443
    :goto_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    if-nez v0, :cond_6

    .line 446
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 447
    invoke-virtual {p0, v3, v4, v0}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    const/4 v3, 0x0

    .line 448
    iput-object v3, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 449
    aget v3, v0, v6

    iput v3, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 450
    aget v0, v0, v2

    iput v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 451
    iput v2, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 452
    iput v2, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 455
    :cond_6
    iget-object v0, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 456
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    if-ne v0, v2, :cond_8

    .line 460
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    .line 462
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 464
    :cond_9
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 2880
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/miui/home/launcher/CellBackground;

    if-eqz v0, :cond_0

    return v1

    .line 2883
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    .line 2884
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2887
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

    .line 1922
    new-array v3, v2, [Ljava/lang/Object;

    .line 1923
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

    .line 1922
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isItemPosEmpty(II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Launcher.CellLayout"

    const-string p2, "Fail to fill empty cell auto"

    .line 1925
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1929
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 1930
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 1931
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge p2, v0, :cond_3

    .line 1932
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1933
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v3, v1, v5

    aget-object v0, v0, v3

    aget v1, v1, v6

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1934
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_2

    .line 1935
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 1936
    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-gt v3, v6, :cond_2

    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v3, v6, :cond_1

    goto :goto_1

    .line 1939
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v9, v4, v5

    aget-object v3, v3, v9

    aget v9, v4, v6

    const/4 v10, 0x0

    aput-object v10, v3, v9

    .line 1940
    invoke-virtual {p0, p1, v4}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    const-string p1, "Launcher.CellLayout"

    const-string v3, "Move item from (%d,%d) to (%d,%d)"

    .line 1941
    new-array v4, v2, [Ljava/lang/Object;

    iget v9, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1942
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

    .line 1941
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v3, p1, v5

    iput v3, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1944
    aget v3, p1, v6

    iput v3, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1945
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

    .line 1949
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 1950
    new-instance p1, Lcom/miui/home/launcher/CellLayout$4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellLayout$4;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I
    .locals 10

    .line 962
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 964
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 986
    :pswitch_0
    iget p1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p1

    if-nez p1, :cond_2

    .line 987
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, 0x0

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aput v3, p1, v1

    .line 988
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aput v0, p1, v2

    .line 989
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    goto :goto_1

    .line 967
    :pswitch_1
    iget p1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object p1

    goto :goto_1

    .line 970
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
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

    .line 974
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    if-eqz v1, :cond_1

    .line 975
    invoke-virtual {p0, v2, v2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p1

    goto :goto_1

    .line 977
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

    .line 983
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

    .line 828
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 829
    aput v2, v0, v1

    .line 830
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v2

    .line 831
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    move v3, v1

    .line 832
    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_3

    .line 833
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v4, v4, v1

    :goto_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 834
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v5

    if-gt v4, v6, :cond_2

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v5

    if-lt v4, v6, :cond_2

    .line 836
    :goto_2
    invoke-virtual {p0, v4, v3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v6

    if-nez v6, :cond_1

    .line 837
    aput v4, v0, v1

    .line 838
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
    .locals 12

    .line 750
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 751
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 752
    aput v2, v0, v3

    const/4 v4, 0x1

    .line 753
    aput v2, v0, v4

    .line 754
    invoke-static {v4}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v2

    .line 755
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 756
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v4

    :goto_0
    if-ltz v5, :cond_e

    .line 757
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v3

    :goto_1
    if-ne v2, v4, :cond_0

    .line 758
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v4

    if-gt v6, v7, :cond_d

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v4

    if-lt v6, v7, :cond_d

    .line 760
    :goto_2
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v8, v7, v6

    aget-object v8, v8, v5

    if-eqz v8, :cond_c

    .line 761
    aget-object v2, v7, v6

    aget-object v2, v2, v5

    .line 762
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 768
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

    .line 769
    :cond_1
    iget v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :goto_3
    if-eqz v1, :cond_2

    .line 770
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

    .line 771
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v7, v4

    .line 772
    :goto_5
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v8

    .line 774
    iget v9, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v10, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v4

    :goto_6
    if-lt v9, v5, :cond_8

    move v10, v7

    :goto_7
    if-eqz v1, :cond_4

    .line 775
    iget v11, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ge v10, v11, :cond_7

    goto :goto_8

    :cond_4
    if-lt v10, v6, :cond_7

    .line 776
    :goto_8
    iget-object v11, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v11, v11, v10

    aget-object v11, v11, v9

    if-eqz v11, :cond_5

    goto :goto_9

    .line 778
    :cond_5
    invoke-virtual {p0, v10, v9, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v11

    if-nez v11, :cond_6

    .line 779
    aput v10, v0, v3

    .line 780
    aput v9, v0, v4

    :cond_6
    sub-int/2addr v10, v8

    goto :goto_7

    :cond_7
    :goto_9
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 784
    :cond_8
    aget v5, v0, v3

    if-ltz v5, :cond_9

    aget v5, v0, v4

    if-ltz v5, :cond_9

    return-object v0

    :cond_9
    if-eqz v1, :cond_a

    .line 788
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v1, p1

    goto :goto_a

    :cond_a
    move v1, v3

    :goto_a
    aput v1, v0, v3

    .line 789
    iget v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 790
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

    .line 798
    iget p2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int p1, p2, p1

    goto :goto_b

    :cond_f
    move p1, v3

    :goto_b
    aput p1, v0, v3

    .line 799
    aput v3, v0, v4

    return-object v0
.end method

.method findLastVacantArea(II)[I
    .locals 8

    .line 804
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 805
    aput v1, v0, v2

    const/4 v3, 0x1

    .line 807
    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v4

    .line 808
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/CellLayout;->calCellXRange(I)V

    .line 809
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_4

    .line 810
    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v6, v6, v2

    :goto_1
    if-ne v4, v3, :cond_0

    .line 811
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v3

    if-gt v6, v7, :cond_3

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXIterateRange:[I

    aget v7, v7, v3

    if-lt v6, v7, :cond_3

    .line 813
    :goto_2
    invoke-virtual {p0, v6, v5, p1, p2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v7

    if-nez v7, :cond_1

    .line 814
    aput v6, v0, v2

    .line 815
    aput v5, v0, v3

    goto :goto_3

    .line 816
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

    .line 821
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

    .line 847
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 848
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    if-eqz p5, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 853
    aget p2, v0, p1

    const/4 p5, 0x1

    aget v1, v0, p5

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/CellLayout;->cellToPositionIndex(II)I

    move-result p2

    move v1, p2

    .line 855
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v1, v2, :cond_2

    .line 856
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 857
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

    .line 863
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 864
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

    .line 904
    iget v5, v0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-le v4, v5, :cond_0

    return-object v3

    .line 907
    :cond_0
    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 908
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 914
    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v6, v2

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    if-ltz v6, :cond_5

    .line 915
    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v11, v1

    :goto_1
    if-ltz v11, :cond_4

    if-eqz p6, :cond_1

    .line 918
    invoke-virtual {v0, v11, v6, v5}, Lcom/miui/home/launcher/CellLayout;->cellToCenterPoint(II[I)V

    goto :goto_2

    .line 920
    :cond_1
    invoke-virtual {v0, v11, v6, v5}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    :goto_2
    const/4 v12, 0x0

    .line 922
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

    .line 928
    invoke-virtual {v0, v11, v6, v1, v2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 934
    :cond_3
    aput v11, v17, v12

    .line 935
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

    .line 872
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 873
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

    .line 2474
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2484
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellContainerHeight()I
    .locals 1

    .line 3248
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellContainerHeight:I

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellHeightGap()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return v0
.end method

.method public getCellPaddingTop()I
    .locals 1

    .line 3252
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getCellWidthGap()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    return v0
.end method

.method getChildVisualPosByTag(Ljava/lang/Object;[I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 948
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 949
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 950
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 951
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 952
    aput v2, p2, v0

    const/4 p1, 0x1

    .line 953
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

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getEmptyCellsNum()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2842
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v1, v3, :cond_1

    .line 2843
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 2844
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

    .line 2981
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

    const p1, 0x7f110077

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLastOccupiedIndex()I
    .locals 5

    .line 881
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpXY:[I

    .line 882
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getMaxIndex()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    .line 883
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    const/4 v2, 0x0

    .line 884
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

.method public getNotchEditModeGapDelta()I
    .locals 3

    .line 566
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNotchEditModePaddingTopDelta()I

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v2, v1

    div-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 1

    .line 2966
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object v0
.end method

.method public getPaddingTopDelta()I
    .locals 1

    .line 2540
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModePaddingTopDelta:I

    return v0
.end method

.method public getScreenId()J
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-wide v0
.end method

.method public getScreenType()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    return v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getmXs()[I
    .locals 1

    .line 3240
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    return-object v0
.end method

.method public getmYs()[I
    .locals 1

    .line 3244
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    return-object v0
.end method

.method public hasNewInstallApps()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    return v0
.end method

.method public hasToastedNoSpace()Z
    .locals 1

    .line 1068
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    return v0
.end method

.method public isCellOccupied(IIII)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_6

    add-int v2, p1, v1

    .line 727
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    if-gez v2, :cond_0

    goto :goto_3

    :cond_0
    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_4

    add-int v5, p2, v3

    .line 731
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v5, v6, :cond_3

    if-gez v5, :cond_1

    goto :goto_2

    .line 734
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
    :goto_2
    return v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v4

    :cond_6
    return v0
.end method

.method public isChildrenLaidOut()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3224
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3225
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3226
    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1474
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 1475
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_1

    .line 1476
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

    .line 2970
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 2971
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v3, :cond_1

    .line 2972
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

    .line 717
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

    .line 213
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mIsNoVacantMode:Z

    return v0
.end method

.method public isPendingItemsEmtpy()Z
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PendingSourceDelegate;->isPendingItemsEmtpy()Z

    move-result v0

    return v0
.end method

.method public isQuickCallCellLayout()Z
    .locals 1

    const/4 v0, 0x3

    .line 289
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->isScreenType(I)Z

    move-result v0

    return v0
.end method

.method public isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 2093
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result v0

    .line 2094
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getRemainedDraggingSize()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 2095
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

    .line 3128
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    return v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .line 2565
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 7

    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 625
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    .line 626
    iget v2, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, v4, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 627
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 628
    iget v0, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    .line 629
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 630
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public needAlignIconsToTop()Z
    .locals 7

    const/4 v0, 0x0

    .line 2758
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getIterateDirection(Z)I

    move-result v1

    .line 2759
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->calFirstIconPos(I)V

    .line 2763
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v0

    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aget v5, v5, v3

    if-lt v2, v5, :cond_5

    if-ne v1, v3, :cond_0

    .line 2764
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    if-ne v1, v3, :cond_1

    if-ltz v5, :cond_4

    goto :goto_2

    .line 2765
    :cond_1
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_4

    .line 2767
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

    .line 2771
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

    .line 1188
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    .line 1189
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 1193
    array-length v0, p1

    if-lez v0, :cond_4

    .line 1194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1195
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/miui/home/launcher/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1196
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1197
    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_3

    .line 1199
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 1200
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    .line 1201
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    sub-int v1, v0, v1

    .line 1202
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1203
    aget v0, p1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    aput v0, p1, v2

    goto :goto_1

    .line 1205
    :cond_2
    aget v0, p1, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 1208
    :cond_3
    :goto_1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isIgnoreSearchLayoutTranY()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1209
    aget p2, p1, v1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScreen()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p2, v0

    aput p2, p1, v1

    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2156
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onAttachedToWindow()V

    .line 2157
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 2158
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2163
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onDetachedFromWindow()V

    .line 2164
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2165
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2166
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDeleteSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2

    .line 1126
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    .line 1127
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1128
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 2041
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    .line 2042
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 2043
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setCellBackgroundImage(Lcom/miui/home/launcher/DragObject;)V

    .line 2044
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->bindDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 2045
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setSkipNextAutoLayoutAnimation(Z)V

    .line 2046
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 2047
    aput v2, v0, v1

    .line 2048
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2049
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_1

    .line 2051
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2052
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2053
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2056
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->predictWidgetCanBeAdded(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2057
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_1

    .line 2059
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    goto :goto_1

    .line 2054
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/CellLayout;->showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V

    .line 2063
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearOthersToasted()V

    return-void
.end method

.method onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 2126
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->clearDraggingState(Lcom/miui/home/launcher/DragObject;)V

    .line 2127
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDroped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2128
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 2129
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 2130
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 2131
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v0, 0x0

    .line 2132
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->unbindDragObject(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2322
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v9, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 2323
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v10, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 2324
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_2

    .line 2326
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2329
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2330
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {v7, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2332
    :cond_1
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    move-object/from16 v0, p0

    move-object v2, v11

    move v3, v9

    move v4, v10

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->updateCellBackgroundPositionWhenDragOver(Lcom/miui/home/launcher/CellBackground;[IIILcom/miui/home/launcher/DragObject;)V

    .line 2335
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_2

    .line 2336
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    aget v1, v11, v12

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2337
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    aget v1, v11, v13

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    :cond_2
    if-gt v9, v13, :cond_4

    if-le v10, v13, :cond_3

    goto :goto_1

    .line 2349
    :cond_3
    iget v0, v8, Lcom/miui/home/launcher/DragObject;->x:I

    .line 2350
    iget v1, v8, Lcom/miui/home/launcher/DragObject;->y:I

    move v14, v0

    move v15, v1

    move v6, v13

    goto :goto_2

    .line 2345
    :cond_4
    :goto_1
    iget v0, v8, Lcom/miui/home/launcher/DragObject;->x:I

    iget v1, v8, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int/2addr v0, v1

    .line 2346
    iget v1, v8, Lcom/miui/home/launcher/DragObject;->y:I

    iget v2, v8, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int/2addr v1, v2

    move v14, v0

    move v15, v1

    move v6, v12

    .line 2353
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

    .line 2355
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

    .line 2357
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

    .line 2378
    :cond_6
    instance-of v2, v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v4, 0x0

    if-eqz v2, :cond_d

    .line 2379
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

    .line 2380
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/FolderInfo;

    const/4 v13, 0x3

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 2383
    :cond_7
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    add-int/2addr v2, v5

    if-ge v14, v2, :cond_8

    .line 2384
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v5, 0x1

    iput v5, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2385
    :cond_8
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    sub-int/2addr v2, v5

    if-le v14, v2, :cond_9

    .line 2386
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v13, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2388
    :cond_9
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2389
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v3, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2391
    :cond_a
    iget-object v0, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v12, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    move-object v0, v4

    goto :goto_4

    .line 2381
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

    .line 2397
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v12, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_4

    .line 2399
    :cond_e
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v3, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 2402
    :goto_4
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v2, :cond_15

    if-eq v0, v2, :cond_15

    .line 2403
    invoke-interface {v2, v8}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 2404
    iput-object v4, v7, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    goto :goto_8

    .line 2362
    :cond_f
    :goto_5
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v12

    add-int/2addr v2, v9

    iget v4, v7, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-le v2, v4, :cond_10

    .line 2363
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    iget v4, v7, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v4, v9

    aput v4, v2, v12

    .line 2365
    :cond_10
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v2, v10

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-le v2, v5, :cond_11

    .line 2366
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    iget v5, v7, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int/2addr v5, v10

    aput v5, v2, v4

    .line 2368
    :cond_11
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 2369
    iget-object v5, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v5, v5, v12

    iget-object v6, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v6, v6, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v6, v6, v4

    invoke-virtual {v7, v5, v6, v2}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 2370
    aget v5, v2, v12

    sub-int/2addr v5, v14

    .line 2371
    aget v2, v2, v4

    sub-int/2addr v2, v15

    .line 2372
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v4, v6, :cond_13

    .line 2373
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-lez v5, :cond_12

    const/4 v4, 0x6

    goto :goto_6

    :cond_12
    const/4 v4, 0x7

    :goto_6
    iput v4, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_8

    .line 2375
    :cond_13
    iget-object v4, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-lez v2, :cond_14

    const/4 v2, 0x4

    goto :goto_7

    :cond_14
    move v2, v1

    :goto_7
    iput v2, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 2408
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

    .line 2410
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v1, :cond_17

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aget v2, v2, v4

    sub-int/2addr v2, v15

    .line 2411
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v1, :cond_17

    return-void

    :cond_16
    const/4 v4, 0x1

    .line 2415
    :cond_17
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragedXY:[I

    aput v14, v1, v12

    .line 2416
    aput v15, v1, v4

    .line 2418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v7, Lcom/miui/home/launcher/CellLayout;->mLastRelayoutTime:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x15e

    cmp-long v1, v1, v4

    if-lez v1, :cond_1b

    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 2419
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout$DragPos;->equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2420
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout$DragPos;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v11, :cond_18

    .line 2421
    aget v1, v11, v12

    const/4 v2, 0x1

    aget v2, v11, v2

    invoke-virtual {v7, v1, v2}, Lcom/miui/home/launcher/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    .line 2423
    :cond_18
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout$DragPos;->set(Lcom/miui/home/launcher/CellLayout$DragPos;)V

    .line 2424
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2425
    iget-object v1, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-static {v1, v8}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->access$1602(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DragObject;

    .line 2426
    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    .line 2427
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2428
    iget-object v2, v7, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    iget-object v4, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v4, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v4, v3, :cond_19

    const/16 v0, 0x64

    int-to-long v0, v0

    goto :goto_9

    :cond_19
    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    const-wide/16 v0, 0x12c

    goto :goto_9

    :cond_1a
    const-wide/16 v0, 0xc8

    :goto_9
    invoke-virtual {v7, v2, v0, v1}, Lcom/miui/home/launcher/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2837
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 1000
    :cond_0
    iget-object v5, v0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1001
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v3, :cond_2

    .line 1002
    invoke-interface {v3, v1}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    .line 1003
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v3, v1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    const/4 v1, 0x0

    .line 1005
    iput-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 1006
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    :cond_1
    return v2

    .line 1011
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v3

    if-nez v3, :cond_3

    return v4

    .line 1016
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v2, :cond_4

    .line 1020
    aget v1, v3, v4

    iput v1, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1021
    aget v1, v3, v6

    iput v1, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    return v6

    .line 1025
    :cond_4
    instance-of v7, v5, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v7, :cond_6

    iget-wide v7, v5, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    iget v7, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v8, v3, v4

    if-ne v7, v8, :cond_5

    iget v7, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v8, v3, v6

    if-eq v7, v8, :cond_6

    .line 1027
    :cond_5
    iget-object v9, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v10, v5

    check-cast v10, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v11, 0x0

    iget-wide v7, v5, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    long-to-int v12, v7

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v7

    long-to-int v13, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v7, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v8, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v18, v3, v4

    aget v19, v3, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 1027
    invoke-static/range {v9 .. v19}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;IIIIIIIII)V

    .line 1033
    :cond_6
    invoke-direct {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1035
    aget v8, v3, v4

    iput v8, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1036
    aget v3, v3, v6

    iput v3, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const-wide/16 v8, -0x64

    .line 1037
    iput-wide v8, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1040
    iput-boolean v4, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1041
    iput-boolean v6, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_7

    const/4 v4, -0x1

    .line 1043
    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1047
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 1048
    invoke-virtual {v0, v2, v4}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1050
    :goto_0
    instance-of v3, v2, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz v3, :cond_8

    .line 1051
    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/interfaces/IEditable;

    iget-object v4, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    invoke-interface {v3, v4, v6}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    .line 1053
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/CellLayout$2;

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/miui/home/launcher/CellLayout$2;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/DragObject;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return v6
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2

    .line 1108
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v0, 0x0

    .line 1114
    iput-boolean v0, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 1115
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    :cond_1
    return-void
.end method

.method onDropCompleted()V
    .locals 0

    .line 1092
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 1093
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 1094
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateChildColorIfNeed()V

    return-void
.end method

.method public onDropFormThumbnail(Landroid/view/View;)Z
    .locals 4

    .line 1072
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const-wide/16 v1, -0x64

    .line 1073
    iput-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1074
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    .line 1075
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    const/4 v2, 0x1

    .line 1076
    iput-boolean v2, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 1077
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, -0x1

    .line 1078
    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1080
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1081
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 1083
    :goto_0
    instance-of v0, p1, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz v0, :cond_1

    .line 1084
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/interfaces/IEditable;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    :cond_1
    const/4 v0, 0x0

    .line 1086
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1087
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

    .line 2139
    iget-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-nez p1, :cond_0

    .line 2140
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    :cond_0
    return-void
.end method

.method public onInvisible(I)V
    .locals 1

    .line 3109
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemInvisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V

    const/4 p1, 0x0

    .line 3110
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    .line 3111
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->trackExposeEvent()V

    .line 3112
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentInvisible()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 644
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    if-nez p1, :cond_0

    goto :goto_2

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_2

    .line 650
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 651
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_1

    .line 653
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    move-object v4, p5

    check-cast v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 654
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/miui/home/launcher/ItemInfo;

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mXs:[I

    iget v1, p5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v3, v0, v1

    .line 661
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mYs:[I

    iget p5, p5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v5, v0, p5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    iget p5, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr p5, v3

    iget v0, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v0, v5

    invoke-virtual {p4, v3, v5, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 669
    iget-boolean p4, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz p4, :cond_1

    .line 670
    iput-boolean p2, v4, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 672
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 673
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getLocationOnScreen([I)V

    .line 674
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p4

    new-instance p5, Lcom/miui/home/launcher/CellLayout$1;

    move-object v0, p5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout$1;-><init>(Lcom/miui/home/launcher/CellLayout;[IILcom/miui/home/launcher/CellLayout$LayoutParams;I)V

    invoke-interface {p4, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    const-string p1, "Launcher.CellLayout"

    const-string p2, "onLayout exception"

    .line 663
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 576
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 577
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 578
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 579
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 581
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 582
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 588
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 590
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 591
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->calculateXsAndYs()V

    .line 592
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 594
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 595
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->measureChild(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 585
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

    .line 3133
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3134
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3135
    instance-of v1, v0, Lcom/miui/home/launcher/UpdateIconSize;

    if-eqz v1, :cond_0

    .line 3136
    check-cast v0, Lcom/miui/home/launcher/UpdateIconSize;

    invoke-interface {v0}, Lcom/miui/home/launcher/UpdateIconSize;->updateSizeOnIconSizeChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 2685
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellPaddingTopOnFold()V

    .line 2686
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 2687
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 2688
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 1

    .line 2665
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 2666
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 2667
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 2668
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellPaddingTopOnFold()V

    .line 2669
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellContainerHeight()V

    .line 2670
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 2674
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 2675
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 2676
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    .line 2677
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellPaddingTopOnFold()V

    .line 2678
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->updateCellContainerHeight()V

    .line 2679
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/EditAnimController;->updateParam()V

    .line 2680
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/EditAnimController;->resetAllViews()V

    .line 2681
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 481
    iget-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {p1}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 483
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
    .locals 3

    .line 2649
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2650
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->debugIcon(Landroid/view/View;)V

    .line 2651
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2652
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->updateNewInstallFlags()V

    .line 2653
    instance-of v0, p1, Lcom/miui/home/launcher/NewInstallAppIcon;

    if-eqz v0, :cond_0

    .line 2654
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    check-cast p1, Lcom/miui/home/launcher/NewInstallAppIcon;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onNewVisibleItemAdd(Lcom/miui/home/launcher/NewInstallAppIcon;)V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 2629
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2630
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->debugIcon(Landroid/view/View;)V

    return-void
.end method

.method public onVisible(I)V
    .locals 2

    .line 3048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/CellLayout;->mStartShowingTime:J

    .line 3049
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sOnItemVisibleWorker:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V

    const/4 p1, 0x1

    .line 3050
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    .line 3051
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 3053
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getFirstPersonView()Landroid/view/View;

    move-result-object v0

    const-string v1, "had_show_work_profile_person"

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showWorkProfileTipsOnDesktop(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 3055
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentVisible()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 338
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 339
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method pointToCell(II[I)V
    .locals 2

    .line 511
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v0, v1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, p3, v0

    .line 512
    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr p1, v1

    div-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 514
    aget p2, p3, v0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p3, v0

    .line 515
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

    .line 2444
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

    .line 2445
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    div-int/2addr p1, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    return-void
.end method

.method public preRemoveView(Landroid/view/View;)V
    .locals 1

    .line 2692
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2693
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    :cond_0
    const/4 v0, 0x1

    .line 2695
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Z)V

    .line 2696
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    return-void
.end method

.method public predictWidgetCanBeAdded(Lcom/miui/home/launcher/DragObject;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2903
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2907
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2908
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 2910
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v4, :cond_2

    .line 2911
    iget v5, v4, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    iget v5, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v5, v6, :cond_2

    .line 2912
    :cond_1
    new-instance v5, Lcom/miui/home/launcher/CellLayout$Widget;

    iget v6, v4, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {v5, p0, v6, v4}, Lcom/miui/home/launcher/CellLayout$Widget;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2915
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 2916
    new-instance v2, Lcom/miui/home/launcher/CellLayout$Widget;

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/home/launcher/CellLayout$Widget;-><init>(Lcom/miui/home/launcher/CellLayout;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2917
    new-instance p1, Landroid/graphics/Region;

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-direct {p1, v0, v0, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 2918
    invoke-direct {p0, p1, v1, v0}, Lcom/miui/home/launcher/CellLayout;->predict(Landroid/graphics/Region;Ljava/util/ArrayList;I)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    const-string p1, "Launcher.CellLayout"

    const-string v1, "invalidate params in predictWidgetCanBeAdded"

    .line 2904
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public quickShowOrHideAllShortcutsCheckBox(Z)V
    .locals 1

    .line 301
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$b7dU_-h4R3nimc7Ek1H4GaAyi1M;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$b7dU_-h4R3nimc7Ek1H4GaAyi1M;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->handleAllShortcuts(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public relayoutByOccupiedCells()V
    .locals 9

    const-string v0, "Launcher.CellLayout"

    const-string v1, "relayoutByOccupiedCells"

    .line 1990
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 1992
    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 1993
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v4, v5, :cond_1

    .line 1994
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    .line 1996
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1997
    iget-wide v7, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v7, v7, v0

    if-eqz v7, :cond_0

    .line 1998
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    .line 1999
    iput v4, v5, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2000
    iput v3, v5, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2001
    iput-wide v0, v6, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2006
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mFirstPos:[I

    aput v2, v0, v2

    const/4 v1, 0x1

    .line 2007
    aput v2, v0, v1

    .line 2008
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .line 2610
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2611
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeChild(J)Landroid/view/View;
    .locals 4

    .line 2575
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2577
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2578
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 2579
    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2580
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

    .line 2569
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget-object v0, v0, v1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget-object p1, v0, p1

    .line 2571
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeItemIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 3

    const-string v0, "Launcher.CellLayout"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove icon for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->invalidate()V

    return-void
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    .line 1146
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    .line 1147
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 2592
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2593
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2616
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2617
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    .line 2598
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2599
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .line 2622
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2623
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 2604
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 2605
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 395
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 397
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 398
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 399
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public resetTouchCellInfo()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v1, -0x1

    .line 469
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 470
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    const/4 v1, 0x0

    .line 471
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 472
    iput v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    return-void
.end method

.method saveCurrentConfiguration(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 7

    .line 1851
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->clear()V

    .line 1852
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    move v2, v1

    .line 1853
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v2, v3, :cond_1

    .line 1854
    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 1855
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v4, v0, v1

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 1856
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

    .line 326
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 331
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 332
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 333
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    return-void
.end method

.method public setAllLayoutValues(Z)V
    .locals 2

    .line 559
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHorizontalSpacing()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 560
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setHeightGap(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 561
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNotchEditModePaddingTopDelta()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModePaddingTopDelta:I

    if-eqz p1, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getNotchEditModeGapDelta()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/miui/home/launcher/CellLayout;->mNotchEditModeGapDelta:I

    return-void
.end method

.method public setAndDoEditModeAnimation(ZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/anim/EditAnimController;->startEditAnim(ZLcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method setCellBackgroundImage(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 2067
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->needOutline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2069
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2070
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->calculateCellBackgroundAlpha(Lcom/miui/home/launcher/DragObject;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    goto :goto_0

    .line 2071
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2072
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2073
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2074
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->calculateCellBackgroundAlpha(Lcom/miui/home/launcher/DragObject;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    goto :goto_0

    .line 2077
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0fVOty9hnMW35nXijJZZDnldX3o;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0fVOty9hnMW35nXijJZZDnldX3o;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragObject;)V

    .line 2088
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p1

    const/4 v1, 0x0

    .line 2077
    invoke-static {v1, v0, v1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void
.end method

.method public setCellPaddingTop(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    return-void
.end method

.method setContainerId(I)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    return-void
.end method

.method setDisableTouch(Z)V
    .locals 0

    .line 476
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 294
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$Wm4JSak3fZVG4Y8QVRlHfUIYFsg;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$Wm4JSak3fZVG4Y8QVRlHfUIYFsg;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->handleAllEditables(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 296
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0qo6R-xzbiOAk2WPJX6y7zcGl5U;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$0qo6R-xzbiOAk2WPJX6y7zcGl5U;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellLayout;->handleAllEditables(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public setHeightGap(I)V
    .locals 0

    .line 571
    iput p1, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 2856
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2857
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2858
    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_0

    .line 2859
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/ItemIcon;->setIsDrawingInThumbnailView(Z)V

    .line 2861
    :cond_0
    instance-of v2, v1, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz v2, :cond_1

    .line 2862
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setIsDrawingInThumbnailView(Z)V

    .line 2864
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v2, :cond_2

    .line 2865
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/gadget/Gadget;->setIsDrawingInThumbnailView(Z)V

    .line 2867
    :cond_2
    instance-of v2, v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    .line 2869
    check-cast v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    invoke-interface {v1}, Lcom/miui/home/launcher/common/ViewPropertyBackuper;->backupProperty()V

    goto :goto_1

    .line 2871
    :cond_3
    check-cast v1, Lcom/miui/home/launcher/common/ViewPropertyBackuper;

    invoke-interface {v1}, Lcom/miui/home/launcher/common/ViewPropertyBackuper;->restoreProperty()V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2875
    :cond_5
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setOnDrawCallback(Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;)V
    .locals 0

    .line 3213
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mDrawCallback:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method setScreenId(J)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput-wide p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-void
.end method

.method setScreenType(I)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    if-eq v0, p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenType:I

    .line 276
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->loadGridConfig()V

    :cond_0
    return-void
.end method

.method public setVisibleForMaml(Z)V
    .locals 0

    .line 3124
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mVisibleForMaml:Z

    return-void
.end method

.method public setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V
    .locals 14

    move-object v0, p0

    .line 638
    iget v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v7, v0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v8, v0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    iget v9, v0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    iget v10, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingLeft:I

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mCellPaddingTop:I

    .line 639
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getPaddingTopDelta()I

    move-result v12

    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->getHeightGapDelta()I

    move-result v13

    move-object/from16 v1, p6

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 638
    invoke-virtual/range {v1 .. v13}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIIIIIIIII)V

    return-void
.end method

.method public setupLayoutParam(IILcom/miui/home/launcher/ItemInfo;ZLcom/miui/home/launcher/CellLayout$LayoutParams;)V
    .locals 7

    .line 634
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

.method public showNoSpaceToast(Lcom/miui/home/launcher/DragObject;Z)V
    .locals 1

    .line 2101
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2102
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mToasted:Z

    .line 2104
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragObject;->showNoSpaceToast(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 3143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ mHCells = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVCells = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTotalCells = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellXY[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellXY[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EmptyCellsNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3149
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellsNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 3150
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3151
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ tag "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childWidth  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childHeight  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childTranslationX  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " |"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childTranslationY  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " |"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childX  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childY  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childAlpha  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " childVisibility  = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3162
    instance-of v4, v3, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v4, :cond_0

    .line 3163
    check-cast v3, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imageViewAlpha = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imageViewVisibility = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3167
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " drawableAlpha = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " drawableVisibility = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3173
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " } \n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3176
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    if-eqz v0, :cond_7

    .line 3177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nOccupiedCells:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 3178
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v3, v3, v2

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 3179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t[\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 3180
    :goto_2
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    array-length v5, v4

    if-ge v1, v5, :cond_6

    .line 3181
    aget-object v4, v4, v1

    aget-object v4, v4, v0

    if-eqz v4, :cond_5

    .line 3183
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 3184
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    if-nez v4, :cond_3

    goto :goto_3

    .line 3188
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ">\t"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 3186
    :cond_4
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 3191
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".\t"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3194
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3197
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V
    .locals 5

    .line 693
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v0, v2, :cond_3

    .line 694
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    :goto_1
    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-lt v2, v3, :cond_2

    if-eqz p3, :cond_0

    .line 700
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v3, v0

    aget-object v4, v4, v2

    if-ne p1, v4, :cond_1

    .line 701
    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v3, v2

    goto :goto_2

    .line 704
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

    const-string/jumbo v0, "updateCellOccupiedMarks, %s, %s"

    const/4 v2, 0x2

    .line 708
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    const-string v4, "remove"

    goto :goto_3

    :cond_4
    const-string/jumbo v4, "update"

    :goto_3
    aput-object v4, v2, v3

    .line 709
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    .line 708
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 711
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    .line 713
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 722
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    return-void
.end method

.method public updateCellOccupiedMarks(Landroid/view/View;ZZ)V
    .locals 1

    .line 689
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->getChildInfo(Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;ZZ)V

    return-void
.end method

.method public updateCellPaddingTopOnFold()V
    .locals 1

    .line 2659
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2660
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->setCellPaddingTop(I)V

    :cond_0
    return-void
.end method

.method public updateEditModeScale(F)V
    .locals 1

    .line 3234
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 3235
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    .line 3236
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mEditAnimContoller:Lcom/miui/home/launcher/anim/EditAnimController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/EditAnimController;->updateEditBackground(F)V

    return-void
.end method

.method public updateMamlDownloadVisible(I)V
    .locals 1

    .line 3070
    sget-object v0, Lcom/miui/home/launcher/CellLayout;->sUpdateMamlDownloadVisible:Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/CellLayout;->workOnAllCellLayoutItem(Lcom/miui/home/launcher/CellLayout$ItemVisibilityWorker;I)V

    return-void
.end method

.method public updateNewInstallFlags()V
    .locals 5

    .line 368
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 370
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 371
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->isNewInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/CellLayout;->mHasNewInstallApps:Z

    return-void
.end method
