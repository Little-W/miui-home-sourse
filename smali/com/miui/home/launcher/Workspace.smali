.class public Lcom/miui/home/launcher/Workspace;
.super Lcom/miui/home/launcher/DragableScreenView;
.source "Workspace.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DragController$DropAnimationListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;,
        Lcom/miui/home/launcher/Workspace$DirectionProperty;,
        Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;,
        Lcom/miui/home/launcher/Workspace$CellInfo;,
        Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;,
        Lcom/miui/home/launcher/Workspace$PinchingState;
    }
.end annotation


# static fields
.field private static PREDICT_STEP_PIXELS_IN_1500:[I

.field private static PREDICT_STEP_PIXELS_IN_2250:[I

.field private static PREDICT_STEP_PIXELS_IN_3000:[I

.field private static TOTAL_PREDICT_COUNT:I

.field public static final TRANSLATION_X:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPrepareNewScreenLock:Ljava/lang/Object;


# instance fields
.field private mAddResizeFrameRunnable:Ljava/lang/Runnable;

.field private mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mAssistantPointResId:I

.field private mAutoScrollBack:Ljava/lang/Runnable;

.field private mAutoScrollEnd:Ljava/lang/Runnable;

.field private mCallbackAfterNextLayout:Ljava/lang/Runnable;

.field private final mCallbacksWhenScreenReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

.field private mCollectConsumerForCategory:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragingScrollDirection:I

.field private mCurrentScreenId:J

.field private mDefaultScreenId:J

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mDragScrollAnimateStarted:Z

.field private mDragScrollAnimationDistance:I

.field private mDragToNextScreenRunnable:Ljava/lang/Runnable;

.field private mEditAnimateFinishRunnable:Ljava/lang/Runnable;

.field private mEditModeItemClickedHandler:Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mEditingMode:I

.field private mEditingScreenChanging:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFirstVelocity:I

.field private mFolderCount:I

.field private mHasPerformLongClick:Z

.field private mIndexOrderedScreenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorMarginBottom:I

.field private mIndicatorOffsetBottomPortrait:I

.field private mIndicatorShrinkBottom:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsInsertingNewScreen:Z

.field private mIsSnapCausedByDragScroll:Z

.field private mIsSnaping:Z

.field private mLastDragScreenID:J

.field private mLastWidgetView:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

.field private mOldTransitionType:I

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mOnlyDrawCurrentScreen:Z

.field private mPredictStepCount:I

.field private mQuickAppCount:I

.field private mReorganizeFinishConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenIdToIndexMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

.field private final mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

.field private mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

.field private mScrollZone:I

.field private mScrollingClickDetector:Landroid/view/GestureDetector;

.field private mSecondPointerDown:Z

.field private mShortcutCount:I

.field private mShowEditingIndicator:Z

.field private mShowingTransitionEffectDemo:Z

.field private mState:Lcom/miui/home/launcher/Workspace$PinchingState;

.field private mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

.field private mTempCell:[I

.field private mVerticalFlingInvalidateBottomAreaHeight:F

.field private mVisibleRect:Landroid/graphics/Rect;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 1911
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    .line 1912
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_2250:[I

    .line 1913
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_1500:[I

    .line 1914
    sget-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    array-length v0, v0

    sput v0, Lcom/miui/home/launcher/Workspace;->TOTAL_PREDICT_COUNT:I

    .line 2196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    .line 3273
    new-instance v0, Lcom/miui/home/launcher/Workspace$18;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Workspace$18;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    return-void

    :array_0
    .array-data 4
        0xa
        0x14
        0x14
        0x14
        0x28
        0x64
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xa
        0xa
        0xa
        0x23
        0x4b
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xa
        0xa
        0x14
        0x23
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 146
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    const-wide/16 v0, -0x1

    .line 148
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const/4 p3, 0x2

    .line 155
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 159
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    const/4 p3, 0x7

    .line 160
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 161
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 162
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 p3, 0x0

    .line 178
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 181
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 182
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 187
    new-instance v1, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v1, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const/high16 v1, -0x40800000    # -1.0f

    .line 193
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 195
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 197
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 600
    new-instance v1, Lcom/miui/home/launcher/Workspace$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    .line 886
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1058
    new-instance v1, Lcom/miui/home/launcher/Workspace$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$4;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    .line 1237
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    .line 1724
    new-instance v1, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    invoke-direct {v1, p0, p3}, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mEditModeItemClickedHandler:Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    .line 1746
    new-instance v1, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    invoke-direct {v1, p0, p3}, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    .line 1917
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 2151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    .line 2152
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    .line 2318
    new-instance v1, Lcom/miui/home/launcher/Workspace$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$10;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    .line 2340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    .line 2341
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2342
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2343
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2344
    new-instance v1, Lcom/miui/home/launcher/Workspace$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$11;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    .line 2364
    new-instance v1, Lcom/miui/home/launcher/Workspace$12;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$12;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    .line 2639
    new-instance v1, Lcom/miui/home/launcher/Workspace$16;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$16;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    .line 2836
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    .line 2997
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 2998
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    .line 3287
    new-instance v1, Lmiuix/animation/physics/SpringAnimation;

    sget-object v2, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v1, p0, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 3301
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    .line 3438
    new-instance v1, Lcom/miui/home/launcher/Workspace$19;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$19;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    .line 3458
    new-instance v1, Lcom/miui/home/launcher/Workspace$20;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$20;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const v1, 0x7f08027a

    .line 3541
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3573
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const-string v2, "layout_inflater"

    .line 223
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    .line 224
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 225
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const v3, 0x7f100149

    .line 226
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x7f070239

    .line 228
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-string v5, "bottom_point"

    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 230
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x51

    .line 231
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 232
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v0, 0x7f08027c

    .line 233
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    .line 234
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    .line 235
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 236
    iput-boolean v6, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_0
    const-string v1, "top_point"

    .line 237
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x2

    .line 238
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x31

    .line 239
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v0, 0x7f070249

    .line 240
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 241
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 242
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_1
    const-string v1, "slider"

    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x50

    .line 245
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 247
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 248
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 250
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setAnimationCacheEnabled(Z)V

    const/16 v0, 0x2a30

    .line 251
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setMaximumSnapVelocity(I)V

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isClipTransitionDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->setClip(Z)V

    .line 255
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07028f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070093

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    .line 258
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/OnLongClickAgent;->setTimeOut(J)V

    .line 259
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initScreenSeekBarEditAnimation()V

    .line 260
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->setImportantForAccessibility(I)V

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700e2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 263
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;

    invoke-direct {v0, p0, p3}, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->dragToNextScreen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Workspace;)Landroid/content/Context;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    return p0
.end method

.method static synthetic access$1208(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 124
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    return p0
.end method

.method static synthetic access$1308(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 124
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    return p0
.end method

.method static synthetic access$1408(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 124
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Workspace;)Z
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/miui/home/launcher/Workspace;I)I
    .locals 0

    .line 124
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateCellLayoutMamlVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/Workspace;)Landroid/graphics/Rect;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Workspace;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Workspace;)Ljava/lang/Runnable;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method private addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 2374
    new-instance v0, Lcom/miui/home/launcher/Workspace$13;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/Workspace$13;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 2255
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 2257
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    .line 2260
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2261
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    .line 2262
    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-void
.end method

.method private announceForAccessibilityIfNeed(I)V
    .locals 6

    .line 369
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 372
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    move v2, v1

    move v3, v2

    .line 373
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 374
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 375
    instance-of v5, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-nez v5, :cond_0

    instance-of v4, v4, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    .line 380
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0005

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    add-int/2addr p1, v5

    .line 382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    .line 381
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private calcScaleWhenReadyToEdit(FF)F
    .locals 3

    sub-float p2, p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 932
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v0, 0x41500000    # 13.0f

    mul-float/2addr v0, p2

    mul-float v1, v0, p2

    mul-float/2addr p2, v1

    const/high16 v2, 0x42960000    # 75.0f

    div-float/2addr p2, v2

    const/high16 v2, 0x41c80000    # 25.0f

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    div-float/2addr v0, v2

    add-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    return p1
.end method

.method private checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V
    .locals 2

    .line 1225
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1226
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 1229
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Workspace$k4rVn8DJFNZ871uWVddPNM9X2Gk;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$k4rVn8DJFNZ871uWVddPNM9X2Gk;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z
    .locals 4

    .line 1978
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1979
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;

    .line 1980
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 1981
    monitor-exit v0

    return p1

    .line 1984
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private collectAllIcons(Z)V
    .locals 4

    .line 2233
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2234
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2235
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2236
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2238
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    move v1, v0

    .line 2239
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2240
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 2242
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->collectAllIcons(Ljava/util/function/Consumer;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 2247
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 2249
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    :goto_3
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->collectAllIcons(Ljava/util/function/Consumer;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private doForEachCellScreen(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/CellScreen;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 973
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 974
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 976
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dragToNextScreen()V
    .locals 3

    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 610
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    .line 611
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_2

    if-eqz v1, :cond_2

    .line 613
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingLeft()V

    .line 615
    :cond_2
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 617
    :cond_4
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingRight()V

    :cond_5
    return-void
.end method

.method private fillCell(IJII)Z
    .locals 12

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move/from16 v8, p5

    const/4 v2, -0x1

    const/4 v10, 0x1

    if-ne v1, v2, :cond_0

    .line 2070
    invoke-direct {p0, v10, v10}, Lcom/miui/home/launcher/Workspace;->getFirstNotEmptyCellInfo(II)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    move-object v11, v5

    goto :goto_0

    :cond_0
    if-ne v1, v10, :cond_1

    .line 2073
    invoke-direct {p0, v10, v10}, Lcom/miui/home/launcher/Workspace;->getLastNotEmptyCellInfo(II)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    move-object v11, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v11, v5

    :goto_0
    const/4 v5, 0x0

    if-nez v11, :cond_2

    return v5

    :cond_2
    if-ne v1, v2, :cond_3

    .line 2080
    iget-wide v6, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v6, v7}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v6

    if-le v2, v6, :cond_3

    return v5

    :cond_3
    if-ne v1, v10, :cond_4

    .line 2083
    iget-wide v1, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    if-ge v1, v2, :cond_4

    return v5

    .line 2086
    :cond_4
    iget-wide v1, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_6

    iget v1, v11, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-lt v1, v8, :cond_5

    iget v1, v11, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-ne v1, v8, :cond_6

    iget v1, v11, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    move/from16 v7, p4

    if-gt v1, v7, :cond_7

    :cond_5
    return v5

    :cond_6
    move/from16 v7, p4

    .line 2089
    :cond_7
    iget-wide v1, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2091
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    .line 2092
    iget-wide v5, v11, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v5, v6}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object v1

    .line 2093
    instance-of v2, v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v2, :cond_8

    .line 2095
    check-cast v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v1, v10}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 2097
    :cond_8
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v5, -0x64

    const/4 v9, 0x0

    move-object v2, v11

    move-wide v3, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    .line 2098
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v11}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_9
    return v10
.end method

.method private fillScreensAfterMigrateDB(II)V
    .locals 20

    move-object/from16 v6, p0

    .line 2023
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellXMigratedFrom()I

    move-result v7

    .line 2024
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v8

    .line 2025
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellYMigratedFrom()I

    move-result v9

    .line 2026
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v10

    if-lt v7, v8, :cond_0

    if-ge v9, v10, :cond_a

    .line 2029
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 2030
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    move/from16 v14, p1

    move-wide v12, v0

    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_a

    .line 2032
    invoke-virtual {v6, v12, v13}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v15

    if-nez v15, :cond_1

    return-void

    :cond_1
    move v5, v7

    :goto_1
    const/16 v16, 0x0

    const/4 v4, 0x1

    if-ge v5, v8, :cond_5

    move/from16 v2, v16

    :goto_2
    if-ge v2, v11, :cond_4

    .line 2039
    invoke-virtual {v15, v5, v2, v4, v4}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v6, v15, v2}, Lcom/miui/home/launcher/Workspace;->isRowEmpty(Lcom/miui/home/launcher/CellLayout;I)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v16, v2

    move-wide v2, v12

    move/from16 v17, v7

    move v7, v4

    move v4, v5

    move/from16 v18, v5

    move/from16 v5, v16

    .line 2040
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Workspace;->fillCell(IJII)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_2
    move/from16 v16, v2

    move/from16 v18, v5

    move/from16 v17, v7

    move v7, v4

    :cond_3
    add-int/lit8 v2, v16, 0x1

    move v4, v7

    move/from16 v7, v17

    move/from16 v5, v18

    goto :goto_2

    :cond_4
    move/from16 v18, v5

    move/from16 v17, v7

    add-int/lit8 v5, v18, 0x1

    goto :goto_1

    :cond_5
    move/from16 v17, v7

    move v7, v4

    move v5, v9

    :goto_3
    if-ge v5, v10, :cond_9

    move/from16 v4, v16

    :goto_4
    if-ge v4, v8, :cond_8

    .line 2049
    invoke-virtual {v15, v4, v5, v7, v7}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide v2, v12

    move/from16 v18, v4

    move/from16 v19, v5

    .line 2050
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Workspace;->fillCell(IJII)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_6
    move/from16 v18, v4

    move/from16 v19, v5

    :cond_7
    add-int/lit8 v4, v18, 0x1

    move/from16 v5, v19

    goto :goto_4

    :cond_8
    move/from16 v19, v5

    add-int/lit8 v5, v19, 0x1

    goto :goto_3

    :cond_9
    add-int v14, v14, p2

    .line 2057
    invoke-virtual {v6, v14}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v12

    move/from16 v7, v17

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 6

    .line 1802
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMigratingDBFromOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1803
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1806
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace$CellInfo;->isWidgetFinding()Z

    move-result v3

    or-int/2addr v0, v3

    .line 1808
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->needAddToQuickCallCellLayout(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1809
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v3

    .line 1810
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1812
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFirstNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 1813
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    .line 1815
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 1816
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    :goto_1
    invoke-virtual {v3, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastEmptyCell(II)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1826
    aget p3, p1, v2

    iput p3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 1827
    aget p1, p1, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1828
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object p2

    :cond_3
    const/4 p1, -0x1

    if-eqz v0, :cond_4

    move v3, p1

    goto :goto_2

    :cond_4
    move v3, v1

    .line 1831
    :goto_2
    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/Workspace$CellInfo;->nextScreen(I)V

    .line 1832
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    .line 1833
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    sub-int/2addr v3, p3

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    iput v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 1834
    iput v2, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1837
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_6

    return-object p2

    :cond_6
    if-eqz v0, :cond_7

    move v3, v2

    goto :goto_4

    .line 1841
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_4
    if-eqz v0, :cond_8

    .line 1842
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    sub-int/2addr v4, v1

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    if-eqz v0, :cond_9

    move p1, v1

    :cond_9
    :goto_6
    if-lt v3, v4, :cond_c

    .line 1845
    iput v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    .line 1846
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 1848
    :cond_a
    invoke-virtual {v0, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1850
    aget p1, v5, v2

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 1851
    aget p1, v5, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1852
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object p2

    :cond_b
    :goto_7
    add-int/2addr v3, p1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p3

    .line 1819
    new-instance p4, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",screenCount:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",isWorkspaceLoading:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",item:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",cellInfo:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
    .locals 3

    .line 2386
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 2389
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getFirstVacantIconArea()Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v0

    .line 2390
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2391
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2392
    iget-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 2393
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2394
    new-instance p1, Lcom/miui/home/launcher/Workspace$14;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/home/launcher/Workspace$14;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$CellInfo;Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 2407
    iget-wide v0, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    return-void
.end method

.method private findQuickCallCellLayout(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/miui/home/launcher/oldman/QuickCallCellLayout;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1861
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1863
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2987
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/CellScreen;->createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 2988
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/CellScreen;->createCellLayout(I)V

    .line 2989
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    .line 2990
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p3

    .line 2991
    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    const/16 p1, -0x64

    .line 2992
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setContainerId(I)V

    .line 2993
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method private getDampingScale(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method private getFirstNotEmptyCellInfo(II)Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    const/4 v0, 0x0

    .line 2469
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 2470
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2471
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2473
    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/CellLayout;->getLastItemInfo(II)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFirstVacantIconArea()Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 10

    .line 2198
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 2199
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    .line 2200
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    .line 2201
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x1

    .line 2205
    invoke-virtual {v2, v3, v3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v2

    const/4 v4, 0x0

    move v5, v1

    move v6, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 2208
    aget v7, v2, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    aget v7, v2, v3

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 2226
    :cond_1
    aget v1, v2, v4

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2227
    aget v1, v2, v3

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2228
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v6, v3

    add-int v2, v1, v6

    .line 2210
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2211
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v5, :cond_3

    .line 2213
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 2214
    sget-object v5, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2216
    :try_start_0
    sget-object v7, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v7

    .line 2218
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2220
    :goto_2
    monitor-exit v5

    goto :goto_4

    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2223
    :cond_3
    :goto_4
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2224
    invoke-virtual {v5, v3, v3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v5

    move-object v9, v5

    move v5, v2

    move-object v2, v9

    goto :goto_0
.end method

.method private getLastNotEmptyCellInfo(II)Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    const/4 v0, 0x1

    .line 2486
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2487
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2488
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2490
    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/CellLayout;->getLastItemInfo(II)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLastScreenIndexByType(IIZ)I
    .locals 2

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    move v0, p2

    .line 2780
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    if-ne v0, p2, :cond_2

    goto :goto_2

    :cond_2
    sub-int p2, v0, p3

    :goto_2
    return p2
.end method

.method private getNextScreenIndex(I)I
    .locals 2

    .line 555
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenLayoutX(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;
    .locals 2

    const/4 v0, 0x0

    .line 1899
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1900
    instance-of v1, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-eqz v1, :cond_0

    .line 1901
    check-cast v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenScaleRatio()F
    .locals 1

    .line 3372
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    return v0
.end method

.method private initScreenSeekBarEditAnimation()V
    .locals 2

    .line 2839
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2840
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 1682
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$acjpqox8FNrk5PPU3NWIxietLR8;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$acjpqox8FNrk5PPU3NWIxietLR8;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3208
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3209
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isInNormalEditingMode()Z
    .locals 2

    .line 278
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInQuickEditingMode()Z
    .locals 2

    .line 283
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRowEmpty(Lcom/miui/home/launcher/CellLayout;I)Z
    .locals 3

    .line 2063
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isSecondaryPointerEnable()Z
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$canAddShortcutToQuickCallCellLayout$8(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 1

    .line 1891
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->isAddContactButtonShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$checkAppWidgetResizeFrameWhenDropOnOriginScreen$2(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 1231
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/DragLayer;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    const/4 p1, 0x0

    .line 1232
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$hideAddContactButtonInQuickCallCellLayout$7(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 1884
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->hideAddContactButton()V

    const/4 p0, 0x1

    .line 1885
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$insertNewScreenIfNeed$4(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1685
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1686
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getFirstCellScreenByType(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1687
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1688
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    goto :goto_0

    .line 1691
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1692
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->containsOnlyEmptyFolders(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1694
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$jyORq1dcn0TB98mra-NeDdEMgeo(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->startScrollFailedAnimator()V

    return-void
.end method

.method public static synthetic lambda$onDropFromExternal$3(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/gadget/Gadget;)Z
    .locals 2

    .line 1404
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1405
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10021a

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$resetCellScreenScale$0(Lcom/miui/home/launcher/Workspace;F)V
    .locals 2

    .line 955
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    add-float/2addr v1, p1

    .line 956
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    return-void
.end method

.method static synthetic lambda$showAddContactButtonInQuickCallCellLayout$6(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 1877
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showAddContactButton()V

    const/4 p0, 0x1

    .line 1878
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showQuickCallCellLayoutTitle$5(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 1870
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showTitle()V

    const/4 p0, 0x1

    .line 1871
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateNormalEditProgress$1(FLcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 963
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->scaleCellLayoutToNormalEditMode(F)V

    return-void
.end method

.method private loadIndicatorMarginBottom()V
    .locals 2

    .line 2696
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    .line 2697
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    .line 2698
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    .line 2699
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    .line 2700
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2702
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method private needAddToQuickCallCellLayout(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 1789
    instance-of v0, p1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1790
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1791
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1337
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1338
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 1339
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v4

    iput-boolean v4, v2, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    .line 1340
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const-wide/16 v5, -0x64

    const/4 v7, 0x4

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v4, :cond_6

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v4, v13, :cond_6

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v14, 0xe

    if-eq v4, v14, :cond_6

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v14, 0xb

    if-eq v4, v14, :cond_6

    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v4, v10, :cond_0

    iget-wide v14, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v4, v14, v8

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 1380
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/miui/home/launcher/CellScreen;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1382
    aget v4, v3, v11

    iput v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1383
    aget v4, v3, v13

    iput v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1384
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v4, v10, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 1430
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1420
    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    iget v4, v3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    if-ne v4, v7, :cond_1

    .line 1422
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_1

    .line 1423
    :cond_1
    iget v3, v3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 1425
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    .line 1413
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1414
    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1415
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v1, v3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto :goto_1

    .line 1391
    :pswitch_2
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I

    move-result v3

    .line 1392
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1393
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v3, v4, :cond_2

    .line 1394
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v3, v12

    .line 1397
    :goto_0
    iput-object v12, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    move-object v12, v3

    goto :goto_1

    .line 1401
    :pswitch_3
    iput-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1403
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    new-instance v7, Lcom/miui/home/launcher/-$$Lambda$Workspace$ap1aZCHXC-Z5hAG2UIajFDOjU2Y;

    invoke-direct {v7, v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$ap1aZCHXC-Z5hAG2UIajFDOjU2Y;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v3, v4, v13, v7}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 1386
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4, v12}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1387
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v7, v2

    check-cast v7, Lcom/miui/home/launcher/FolderInfo;

    aget v8, v3, v11

    aget v3, v3, v13

    invoke-virtual {v4, v7, v8, v3}, Lcom/miui/home/launcher/Launcher;->addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v3

    move-object v12, v3

    .line 1432
    :cond_4
    :goto_1
    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v3, v10, :cond_e

    .line 1433
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAddWidget()V

    goto/16 :goto_6

    :cond_5
    move v13, v11

    goto/16 :goto_6

    .line 1344
    :cond_6
    :goto_2
    iget-wide v14, v2, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v4, v14, v8

    if-nez v4, :cond_7

    iget-wide v14, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v4, v14, v8

    if-nez v4, :cond_7

    instance-of v4, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_7

    const-string v4, "workspace"

    .line 1346
    move-object v8, v2

    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1348
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1346
    invoke-static {v4, v8}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_8

    .line 1351
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4, v12, v12}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_3

    .line 1352
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_9

    .line 1353
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4, v12}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1355
    :cond_9
    :goto_3
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v3

    .line 1356
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v4, p1

    .line 1357
    invoke-virtual {v4, v1, v3}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1358
    iget v4, v1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-ne v4, v7, :cond_c

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    .line 1360
    invoke-virtual {v4, v1, v3}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    .line 1363
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellScreen;->clearDraggingState()V

    .line 1364
    invoke-virtual {v4, v1, v3}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v13, v11

    :cond_b
    :goto_4
    move-object v12, v3

    goto :goto_5

    :cond_c
    move v13, v11

    goto :goto_5

    :cond_d
    move-object v12, v3

    :goto_5
    if-eqz v13, :cond_e

    .line 1376
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_e

    .line 1377
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    :cond_e
    :goto_6
    if-eqz v12, :cond_10

    .line 1438
    invoke-virtual {v12, v11}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1439
    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1440
    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1441
    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1443
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    .line 1444
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v3

    if-eqz v1, :cond_10

    .line 1445
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_10

    if-eqz v3, :cond_10

    iget v4, v3, Lcom/miui/home/launcher/DragObject;->dragAction:I

    if-eq v4, v10, :cond_10

    iget v3, v3, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eqz v3, :cond_10

    .line 1448
    invoke-virtual {v2, v12}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1449
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v1, :cond_10

    .line 1450
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_10
    return v13

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSnapStopped()V
    .locals 3

    .line 622
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 629
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private preInvalidate()V
    .locals 2

    .line 692
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 693
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 697
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private preInvalidateAllMamlDrawables()V
    .locals 8

    .line 825
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    .line 828
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    move v1, v3

    .line 829
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 830
    aget v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 831
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->isVisibleForMaml()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    .line 832
    :goto_2
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 833
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 834
    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v7, :cond_1

    .line 835
    check-cast v6, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 836
    invoke-static {v6}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 837
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 841
    :cond_2
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/CellLayout;->setVisibleForMaml(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private reloadScreens(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Launcher.Workspace"

    .line 2568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->removeScreensInLayout(II)V

    .line 2573
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 2574
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz p1, :cond_0

    .line 2575
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    .line 2576
    :goto_1
    invoke-direct {p0, v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    .line 2577
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2580
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 2581
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setEditModeIfNeeded()V

    return-void
.end method

.method private resetCellScreenScale(F)V
    .locals 4

    .line 953
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 954
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Workspace$TWzGWMtrFFpwj_brMV5hpsU_q00;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$TWzGWMtrFFpwj_brMV5hpsU_q00;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 958
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method private setClip(Z)V
    .locals 0

    .line 2707
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipChildren(Z)V

    .line 2708
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipToPadding(Z)V

    return-void
.end method

.method private setEditModeIfNeeded()V
    .locals 3

    .line 2817
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2818
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_0
    return-void
.end method

.method private setIsSnaping(Z)V
    .locals 1

    .line 587
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 590
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    return-void

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 596
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->onSnapStopped()V

    :cond_2
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3419
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1700(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    const/4 v0, 0x0

    .line 3421
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3423
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3426
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3427
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setupCurrentScreen()V
    .locals 4

    .line 2558
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenId()J

    move-result-wide v0

    .line 2559
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2561
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    .line 2563
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2564
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 1

    const/4 p2, 0x1

    .line 2804
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 2807
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_0

    .line 2809
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 2810
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2811
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 2813
    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    return-void
.end method

.method private startScrollFailedAnimator()V
    .locals 3

    .line 3290
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3293
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    new-instance v1, Lmiuix/animation/physics/SpringForce;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    const v2, 0x3e99999a    # 0.3f

    .line 3294
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    const v2, 0x3e6b851f    # 0.23f

    .line 3295
    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    .line 3293
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;

    .line 3296
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v1, :cond_1

    const/high16 v1, 0x44fa0000    # 2000.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3b060000    # -2000.0f

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 3298
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void
.end method

.method private transDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1261
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    :cond_0
    return-void
.end method

.method private updateCellLayoutMamlVisibility()V
    .locals 3

    const/4 v0, 0x0

    .line 350
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 351
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->onVisible()V

    goto :goto_1

    .line 356
    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->onInvisible()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateCellLayoutMamlVisibility(II)V
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->onInvisible()V

    .line 343
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->onVisible()V

    :cond_1
    return-void
.end method

.method private updateGadgetsLifeCycle(JJ)V
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 326
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .line 328
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 329
    iget-wide v4, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 330
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 331
    :cond_0
    iget-wide v3, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_1

    .line 332
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateHotseatPosition()V
    .locals 9

    .line 511
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_7

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenMeasureWidth()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPause()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 513
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 514
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexByPoint(II)I

    move-result v0

    .line 515
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenLayoutX(I)I

    move-result v1

    .line 516
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 517
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->getNextScreenIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 518
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v3

    .line 519
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    if-eqz v0, :cond_6

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v1

    int-to-float v1, v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenMeasureWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    if-ne v2, v7, :cond_2

    .line 525
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v8

    if-eq v8, v7, :cond_2

    goto :goto_2

    :cond_2
    if-eq v2, v7, :cond_3

    .line 527
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v0

    if-ne v0, v7, :cond_3

    sub-float v1, v6, v1

    goto :goto_2

    :cond_3
    if-ne v2, v7, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v6

    .line 532
    :goto_2
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    sub-float/2addr v6, v1

    mul-float/2addr v0, v6

    .line 533
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 534
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/HotSeats;->setTranslationY(F)V

    .line 535
    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 536
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/SearchBar;->setTranslationY(F)V

    .line 537
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 538
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v1, :cond_5

    .line 539
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 541
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_7

    .line 542
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setTranslationY(F)V

    goto :goto_3

    .line 545
    :cond_6
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    sub-float/2addr v6, v8

    mul-float/2addr v0, v6

    .line 546
    invoke-virtual {v3, v8}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 547
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/HotSeats;->setTranslationY(F)V

    .line 548
    invoke-virtual {v4, v8}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 549
    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/SearchBar;->setTranslationY(F)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateSeekBarVisibility()V
    .locals 2

    .line 3133
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3134
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3135
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    goto :goto_0

    .line 3137
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWallpaperOffset()Z
    .locals 2

    .line 491
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 494
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private updateWallpaperOffset(I)Z
    .locals 5

    .line 500
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 503
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    move p1, v3

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 503
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 505
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0, v3, p1, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3611
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3612
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3613
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/MinusOneScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

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

.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 7

    .line 1508
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1512
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1516
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_c

    .line 1517
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    goto :goto_4

    .line 1521
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1522
    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    iget v2, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v2, v3, :cond_4

    .line 1523
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v2

    if-ne v2, v3, :cond_4

    return v1

    .line 1527
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v1

    .line 1528
    :goto_0
    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellCountX()I

    move-result v6

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v6

    :goto_1
    if-gt v5, v6, :cond_b

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eqz v2, :cond_7

    .line 1529
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellCountY()I

    move-result v2

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    :goto_2
    if-le v5, v2, :cond_8

    goto :goto_3

    .line 1533
    :cond_8
    instance-of v2, v0, Lcom/miui/home/launcher/FolderInfo;

    if-nez v2, :cond_9

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1534
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    if-ne v0, v4, :cond_a

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    return v1

    .line 1540
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_b
    :goto_3
    return v1

    :cond_c
    :goto_4
    return v1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 676
    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    .line 677
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 678
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/4 p3, 0x0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 681
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 683
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 686
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_2
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 10

    .line 417
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 11

    move-object v9, p0

    move-object v10, p1

    .line 432
    iget v0, v9, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 433
    instance-of v0, v10, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    .line 434
    iput-object v10, v9, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 450
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 0

    .line 466
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p4

    if-gez p4, :cond_0

    if-gez p4, :cond_0

    const-string p1, "Launcher.Workspace"

    const-string p2, "The screen must be >= 0; skipping child"

    .line 469
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p5

    if-eqz p8, :cond_1

    const/4 p6, 0x0

    goto :goto_0

    :cond_1
    const/4 p6, -0x1

    .line 475
    :goto_0
    new-instance p7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p5, p1, p6, p7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 476
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p5

    cmp-long p2, p2, p5

    if-nez p2, :cond_2

    .line 477
    instance-of p2, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz p2, :cond_2

    .line 478
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 481
    :cond_2
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method public addInScreen(Landroid/view/View;JIIIIZZZ)V
    .locals 7

    .line 486
    invoke-virtual/range {p0 .. p8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    move-object v0, p0

    .line 487
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v3, -0x64

    move-object v2, p1

    move-wide v4, p2

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/Launcher;->onViewAddToScreen(Landroid/view/View;IJZ)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 3120
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;I)V

    .line 3121
    instance-of p2, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p2, :cond_0

    .line 3122
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3128
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3129
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public alignIconsToTopWithSaveDb()V
    .locals 3

    const/4 v0, 0x0

    .line 2978
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2979
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2981
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public autoCategoryAllIcons()V
    .locals 3

    const/4 v0, 0x1

    .line 2268
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    const/4 v0, 0x0

    .line 2269
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2272
    new-instance v1, Lcom/miui/home/launcher/Workspace$9;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Workspace$9;-><init>(Lcom/miui/home/launcher/Workspace;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillAllScreens()V
    .locals 3

    const/4 v0, 0x0

    .line 2411
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    .line 2412
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2414
    new-instance v0, Lcom/miui/home/launcher/Workspace$15;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$15;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 2

    .line 2311
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2313
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeFinished(Landroid/content/Context;)V

    return-void
.end method

.method public autoShowTransitionEffectDemo()V
    .locals 5

    .line 1070
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 1071
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 1072
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    .line 1073
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1075
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    .line 1076
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    goto :goto_0

    .line 1078
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    .line 1080
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/Workspace$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Workspace$5;-><init>(Lcom/miui/home/launcher/Workspace;I)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    .line 1086
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    add-int/lit16 v0, v0, 0xc8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected beforeSnapToScreen(I)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->snapWorkspacePreview(I)V

    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 2

    .line 3018
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3019
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    .line 3020
    invoke-virtual {p0, p1, p4}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 3021
    iget p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-gt p4, p2, :cond_0

    .line 3022
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 3024
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p2

    const/high16 p3, -0x80000000

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z

    .line 3025
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 3026
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 3027
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 3028
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3029
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 3031
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Workspace$17;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Workspace$17;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3041
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 3042
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter p1

    .line 3043
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3044
    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 3045
    iput-boolean p3, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 3046
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 3047
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3049
    :cond_3
    sget-object p2, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3050
    :try_start_1
    sget-object p3, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    .line 3051
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3052
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p3

    .line 3051
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p3

    :catchall_1
    move-exception p2

    .line 3052
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2
.end method

.method public bindScreenRemoved(J)V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 2961
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2962
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2964
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 2967
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 2968
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onDefaultScreenDelete()V

    .line 2970
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2971
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 2973
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    :cond_3
    return-void
.end method

.method public canAddShortcutToQuickCallCellLayout()Z
    .locals 1

    .line 1890
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$jtjiHsR4d_EgNlFiK4YASiiCwz8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$jtjiHsR4d_EgNlFiK4YASiiCwz8;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public canCurrentScreenMakeRom()Z
    .locals 5

    .line 3185
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 3186
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isFull()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 3189
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3190
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 3191
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3192
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    .line 3195
    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_2

    .line 3196
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Workspace;->isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public canShowSearchEffect()Z
    .locals 3

    .line 3471
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3472
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 3473
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public cancelDragScroll()V
    .locals 3

    .line 3251
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-eqz v0, :cond_0

    return-void

    .line 3254
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelScroll()V

    .line 3255
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenLayoutX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3257
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Workspace;->startScroll(III)V

    .line 3258
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_1
    return-void
.end method

.method public changeTargetScreenOrder(II)V
    .locals 5

    .line 2522
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 2523
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    .line 2524
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 2525
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 2526
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2527
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 2528
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2531
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2532
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2533
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    return-void
.end method

.method public checkAllScreensToSelfDelete()V
    .locals 2

    const/4 v0, 0x0

    .line 3324
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3325
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearAllScreensToast()V
    .locals 2

    const/4 v0, 0x0

    .line 3330
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3331
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 3332
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->clearToasted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScreens()V
    .locals 1

    .line 2537
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2538
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2539
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 566
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->computeScroll()V

    .line 567
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset()Z

    .line 568
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 570
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    :cond_0
    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 573
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 575
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    :cond_1
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 2

    .line 3534
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 3535
    new-instance v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3537
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createUserFolderWithDragOverlap(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p2

    .line 1458
    iget-wide v0, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overItem.screenId="

    .line 1465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",currScreenId="

    .line 1466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mScreenIdMap="

    .line 1467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    :goto_0
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1469
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v10}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 1470
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    iget-object v3, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1473
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1476
    :cond_1
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 1478
    invoke-virtual {v0, v9, v1}, Lcom/miui/home/launcher/CellLayout;->getChildVisualPosByTag(Ljava/lang/Object;[I)Z

    move-result v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    .line 1479
    iget-object v2, v8, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    aget v5, v1, v10

    aget v6, v1, v12

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    :cond_2
    move-object v13, v11

    :goto_1
    if-nez v13, :cond_3

    return v10

    .line 1484
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v13, v2, v9}, Lcom/miui/home/launcher/FolderIcon;->updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1485
    aget v2, v1, v10

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 1486
    aget v2, v1, v12

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    .line 1487
    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/CellLayout;->removeChild(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1488
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 1490
    iget-wide v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    aget v4, v1, v10

    aget v5, v1, v12

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 1491
    iget-object v0, v8, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 1492
    invoke-virtual {v13}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, v8, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    move-object v3, p1

    .line 1491
    invoke-static {v0, v9, p1, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->dropDragObjectIntoFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1493
    invoke-virtual {v13, v11}, Lcom/miui/home/launcher/FolderIcon;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return v12

    :cond_4
    return v10
.end method

.method deleteScreen(J)V
    .locals 3

    .line 2943
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Launcher.Workspace"

    .line 2945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already deleted screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2948
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isDeleteableScreen(J)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2951
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 2952
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2954
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;

    sget v2, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    invoke-direct {v1, p1, p2, v2}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2956
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteScreen(J)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 706
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 709
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 710
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mPredictStepCount:I

    .line 711
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 712
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Launcher.Workspace"

    const-string v0, "ignore touch event workspace is locked"

    .line 713
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 716
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidate()V

    .line 717
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 726
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 728
    :pswitch_0
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch down"

    .line 729
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 733
    :cond_5
    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 734
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 735
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    :cond_6
    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch up or cancel"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 862
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, " Workspace Items:"

    .line 3599
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3600
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3601
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cellLayout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enterNormalEditingByGesture()V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 867
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 869
    new-instance v0, Lcom/miui/home/launcher/Workspace$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$2;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public fillEmptyCellAuto(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const-string v0, "Launcher.Workspace"

    const-string v1, "Start filling empty cell auto."

    .line 1642
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->fillEmptyCellAuto(II)V

    :cond_0
    return-void
.end method

.method public fillEmptyCellsAfterMigrateDB()V
    .locals 2

    .line 2012
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMigratingDBFromOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->fillScreensAfterMigrateDB(II)V

    .line 2016
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->fillScreensAfterMigrateDB(II)V

    :cond_0
    return-void
.end method

.method public findCurrentScreenFirstVacantArea(II)[I
    .locals 1

    .line 3352
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3356
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p1

    return-object p1
.end method

.method public findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 7

    .line 1947
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    const-wide/16 v1, -0x1

    .line 1948
    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const/4 v3, -0x1

    .line 1949
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/4 v3, 0x0

    .line 1950
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 1951
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1952
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanX:I

    .line 1953
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanY:I

    .line 1954
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isWidget()Z

    move-result v4

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v4, v3, v3, v5, v6}, Lcom/miui/home/launcher/DeviceConfig;->isInvalidateCellPosition(ZIIII)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 1957
    :cond_0
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, p1, v0, v4, v6}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Launcher.Workspace"

    const-string p2, "Too many apps installed, not adding to home screen"

    .line 1960
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 1964
    :cond_1
    iget-wide v4, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    .line 1965
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1966
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1967
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1969
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez p2, :cond_3

    .line 1971
    iget p2, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    .line 1972
    iput-wide v0, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1969
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method public finishCurrentGesture()V
    .locals 0

    .line 746
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->finishCurrentGesture()V

    return-void
.end method

.method public firstLoadScreens(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2545
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2546
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2547
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    .line 2548
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2549
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    iget v6, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenOrder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2550
    iget v2, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2552
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->reloadScreens(Ljava/util/ArrayList;)V

    .line 2553
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setupCurrentScreen()V

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 1038
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 1042
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    .line 1048
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1049
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1050
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 3087
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    if-eqz v0, :cond_0

    .line 3088
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLayout(I)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2428
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2430
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2193
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public getCellScreen(I)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2185
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    .line 2186
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 2187
    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x64

    return-wide v0
.end method

.method public getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2440
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2442
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2436
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    return-object v0
.end method

.method public getCurrentScreenId()J
    .locals 2

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentScreenType()I
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 3529
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2165
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2167
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2160
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 2161
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultScreenIndex()I
    .locals 2

    .line 2105
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 2106
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 5

    .line 1715
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1716
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1717
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const p1, 0x7f10006a

    .line 1716
    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1749
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mEditModeItemClickedHandler:Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCellScreenByType(I)Lcom/miui/home/launcher/CellScreen;
    .locals 2

    const/4 v0, 0x0

    .line 2457
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2458
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2459
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstNonWidgetScreenIndex()I
    .locals 3

    const/4 v0, 0x0

    .line 2110
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2111
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getFirstNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2511
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    .line 2512
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 2513
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2514
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2518
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1245
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1246
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getLastCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2453
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 3

    const/4 v0, 0x1

    .line 2500
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2501
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2502
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2503
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2507
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getNextTypeScreenIndex()I
    .locals 3

    .line 2787
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v0

    .line 2788
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getPreviousScreenTransitionType()I
    .locals 1

    .line 2767
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return v0
.end method

.method getScreenIdByIndex(I)J
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-wide v0

    .line 2178
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-wide v0

    .line 2181
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenIndexById(J)I
    .locals 2

    .line 2171
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getScreenIndicator()Landroid/view/View;
    .locals 1

    .line 3079
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 3080
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    return-object v0

    .line 3082
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    return-object v0
.end method

.method public getScreenType(I)I
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p1

    return p1
.end method

.method public getScrollZone()I
    .locals 1

    .line 3159
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    return v0
.end method

.method protected getSnapDuration(II)I
    .locals 0

    const/16 p1, 0xf0

    return p1
.end method

.method protected getSnapOverScroll()I
    .locals 2

    .line 3314
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_0

    .line 3315
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int v0, v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3318
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 1743
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hideAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 1883
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$LHoWYDwNDh-pmFuvsY0i6jRd14k;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$LHoWYDwNDh-pmFuvsY0i6jRd14k;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public inEditingModeAnimating()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2823
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2824
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2825
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method insertNewScreen(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3004
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3007
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 3013
    :goto_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 3014
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/ScreenUtils;->insertNewScreen(III)V

    return-void
.end method

.method public isAllItemsCheckedInLastNoEmtpyScreen()Z
    .locals 5

    .line 3163
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 3164
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 3165
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 3168
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3169
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 3170
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3171
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v4

    goto :goto_1

    .line 3172
    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_3

    .line 3173
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Workspace;->isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public isCurrentScreenNeedAlignIconsToTop()Z
    .locals 1

    .line 2448
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2449
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->needAlignIconsToTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultScreen(J)Z
    .locals 2

    .line 2120
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isDefaultScreenShowing()Z
    .locals 3

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 270
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isDeleteableScreen(J)Z
    .locals 4

    .line 2912
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2915
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2916
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 2917
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result p2

    move v0, v1

    .line 2918
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-eq p1, v0, :cond_1

    .line 2920
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v3

    if-ne v3, p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5

    .line 1989
    iget-boolean v0, p1, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1990
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1992
    :cond_0
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1993
    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1995
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    return v2

    .line 1999
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    .line 2000
    iput-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    return v1

    :cond_3
    return v2
.end method

.method public isQuickCallCellLayoutExist()Z
    .locals 1

    .line 1895
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuickCallScreenShowing()Z
    .locals 1

    .line 1907
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1908
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isQuickCallCellLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenHasClockGadget(J)Z
    .locals 6

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/Gadget;

    .line 290
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 291
    iget-wide v4, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isShowScreenSeekBar()Z
    .locals 1

    .line 3524
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowingTransitionEffectDemo()Z
    .locals 1

    .line 1066
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    return v0
.end method

.method protected isSpringOverScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTouchStateNotInScroll()Z
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method moveToDefaultScreen(Z)V
    .locals 1

    .line 2139
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2141
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    goto :goto_0

    .line 2143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 2145
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2147
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public needShowLastEmptyScreen()Z
    .locals 1

    .line 1721
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isAllItemsCheckedInLastNoEmtpyScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 1

    .line 752
    instance-of v0, p3, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eq v0, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 755
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public notifyCurrentScreen()V
    .locals 4

    .line 3477
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3481
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3483
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    if-eqz v3, :cond_1

    .line 3484
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    invoke-interface {v3}, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;->onCurrentScreenShowing()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    .line 3073
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3074
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    :cond_0
    return-void
.end method

.method public onDefaultScreenDelete()V
    .locals 3

    const/4 v0, 0x0

    .line 2128
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2129
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2130
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2131
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2132
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1554
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 1555
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1556
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isAllDropedSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eq p1, p0, :cond_1

    .line 1558
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1562
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1565
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isNoVacantMode()Z

    move-result p2

    if-eqz p2, :cond_3

    instance-of p2, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-nez p2, :cond_2

    instance-of p1, p1, Lcom/miui/home/launcher/UninstallDropTarget;

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 1566
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_3
    const/4 p1, 0x0

    .line 1569
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1664
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 1667
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1282
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1284
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1286
    :cond_0
    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1287
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1266
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1267
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1268
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1269
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1270
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1271
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1272
    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1274
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1275
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    :cond_2
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1651
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1655
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1656
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1659
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1134
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1136
    iget-wide v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 10

    .line 1154
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1155
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1162
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellLayout;->allowDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    const v3, 0x7f1001ba

    if-nez v2, :cond_3

    .line 1163
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1164
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result p1

    if-eqz p1, :cond_2

    const v3, 0x7f1001bb

    .line 1163
    :cond_2
    invoke-static {v0, v3, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    return v1

    .line 1168
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1169
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1171
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    .line 1172
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1173
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 1176
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_b

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    if-eq v2, p0, :cond_6

    goto/16 :goto_0

    .line 1180
    :cond_6
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1181
    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1183
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v7, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v7, v7, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    .line 1184
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v5, v5, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v5, v6}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1187
    invoke-virtual {v5}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1189
    :cond_7
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 1190
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1191
    instance-of v5, v2, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v5, :cond_8

    .line 1192
    move-object v5, v2

    check-cast v5, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 1193
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1197
    :cond_8
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 1198
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1199
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v6

    if-nez v6, :cond_9

    instance-of v6, v2, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v6, v6, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 1201
    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 1202
    move-object v6, v2

    check-cast v6, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-direct {p0, v5, v6}, Lcom/miui/home/launcher/Workspace;->checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    .line 1205
    :cond_9
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1206
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1207
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    goto :goto_1

    .line 1210
    :cond_a
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1177
    :cond_b
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z

    move-result v4

    :cond_c
    :goto_1
    if-nez v4, :cond_d

    .line 1213
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->hasToastedNoSpace()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1214
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 1215
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1216
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_e
    :goto_2
    if-eqz v4, :cond_f

    .line 1218
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_f

    .line 1219
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_f
    return v4
.end method

.method public onDropAnimationFinish()V
    .locals 1

    .line 1705
    new-instance v0, Lcom/miui/home/launcher/Workspace$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1296
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1297
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 1298
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 1299
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 1300
    instance-of v3, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1301
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v5

    if-eq v5, p1, :cond_0

    instance-of v5, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v5, :cond_0

    .line 1303
    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 1305
    :cond_0
    instance-of v4, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1306
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 1307
    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ShortcutIcon;

    .line 1308
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->resetCheckBox()V

    .line 1309
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1310
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    :cond_1
    const/4 v3, -0x1

    .line 1312
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1314
    new-instance v2, Lcom/miui/home/launcher/Workspace$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/Workspace$6;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 1

    .line 1326
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onDropCompleted()V

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1145
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 1146
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, -0x1

    .line 1147
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 1148
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    return-void
.end method

.method onEditingModeEnterEnd()V
    .locals 2

    .line 2730
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 2731
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 2734
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2735
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2737
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterEnd()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onEditingModeEnterStart()V
    .locals 2

    const/4 v0, 0x0

    .line 2712
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2713
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2715
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterStart()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onEditingModeExitEnd()V
    .locals 3

    .line 2749
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 2750
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    .line 2751
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    const/4 v0, 0x0

    move v1, v0

    .line 2753
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2754
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2756
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitEnd()V

    .line 2757
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2760
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2761
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2762
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method onEditingModeExitStart()V
    .locals 2

    const/4 v0, 0x0

    .line 2721
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2722
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2724
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitStart()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 3

    .line 3264
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->startDragScrollAnimator(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3267
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3269
    :cond_0
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3270
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->onEnterScrollArea(III)Z

    move-result p1

    return p1
.end method

.method public onExitScrollArea()Z
    .locals 1

    const/4 v0, -0x1

    .line 3305
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3306
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3307
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3308
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    .line 3309
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onExitScrollArea()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 635
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onFinishInflate()V

    .line 636
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010026

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 637
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 638
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 766
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 767
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 776
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 781
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_2

    .line 782
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 786
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const-string v5, "android.wallpaper.tap"

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v0, v0, v1

    .line 788
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v0, v0, v2

    .line 789
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 786
    invoke-virtual/range {v3 .. v9}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 792
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    if-eqz v0, :cond_4

    .line 794
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz p1, :cond_3

    .line 795
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 796
    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 798
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return v2

    .line 810
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2631
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/DragableScreenView;->onLayout(ZIIII)V

    .line 2632
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2633
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 2634
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 2636
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 2685
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 2687
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2688
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2690
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellScreen;->onMultiWindowModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 4

    const/4 v0, 0x0

    .line 3389
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3390
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v1, v2

    .line 3391
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragLayer;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 3392
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    neg-float v3, v3

    .line 3395
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3396
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3397
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3398
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    cmpl-float p1, v2, v0

    if-nez p1, :cond_1

    .line 3400
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 3402
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 2608
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onPinching(F)Z
    .locals 6

    .line 890
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    const v2, 0x3f99999a    # 1.2f

    if-eqz v0, :cond_6

    .line 893
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 894
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 895
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    cmpg-float v4, p1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_2

    .line 897
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 898
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_1

    .line 899
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeHotseatsToEditingEntryView()V

    .line 901
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/miui/home/launcher/Workspace;->calcScaleWhenReadyToEdit(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    cmpl-float v3, p1, v5

    if-lez v3, :cond_4

    .line 903
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 905
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->startSecurityHide()V

    return v1

    :cond_3
    move p1, v5

    goto :goto_0

    .line 910
    :cond_4
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 911
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_5

    .line 912
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeEditingEntryViewToHotseats()V

    .line 915
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    goto :goto_1

    .line 916
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_7

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 918
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 919
    new-instance p1, Lcom/miui/home/launcher/Workspace$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Workspace$3;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_2
    return v1
.end method

.method protected onPinchingEnd(F)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 944
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result v0

    .line 945
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 948
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->resetCellScreenScale(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method onQuickModeExitEnd()V
    .locals 1

    .line 2743
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2744
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 649
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 662
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 663
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    goto :goto_0

    .line 665
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    :goto_0
    if-eq v0, v2, :cond_3

    .line 668
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 2613
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateCellLayoutMamlVisibility()V

    const/4 v0, 0x0

    .line 2614
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 642
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 643
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    :goto_0
    iput v1, v0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method public onScreenOrientationChanged()V
    .locals 3

    .line 2652
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 v0, 0x0

    .line 2653
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2654
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2656
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2659
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2660
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 2661
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_3

    .line 2662
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 2666
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->onScreenOrientationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 2670
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2671
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 2672
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 v0, 0x0

    .line 2673
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2674
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2676
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onScreenSizeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2679
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_3

    .line 2680
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->onScreenSizeChanged()V

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 848
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->onScrollChanged(IIII)V

    const/4 p1, 0x0

    .line 849
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onScrollXAnimationEnd()V
    .locals 1

    .line 582
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onScrollXAnimationEnd()V

    const/4 v0, 0x0

    .line 583
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 983
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1672
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 995
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 989
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2601
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3569
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3570
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVerticalFling(IFF)V
    .locals 1

    .line 1017
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    sub-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    sub-float/2addr p2, p3

    iget p1, p0, Lcom/miui/home/launcher/Workspace;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1020
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomSearchEnable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1021
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomGlobalSearchEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1022
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1023
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1024
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    .line 1025
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    const-string p2, "home_up"

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarContainer;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1007
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1008
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/settings/LauncherGestureController;->onPullDownAction()V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 1594
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f08027d

    goto :goto_0

    :cond_0
    const v1, 0x7f08027c

    .line 1595
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    if-eqz v0, :cond_1

    const v0, 0x7f08027b

    goto :goto_1

    :cond_1
    const v0, 0x7f08027a

    .line 1596
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    const/4 v0, 0x0

    .line 1597
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1598
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 1599
    instance-of v2, v1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v2, :cond_2

    .line 1600
    new-instance v2, Lcom/miui/home/launcher/Workspace$7;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Workspace$7;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public performFakeLongClick()V
    .locals 1

    const/4 v0, 0x1

    .line 761
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return-void
.end method

.method public removeAllEmptyFoldersInCurrentScreen()V
    .locals 5

    .line 3360
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3361
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3362
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v3, :cond_0

    .line 3363
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderIcon;

    const/4 v4, 0x1

    .line 3364
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    .line 3365
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderIcon;->finishPendingAll()V

    .line 3366
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 3

    .line 1621
    iget-wide v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1623
    iget-wide v1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1624
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    if-ne v0, v1, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public removeScreen(I)V
    .locals 2

    .line 2931
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->removeScreen(I)V

    .line 2932
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 2933
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 2935
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenInner(I)V

    .line 2936
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2937
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 2939
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeShortcuts(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1611
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1612
    iget-wide v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1614
    iget-wide v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1615
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 3153
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->removeViewsInLayout(II)V

    .line 3154
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 4

    .line 1631
    iget-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1632
    iget-wide v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1634
    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    :cond_0
    if-eqz v1, :cond_1

    .line 1636
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1637
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    :cond_1
    return-void
.end method

.method reorderScreens()V
    .locals 6

    const-string v0, "Launcher.Workspace"

    .line 2585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens before reorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2588
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2590
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateScreens(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public scrollDragingLeft()V
    .locals 0

    return-void
.end method

.method public scrollDragingRight()V
    .locals 0

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 816
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->scrollTo(II)V

    const-string p2, "Launcher_Scrollto"

    const-string v0, "[(rawX,rawY)|scrollX]  "

    .line 817
    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Launcher_Scrollto"

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidateAllMamlDrawables()V

    return-void
.end method

.method public setAssistPointResource(I)V
    .locals 2

    .line 3544
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    if-eq v0, p1, :cond_0

    .line 3545
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3546
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3547
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3548
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getAssistantPoint()Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3549
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getAssistantPoint()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public setCurrentScreenById(J)V
    .locals 0

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 6

    .line 300
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 301
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 302
    iget v4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 303
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setCurrentScreenInner(I)V

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 304
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    if-nez v5, :cond_1

    .line 305
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 306
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/miui/home/launcher/Workspace;->updateGadgetsLifeCycle(JJ)V

    .line 307
    invoke-direct {p0, v4, p1}, Lcom/miui/home/launcher/Workspace;->updateCellLayoutMamlVisibility(II)V

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->notifyCurrentScreen()V

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 311
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;

    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->announceForAccessibilityIfNeed(I)V

    .line 313
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->checkMissingIcon()V

    :cond_1
    const/4 p1, 0x0

    .line 320
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    return-void
.end method

.method public setDefaultScreenId(J)V
    .locals 0

    .line 2124
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 1549
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 10

    .line 2844
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    .line 2845
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 2846
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const/4 v5, 0x0

    if-nez p2, :cond_a

    .line 2850
    invoke-direct {p0, v1, v4}, Lcom/miui/home/launcher/Workspace;->setupEditingScreen(ZZ)V

    if-nez v0, :cond_c

    .line 2852
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_4

    .line 2853
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p2

    const-wide/16 v6, 0x172

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_7

    .line 2856
    :pswitch_0
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-array v8, v2, [F

    if-eqz v1, :cond_2

    iget v9, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    goto :goto_2

    :cond_2
    iget v9, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    :goto_2
    int-to-float v9, v9

    aput v9, v8, v3

    invoke-virtual {p2, v8}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2858
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2859
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDefaultAnimatorInterPolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2860
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    .line 2864
    :pswitch_1
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-array v8, v2, [F

    if-eqz v1, :cond_3

    iget v9, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v9, v9

    goto :goto_3

    :cond_3
    move v9, v5

    :goto_3
    aput v9, v8, v3

    invoke-virtual {p2, v8}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2866
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2867
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2868
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    :cond_4
    if-eqz v1, :cond_5

    const/4 p2, 0x4

    goto :goto_4

    :cond_5
    move p2, v3

    .line 2872
    :goto_4
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 2873
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz p2, :cond_7

    .line 2874
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_5

    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_5
    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ScreenView$SlideBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2876
    :cond_7
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_9

    .line 2877
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v1, :cond_8

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_6

    :cond_8
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_6
    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_9
    :goto_7
    if-eqz v4, :cond_c

    .line 2882
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setTransitionEffectEditingMode()V

    goto :goto_9

    :cond_a
    const/16 p2, 0x9

    if-ne p1, p2, :cond_b

    .line 2887
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_9

    .line 2889
    :cond_b
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 2890
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_8
    if-ltz p2, :cond_c

    .line 2891
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_8

    :cond_c
    :goto_9
    move p2, v3

    move v4, p2

    .line 2897
    :goto_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ge p2, v6, :cond_12

    .line 2898
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 2900
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v8

    if-ne p2, v8, :cond_d

    move v8, v2

    goto :goto_b

    :cond_d
    move v8, v3

    :goto_b
    invoke-virtual {v6, v7, v8}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 2901
    iget-object v7, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v7, v6, p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V

    if-nez v0, :cond_e

    .line 2903
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v7

    sub-int v7, p2, v7

    goto :goto_c

    :cond_e
    const/high16 v7, -0x80000000

    .line 2902
    :goto_c
    invoke-virtual {v6, v1, v7, p3}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v4, :cond_f

    goto :goto_d

    :cond_f
    move v4, v3

    goto :goto_e

    :cond_10
    :goto_d
    move v4, v2

    :cond_11
    :goto_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_12
    if-nez v4, :cond_14

    .line 2907
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->isShouldBlur(I)Z

    move-result p1

    if-eqz p1, :cond_13

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_13
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {v5, p1, v3}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEditingStateChangeFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 2833
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3432
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1700(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    .line 3434
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3435
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1544
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1545
    new-instance p1, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 3383
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    const/4 p1, 0x0

    .line 3385
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public setScreenScrollRangeByCurrentScreenType()V
    .locals 6

    .line 2792
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2794
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v0

    .line 2795
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v1

    .line 2796
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRange(II)V

    .line 2797
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->correctCurrentScreen(Z)V

    .line 2798
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_3

    .line 2799
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    if-lt v3, v0, :cond_2

    if-le v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 3497
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setState(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 2

    .line 3506
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    .line 3510
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    const/4 p1, 0x2

    .line 3512
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3513
    iget-wide v0, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3514
    new-instance p3, Lcom/miui/home/launcher/Workspace$21;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$21;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3520
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 0

    .line 2597
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3098
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 3099
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3100
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    if-eqz p2, :cond_2

    .line 3103
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragLayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    :cond_2
    return-void
.end method

.method public setTransitionEffectEditingMode()V
    .locals 1

    .line 2770
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2771
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    const/4 v0, 0x0

    .line 2772
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 2773
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_0
    return-void
.end method

.method public showAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 1876
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$cYRMiv1nmoLzxeTgSVe7FzxKffQ;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$cYRMiv1nmoLzxeTgSVe7FzxKffQ;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showQuickCallCellLayoutTitle()V
    .locals 1

    .line 1869
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$cePOyP6ye4926Pkg4QE8t-C10PM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$cePOyP6ye4926Pkg4QE8t-C10PM;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showSeekBarWithoutAnim(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3145
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 3147
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3347
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 3348
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->snapByVelocity(II)V

    return-void
.end method

.method protected snapToScreen(IIZ)I
    .locals 4

    .line 1091
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1093
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    .line 1095
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1096
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1097
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1098
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1100
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    move p1, v0

    .line 1103
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v0, :cond_2

    .line 1104
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 1105
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    .line 1106
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDesktopSwipeLeftOrRight()V

    .line 1109
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(IIZ)I

    move-result p1

    return p1
.end method

.method startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 3

    .line 1114
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1116
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1120
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1122
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    .line 1123
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1126
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1127
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 1128
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1130
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    return-void
.end method

.method public startDragScrollAnimator(I)Z
    .locals 10

    .line 3220
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3223
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    .line 3230
    :pswitch_0
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    goto :goto_0

    .line 3227
    :pswitch_1
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int p1, p1

    .line 3233
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getSnapBound()[I

    move-result-object v2

    .line 3234
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    aget v4, v2, v0

    if-lt v3, v4, :cond_2

    .line 3235
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    aget v2, v2, v1

    if-le v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v6, p1

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v0

    :goto_2
    if-eqz v6, :cond_3

    .line 3239
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    .line 3240
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v5

    const/4 v7, 0x0

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/launcher/Workspace;->startScroll(IIIFF)V

    .line 3241
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3242
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3243
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    return v1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startLoading()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 3067
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 3068
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 3069
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    return-void
.end method

.method public updateAssistantPoints(Z)V
    .locals 2

    .line 3555
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_2

    .line 3556
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3557
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 3558
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3559
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->removeAssistantPoint()V

    goto :goto_0

    .line 3560
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3561
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->addAssistantPoint()V

    .line 3564
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 2

    .line 3057
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 3060
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iget-boolean v0, v0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    if-eqz v0, :cond_1

    return-void

    .line 3063
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 2

    .line 2618
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2621
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2622
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2624
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->updateMamlDownloadVisible()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateNormalEditProgress(F)V
    .locals 3

    .line 962
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$wi4pZ69Ex5nyCoYwmNI8MNjv5kA;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$wi4pZ69Ex5nyCoYwmNI8MNjv5kA;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 965
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    sub-float v1, v0, v1

    div-float/2addr p1, v1

    .line 966
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 967
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 968
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
