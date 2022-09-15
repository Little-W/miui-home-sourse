.class public Lcom/miui/home/launcher/Workspace;
.super Lcom/miui/home/launcher/DragableScreenView;
.source "Workspace.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;
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

.field public final mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

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

.field private mFoldDefaultScreenId:J

.field private mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

.field private mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

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

.field private mIsInsertingNewScreen:Z

.field private mIsSnapCausedByDragScroll:Z

.field private mIsSnaping:Z

.field private mLastDragScreenID:J

.field private mLastEvent:Landroid/view/MotionEvent;

.field private mLastWidgetView:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

.field private mLocationInWindow:[I

.field private mLocationOnScreen:[I

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

.field private mRestoreBlurRunnable:Ljava/lang/Runnable;

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

.field private mScrollToNextScreenAnimListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollZone:I

.field private final mScrollingClickDetector:Landroid/view/GestureDetector;

.field private mShortcutCount:I

.field private mShowEditingIndicator:Z

.field private mShowingTransitionEffectDemo:Z

.field private mState:Lcom/miui/home/launcher/Workspace$PinchingState;

.field private mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

.field private mTempCell:[I

.field private final mTrimScreenRunnable:Ljava/lang/Runnable;

.field private mVerticalFlingInvalidateBottomAreaHeight:F

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

.field private resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 2178
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    .line 2179
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_2250:[I

    .line 2180
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_1500:[I

    .line 2181
    sget-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    array-length v0, v0

    sput v0, Lcom/miui/home/launcher/Workspace;->TOTAL_PREDICT_COUNT:I

    .line 2458
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    .line 3604
    new-instance v0, Lcom/miui/home/launcher/Workspace$20;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Workspace$20;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    return-void

    nop

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

    .line 224
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 157
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    const-wide/16 v0, -0x1

    .line 159
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const/4 p3, 0x2

    .line 166
    new-array v2, p3, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 170
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    const/4 v0, 0x7

    .line 171
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 172
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 173
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 192
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 193
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    const/4 v1, -0x1

    .line 194
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 198
    new-instance v2, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v2, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const/high16 v2, -0x40800000    # -1.0f

    .line 205
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 207
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    .line 593
    new-instance v2, Lcom/miui/home/launcher/Workspace$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    .line 949
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1131
    new-instance v2, Lcom/miui/home/launcher/Workspace$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$4;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    .line 1391
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    .line 1952
    new-instance v2, Lcom/miui/home/launcher/Workspace$8;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    .line 1972
    new-instance v2, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mEditModeItemClickedHandler:Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    .line 2015
    new-instance v2, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    .line 2184
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 2413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    .line 2414
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    .line 2578
    new-instance v2, Lcom/miui/home/launcher/Workspace$11;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$11;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    .line 2600
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    .line 2601
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2602
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2603
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2604
    new-instance v2, Lcom/miui/home/launcher/Workspace$12;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$12;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    .line 2624
    new-instance v2, Lcom/miui/home/launcher/Workspace$13;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$13;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    .line 2875
    new-instance v2, Lcom/miui/home/launcher/Workspace$17;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$17;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    .line 2908
    new-array v2, p3, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    .line 2909
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    .line 2927
    new-instance p3, Lcom/miui/home/launcher/Workspace$18;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$18;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    .line 3115
    new-instance p3, Landroid/animation/ObjectAnimator;

    invoke-direct {p3}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    .line 3282
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 3283
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    .line 3618
    new-instance p3, Lmiuix/animation/physics/SpringAnimation;

    sget-object v2, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    invoke-direct {p3, p0, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 3632
    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    .line 3791
    new-instance p3, Lcom/miui/home/launcher/Workspace$21;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$21;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    .line 3811
    new-instance p3, Lcom/miui/home/launcher/Workspace$22;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$22;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const p3, 0x7f0806cd

    .line 3883
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3915
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 238
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const v3, 0x7f11024b

    .line 239
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x7f0705ef

    .line 241
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-string v5, "bottom_point"

    .line 242
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 243
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x51

    .line 244
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 245
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v1, 0x7f0806d1

    .line 246
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    .line 247
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    .line 248
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 249
    iput-boolean v6, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_0
    const-string p3, "top_point"

    .line 250
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x2

    .line 251
    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p3, 0x31

    .line 252
    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const p3, 0x7f070613

    .line 253
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 254
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 255
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_1
    const-string p3, "slider"

    .line 256
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 257
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p3, 0x50

    .line 258
    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 260
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 261
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 263
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setAnimationCacheEnabled(Z)V

    const/16 p3, 0x2a30

    .line 264
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->setMaximumSnapVelocity(I)V

    .line 265
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isClipTransitionDevice()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 266
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->setClip(Z)V

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070681

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070119

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    .line 272
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v1, v2}, Lcom/miui/home/launcher/OnLongClickAgent;->setTimeOut(J)V

    .line 273
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initScreenSeekBarEditAnimation()V

    .line 274
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->setImportantForAccessibility(I)V

    .line 275
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 276
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070186

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 277
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;

    invoke-direct {p3, p0, v0}, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 279
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->setScrollWholeScreen(Z)V

    .line 281
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;-><init>(Lcom/miui/home/launcher/Workspace;)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;-><init>(Lcom/miui/home/launcher/Workspace;)V

    :goto_2
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    .line 282
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initFoldAnim()V

    .line 283
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->setLayoutScreensSeamless(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->dragToNextScreen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Workspace;)Landroid/content/Context;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    return p0
.end method

.method static synthetic access$1508(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 139
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    return p0
.end method

.method static synthetic access$1608(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 139
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Workspace;)I
    .locals 0

    .line 139
    iget p0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    return p0
.end method

.method static synthetic access$1708(Lcom/miui/home/launcher/Workspace;)I
    .locals 2

    .line 139
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/miui/home/launcher/Workspace;I)I
    .locals 0

    .line 139
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/home/launcher/Workspace;)Landroid/graphics/Rect;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Workspace;Z)Z
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Workspace;)Ljava/lang/Runnable;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Workspace;)Z
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedInsertNewScreen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Workspace;)Z
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedDeleteLastCellLayout()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->deleteLastCellLayout()V

    return-void
.end method

.method private addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 2634
    new-instance v0, Lcom/miui/home/launcher/Workspace$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/Workspace$14;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

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

    .line 2517
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2518
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 2519
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 2521
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    .line 2522
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2523
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    .line 2524
    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-void
.end method

.method private canDragToPa()Z
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 624
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 625
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 626
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 627
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isAssistantCTAAgree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object v0

    .line 633
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 634
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 635
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getDragSource()Lcom/miui/home/launcher/DragSource;

    .line 636
    :cond_2
    instance-of v2, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v2, :cond_3

    check-cast v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v2, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 639
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDraggingFromAssistant()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 640
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDraggingToAssistant()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method private checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 2

    .line 1379
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 1383
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Workspace$Xh5TaqgmC9CbVAzlYiAOPGE09Qo;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$Xh5TaqgmC9CbVAzlYiAOPGE09Qo;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z
    .locals 4

    .line 2245
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2246
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

    .line 2247
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2248
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 2249
    monitor-exit v0

    return p1

    .line 2252
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

.method private checkScreenVisibility(Landroid/view/View;)Z
    .locals 5

    .line 892
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 896
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-nez v0, :cond_1

    return v1

    .line 900
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    .line 901
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 903
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :cond_3
    :goto_0
    return v1

    :cond_4
    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    return v1
.end method

.method private collectAllIcons(Z)V
    .locals 4

    .line 2495
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2496
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2497
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2498
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2500
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    move v1, v0

    .line 2501
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2502
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 2504
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

    .line 2509
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 2511
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

.method private deleteLastCellLayout()V
    .locals 1

    .line 1986
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInLastScreenIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    .line 1988
    new-instance v0, Lcom/miui/home/launcher/Workspace$9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$9;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->addScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V

    goto :goto_0

    .line 1996
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->checkToDeleteSelf()V

    :goto_0
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

    .line 1045
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1046
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dragToNextScreen()V
    .locals 4

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 603
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    .line 604
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_3

    if-eqz v1, :cond_3

    .line 606
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingLeft()V

    .line 607
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-nez v2, :cond_3

    .line 608
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->canDragToPa()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Lcom/miui/home/launcher/LauncherCallbacks;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    .line 610
    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 612
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnough()V

    .line 616
    :cond_3
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 618
    :cond_5
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingRight()V

    :cond_6
    return-void
.end method

.method private findDragOverCellScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;
    .locals 3

    .line 1420
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenMeasureWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1421
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenWidthScale()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->x:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenMeasureWidth()I

    move-result v1

    div-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 1422
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 1425
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1
.end method

.method private findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 6

    .line 2069
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

    .line 2070
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2075
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->needAddToQuickCallCellLayout(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2076
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v3

    .line 2077
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 2079
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFirstNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 2080
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    .line 2082
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 2083
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2091
    :goto_1
    invoke-virtual {v3, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastEmptyCell(II)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2093
    aget p3, p1, v2

    iput p3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2094
    aget p1, p1, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2095
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

    .line 2098
    :goto_2
    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/Workspace$CellInfo;->nextScreen(I)V

    .line 2099
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    .line 2100
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

    .line 2101
    iput v2, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2104
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_6

    return-object p2

    :cond_6
    if-eqz v0, :cond_7

    move v3, v2

    goto :goto_4

    .line 2108
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_4
    if-eqz v0, :cond_8

    .line 2109
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

    .line 2112
    iput v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    .line 2113
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 2115
    :cond_a
    invoke-virtual {v0, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object v5

    if-eqz v5, :cond_b

    .line 2117
    aget p1, v5, v2

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2118
    aget p1, v5, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2119
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

    .line 2086
    new-instance p4, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",screenCount:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
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

    .line 2646
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 2649
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getFirstVacantIconArea()Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v0

    .line 2650
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2651
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2652
    iget-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 2653
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2654
    new-instance p1, Lcom/miui/home/launcher/Workspace$15;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/home/launcher/Workspace$15;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$CellInfo;Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 2667
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

    .line 2128
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2130
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

.method private findSlot(IIIIJZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 8

    move-object v0, p0

    move-wide v1, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p7

    .line 4056
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method private generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 3272
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/CellScreen;->createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 3273
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/CellScreen;->createCellLayout(I)V

    .line 3274
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    .line 3275
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p3

    .line 3276
    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    const/16 p1, -0x64

    .line 3277
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setContainerId(I)V

    .line 3278
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method private getChildScreenWidthScale()F
    .locals 1

    .line 1430
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getDampingScale(F)F
    .locals 2

    .line 1001
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    return v1
.end method

.method private getDeltaWhenCancelScroll()I
    .locals 2

    .line 3589
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3590
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mChildScreenMeasureWidth:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    return v0
.end method

.method private getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;
    .locals 4

    .line 1441
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1442
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1

    .line 1444
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1
.end method

.method private getFirstVacantIconArea()Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 10

    .line 2460
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 2461
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    .line 2462
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    .line 2463
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x1

    .line 2467
    invoke-virtual {v2, v3, v3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v2

    const/4 v4, 0x0

    move v5, v1

    move v6, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 2470
    aget v7, v2, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    aget v7, v2, v3

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 2488
    :cond_1
    aget v1, v2, v4

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2489
    aget v1, v2, v3

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2490
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v6, v3

    add-int v2, v1, v6

    .line 2472
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2473
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v5, :cond_3

    .line 2475
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 2476
    sget-object v5, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2478
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

    .line 2480
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2482
    :goto_2
    monitor-exit v5

    goto :goto_4

    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2485
    :cond_3
    :goto_4
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2486
    invoke-virtual {v5, v3, v3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v5

    move-object v9, v5

    move v5, v2

    move-object v2, v9

    goto :goto_0
.end method

.method private getLastDragScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 2

    .line 1437
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
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

    .line 3059
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

    .line 541
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
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

    .line 2166
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 2167
    instance-of v1, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-eqz v1, :cond_0

    .line 2168
    check-cast v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenScaleRatio()F
    .locals 1

    .line 3725
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    return v0
.end method

.method private initFoldAnim()V
    .locals 1

    .line 287
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    .line 289
    new-instance v0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    :cond_0
    return-void
.end method

.method private initScreenSeekBarEditAnimation()V
    .locals 2

    .line 3118
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 3119
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    const-string/jumbo v1, "translationY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 1928
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$m5ZExW7LuyhTxTiJuMFTB56PD_M;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$m5ZExW7LuyhTxTiJuMFTB56PD_M;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3526
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

    .line 3527
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isLastCellLayoutEmpty()Z
    .locals 2

    .line 4003
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4004
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isLastScreenEmpty()Z
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isNeedCorrectIndex()Z
    .locals 2

    .line 3981
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isNeedDeleteLastCellLayout()Z
    .locals 1

    .line 2001
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->needShowLastEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedInsertNewScreen()Z
    .locals 1

    .line 2006
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->needShowLastEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSecondaryPointerEnable()Z
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$calibrateCurrentScreenIndex$8()Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$canAddShortcutToQuickCallCellLayout$7(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 1

    .line 2158
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

.method public static synthetic lambda$checkAppWidgetResizeFrameWhenDropOnOriginScreen$1(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 1385
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/DragLayer;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    const/4 p1, 0x0

    .line 1386
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$hideAddContactButtonInQuickCallCellLayout$6(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2151
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->hideAddContactButton()V

    const/4 p0, 0x1

    .line 2152
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$insertNewScreenIfNeed$3(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1931
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1932
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1933
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->containsOnlyEmptyFolders(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1934
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$jyORq1dcn0TB98mra-NeDdEMgeo(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->startScrollFailedAnimator()V

    return-void
.end method

.method public static synthetic lambda$onDropFromExternal$2(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/gadget/Gadget;)Z
    .locals 2

    .line 1621
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1622
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1103fa

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method static synthetic lambda$showAddContactButtonInQuickCallCellLayout$5(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2144
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showAddContactButton()V

    const/4 p0, 0x1

    .line 2145
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showQuickCallCellLayoutTitle$4(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2137
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showTitle()V

    const/4 p0, 0x1

    .line 2138
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateNormalEditProgress$0(FLcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 1030
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->scaleCellLayoutToNormalEditMode(F)V

    return-void
.end method

.method private loadIndicatorMarginBottom()V
    .locals 2

    .line 2975
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    .line 2976
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    .line 2977
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    .line 2978
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    .line 2979
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2981
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

    .line 2056
    instance-of v0, p1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2057
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2058
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

.method private notifyScrollToNextScreenAnimEnd()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;

    .line 575
    invoke-interface {v1}, Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;->onScrollAnimEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1537
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 1538
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    .line 1539
    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const-wide/16 v6, -0x64

    const/4 v8, 0x4

    const-wide/16 v9, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v5, :cond_7

    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v5, v13, :cond_7

    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v15, 0x12

    if-eq v5, v15, :cond_7

    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v15, 0xe

    if-eq v5, v15, :cond_7

    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v15, 0xb

    if-eq v5, v15, :cond_7

    iget v5, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v5, v11, :cond_0

    iget-wide v14, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v14, v14, v9

    if-eqz v14, :cond_0

    goto/16 :goto_3

    .line 1580
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/miui/home/launcher/CellScreen;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1582
    aget v9, v4, v12

    iput v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1583
    aget v9, v4, v13

    iput v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1584
    iget v9, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v9, v11, :cond_5

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    .line 1659
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1636
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1637
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1638
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1630
    :pswitch_1
    iput-wide v6, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1631
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1632
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v13, v5}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    goto/16 :goto_2

    .line 1648
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v9

    iput-wide v9, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1649
    move-object v1, v3

    check-cast v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    iget v4, v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    if-ne v4, v8, :cond_1

    .line 1651
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_2

    .line 1652
    :cond_1
    iget v1, v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 1654
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_2

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1642
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1644
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1592
    :pswitch_4
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 1593
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    .line 1594
    new-instance v8, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v9

    invoke-direct {v8, v9, v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 1595
    iget-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v9, v8, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result v1

    .line 1596
    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 1597
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1598
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v4, :cond_3

    .line 1599
    iget-object v14, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 1602
    :goto_0
    iput-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_2

    .line 1618
    :pswitch_5
    iput-wide v6, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1619
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1620
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    new-instance v5, Lcom/miui/home/launcher/-$$Lambda$Workspace$HliEbCUcKxj7mEDvNDKas9u3cKA;

    invoke-direct {v5, v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$HliEbCUcKxj7mEDvNDKas9u3cKA;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v1, v4, v13, v5}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    .line 1607
    :pswitch_6
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v8, v3

    check-cast v8, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v4, v8, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result v1

    .line 1608
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 1609
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v4, :cond_4

    .line 1610
    iget-object v14, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 1613
    :goto_1
    iput-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1586
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v5, v1}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1587
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v5, v3

    check-cast v5, Lcom/miui/home/launcher/FolderInfo;

    aget v8, v4, v12

    aget v4, v4, v13

    invoke-virtual {v1, v5, v8, v4}, Lcom/miui/home/launcher/Launcher;->addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    move-object v14, v1

    .line 1661
    :goto_2
    iget v1, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v1, v11, :cond_f

    .line 1662
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAddWidget()V

    goto/16 :goto_7

    :cond_6
    move v13, v12

    const/4 v14, 0x0

    goto/16 :goto_7

    .line 1544
    :cond_7
    :goto_3
    iget-wide v14, v3, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long v14, v14, v9

    if-nez v14, :cond_8

    iget-wide v14, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v9, v14, v9

    if-nez v9, :cond_8

    instance-of v9, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v9, :cond_8

    const-string/jumbo v9, "workspace"

    .line 1546
    move-object v10, v3

    check-cast v10, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1548
    invoke-virtual {v10}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1546
    invoke-static {v9, v10}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    instance-of v9, v9, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v9, :cond_9

    .line 1551
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    .line 1552
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    instance-of v9, v9, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v9, :cond_a

    .line 1553
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1555
    :cond_a
    :goto_4
    iget-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v4

    .line 1556
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1558
    iget v1, v2, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-ne v1, v8, :cond_d

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1560
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1563
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->clearDraggingState()V

    .line 1564
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    move v13, v12

    :cond_c
    :goto_5
    move-object v14, v4

    goto :goto_6

    :cond_d
    move-object v14, v5

    move v13, v12

    goto :goto_6

    :cond_e
    move-object v14, v4

    :goto_6
    if-eqz v13, :cond_f

    .line 1576
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_f

    .line 1577
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    :cond_f
    :goto_7
    if-eqz v14, :cond_11

    .line 1667
    invoke-virtual {v14, v12}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1668
    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_10

    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1669
    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1670
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1672
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 1673
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v3

    if-eqz v2, :cond_11

    .line 1674
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_11

    if-eqz v3, :cond_11

    iget v4, v3, Lcom/miui/home/launcher/DragObject;->dragAction:I

    if-eq v4, v11, :cond_11

    iget v3, v3, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eqz v3, :cond_11

    .line 1677
    invoke-virtual {v1, v14}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1678
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v2, :cond_11

    .line 1679
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_11
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSnapStopped()V
    .locals 3

    .line 644
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 651
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private preInvalidate()V
    .locals 2

    .line 714
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 715
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 719
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private preInvalidateAllMamlDrawables()V
    .locals 8

    .line 864
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

    .line 867
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    move v1, v3

    .line 868
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 869
    aget v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 870
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->isVisibleForMaml()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    .line 871
    :goto_2
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 872
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 873
    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v7, :cond_1

    .line 874
    check-cast v6, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 875
    invoke-static {v6}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 876
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 880
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

    .line 2837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->removeScreensInLayout(II)V

    .line 2842
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 2843
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz p1, :cond_0

    .line 2844
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    .line 2845
    :goto_1
    invoke-direct {p0, v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    .line 2846
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2849
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 2850
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setEditModeIfNeeded()V

    return-void
.end method

.method private resetCellScreenScale(F)V
    .locals 4

    .line 1020
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 1021
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$q-9VB7eHFqjDmt6ItcKvkIqq8Hw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$q-9VB7eHFqjDmt6ItcKvkIqq8Hw;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1022
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method private setClip(Z)V
    .locals 0

    .line 2986
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipChildren(Z)V

    .line 2987
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipToPadding(Z)V

    return-void
.end method

.method private setEditModeIfNeeded()V
    .locals 3

    .line 3096
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3097
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_0
    return-void
.end method

.method private setIsSnaping(Z)V
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 583
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    return-void

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 589
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->onSnapStopped()V

    :cond_2
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3772
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1900(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    const/4 v0, 0x0

    .line 3774
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3776
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3779
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3780
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setupCurrentScreen()V
    .locals 4

    .line 2827
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenId()J

    move-result-wide v0

    .line 2828
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2829
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2830
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    .line 2832
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2833
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 1

    const/4 p2, 0x1

    .line 3084
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3086
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_0

    .line 3088
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 3089
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3090
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 3092
    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    return-void
.end method

.method private shouldResetHotseats()Z
    .locals 2

    .line 535
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenMeasureWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 537
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldShowEditModeAnim(I)Z
    .locals 2

    .line 3183
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3184
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v0

    if-nez v0, :cond_1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 3186
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p1

    return p1
.end method

.method private showToastOnWidgetAddedAndCountLimit(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 1340
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v1, :cond_1

    return-void

    .line 1343
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1346
    :cond_2
    check-cast p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 1350
    iget-boolean v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1351
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1352
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1359
    :cond_3
    iput-boolean v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    const-string v0, ""

    .line 1360
    iput-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    return-void

    .line 1366
    :cond_4
    iget-boolean v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1367
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1372
    iput-boolean v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    const-string v0, ""

    .line 1373
    iput-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method private startScrollFailedAnimator()V
    .locals 3

    .line 3621
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3624
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    new-instance v1, Lmiuix/animation/physics/SpringForce;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    const v2, 0x3e99999a    # 0.3f

    .line 3625
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    const v2, 0x3e6b851f    # 0.23f

    .line 3626
    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    .line 3624
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;

    .line 3627
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 3628
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v1, :cond_1

    const/high16 v1, 0x44fa0000    # 2000.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3b060000    # -2000.0f

    .line 3627
    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 3629
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void
.end method

.method private transDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1415
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    :cond_0
    return-void
.end method

.method private updateDragViewAnimateTarget(Landroid/view/View;Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1325
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1328
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHotseatPosition()V
    .locals 6

    .line 511
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->shouldResetHotseats()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexByPoint(II)I

    move-result v0

    .line 513
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->getNextScreenIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    .line 515
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 517
    iget v4, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    .line 518
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->setAlpha(F)V

    .line 519
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/hotseats/HotSeats;->setTranslationY(F)V

    .line 520
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 521
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/SearchBar;->setTranslationY(F)V

    if-eqz v0, :cond_1

    .line 523
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 524
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private updateScreenLayoutMode(ZZ)V
    .locals 1

    .line 3191
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 3192
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setScreenLayoutMode(I)V

    :cond_2
    return-void
.end method

.method private updateSeekBarVisibility()V
    .locals 2

    .line 3427
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3428
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3429
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    goto :goto_0

    .line 3431
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWallpaperOffset()Z
    .locals 3

    .line 482
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastScreenEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 486
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    sub-int v0, v2, v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)Z

    move-result v0

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_2
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

    .line 3953
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3954
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3955
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
    .locals 6

    .line 1736
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1744
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 1749
    :cond_2
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x67

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    return v1

    .line 1753
    :cond_3
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    return v1

    .line 1757
    :cond_4
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_9

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_9

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_5

    goto :goto_1

    .line 1763
    :cond_5
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    return v1

    .line 1768
    :cond_6
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    if-gt v0, v2, :cond_8

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    if-le p1, v0, :cond_7

    goto :goto_0

    .line 1772
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_8
    :goto_0
    return v1

    :cond_9
    :goto_1
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

    .line 698
    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    .line 699
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 700
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/4 p3, 0x0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 703
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 705
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 708
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_2
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 11

    move-object v9, p0

    move-object v10, p1

    .line 416
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

    .line 417
    instance-of v0, v10, Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_0

    instance-of v0, v10, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    iput-object v10, v9, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIILjava/lang/Long;Z)V
    .locals 10

    move-object v9, p1

    .line 423
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 424
    instance-of v0, v9, Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_1

    instance-of v0, v9, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    .line 425
    iput-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    :goto_1
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

    .line 441
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 0

    .line 457
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p4

    if-gez p4, :cond_0

    if-gez p4, :cond_0

    const-string p1, "Launcher.Workspace"

    const-string p2, "The screen must be >= 0; skipping child"

    .line 460
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 465
    :cond_0
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p5

    if-eqz p8, :cond_1

    const/4 p6, 0x0

    goto :goto_0

    :cond_1
    const/4 p6, -0x1

    .line 466
    :goto_0
    new-instance p7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p5, p1, p6, p7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p5

    cmp-long p2, p2, p5

    if-nez p2, :cond_3

    .line 468
    instance-of p2, p1, Landroid/appwidget/AppWidgetHostView;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz p2, :cond_3

    .line 469
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 472
    :cond_3
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method public addInScreen(Landroid/view/View;JIIIIZZZ)V
    .locals 7

    .line 477
    invoke-virtual/range {p0 .. p8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    move-object v0, p0

    .line 478
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v3, -0x64

    move-object v2, p1

    move-wide v4, p2

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/Launcher;->onViewAddToScreen(Landroid/view/View;IJZ)V

    return-void
.end method

.method public addScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V
    .locals 1

    .line 4044
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 3414
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;I)V

    .line 3415
    instance-of p2, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p2, :cond_0

    .line 3416
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3422
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3423
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public afterFriction(FF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 1039
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p2

    .line 1040
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v1, p1, p1

    mul-float v2, v1, p1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v1

    add-float/2addr v2, p1

    mul-float/2addr v0, v2

    mul-float/2addr v0, p2

    return v0
.end method

.method public alignIconsToTopWithSaveDb()V
    .locals 3

    const/4 v0, 0x0

    .line 3263
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3264
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3266
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

    .line 2530
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    const/4 v0, 0x0

    .line 2531
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2534
    new-instance v1, Lcom/miui/home/launcher/Workspace$10;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Workspace$10;-><init>(Lcom/miui/home/launcher/Workspace;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillAllScreens()V
    .locals 3

    const/4 v0, 0x0

    .line 2671
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    .line 2672
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2674
    new-instance v0, Lcom/miui/home/launcher/Workspace$16;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$16;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 2

    .line 2571
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2573
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeFinished(Landroid/content/Context;)V

    return-void
.end method

.method public autoShowTransitionEffectDemo()V
    .locals 5

    .line 1143
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 1144
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 1145
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    .line 1146
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1148
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    .line 1149
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    goto :goto_0

    .line 1151
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    .line 1153
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/Workspace$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Workspace$5;-><init>(Lcom/miui/home/launcher/Workspace;I)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    .line 1159
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    add-int/lit16 v0, v0, 0xc8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected beforeSnapToScreen(I)V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->snapWorkspacePreview(I)V

    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 2

    .line 3310
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3311
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    .line 3312
    invoke-virtual {p0, p1, p4}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 3313
    iget p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 p3, 0x0

    if-gt p4, p2, :cond_0

    .line 3314
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget p4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p4, p4, 0x1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 3315
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget p4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p2, p4, p3}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    .line 3317
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p2

    const/high16 p4, -0x80000000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, v0}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z

    .line 3318
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 3319
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 3320
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 3321
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3322
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 3324
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Workspace$19;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Workspace$19;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3334
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 3335
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter p1

    .line 3336
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3337
    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 3338
    iput-boolean p3, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 3339
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 3340
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3342
    :cond_3
    sget-object p2, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3343
    :try_start_1
    sget-object p3, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    .line 3344
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3345
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p3

    .line 3344
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p3

    :catchall_1
    move-exception p2

    .line 3345
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

    .line 3246
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3247
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3249
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 3252
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 3253
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onDefaultScreenDelete()V

    .line 3255
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3256
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 3258
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    :cond_3
    return-void
.end method

.method protected calcScrollRightBound(II)I
    .locals 2

    .line 4087
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getVisualPosition(I)I

    move-result p1

    .line 4088
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mChildScreenMeasureWidth:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method protected calcScrollXByIndex(I)I
    .locals 2

    .line 4093
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenScrollX(I)I

    move-result p1

    .line 4094
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 4095
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRange:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    :cond_0
    return p1
.end method

.method protected calcSnapGap()I
    .locals 3

    .line 3695
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->hasOddScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3696
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3697
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3698
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    return v1

    .line 3701
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->calcSnapGap()I

    move-result v0

    return v0
.end method

.method public calculateFoldScreenSide(I)I
    .locals 3

    .line 4036
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4037
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4039
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(IZ)I

    move-result v0

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected calibrateCurrentScreenIndex(I)I
    .locals 3

    .line 3987
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3988
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Workspace$MGWR-44g3pXX46mELNYaCaNRtbk;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$MGWR-44g3pXX46mELNYaCaNRtbk;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->runWhenScreenModeChange(Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    .line 3989
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(IZ)I

    move-result p1

    goto :goto_1

    .line 3991
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public calibrateFoldCurrentScreenIndex(IZ)I
    .locals 6

    .line 3997
    sget-object v0, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->INSTANCE:Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 3998
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastCellLayoutEmpty()Z

    move-result v4

    move v1, p1

    move v5, p2

    .line 3997
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->obtainValidCurrentScreenIndex(IIIZZ)I

    move-result p1

    .line 3999
    iget p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenScrollLeftBound:I

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenScrollRightBound:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result p1

    return p1
.end method

.method public canAddShortcutToQuickCallCellLayout()Z
    .locals 1

    .line 2157
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$VU_JwY5qOSRLkobzPFD9CX5AvBk;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$VU_JwY5qOSRLkobzPFD9CX5AvBk;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public canMakeRomInFullScreen(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3483
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3484
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3485
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3486
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 3489
    :cond_0
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v2, :cond_1

    .line 3490
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Workspace;->isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public canScreenMakeRom()Z
    .locals 5

    .line 3498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3499
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3503
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isTwoScreen()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3504
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3506
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .line 3509
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3510
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->isFull()Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    .line 3514
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 3515
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->canMakeRomInFullScreen(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public canShowSearchEffect()Z
    .locals 3

    .line 3824
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3825
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 3826
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

    .line 3577
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-eqz v0, :cond_0

    return-void

    .line 3580
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelScroll()V

    .line 3581
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDeltaWhenCancelScroll()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3583
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Workspace;->startScroll(III)V

    .line 3584
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_1
    return-void
.end method

.method public changeTargetScreenOrder(II)V
    .locals 6

    .line 2786
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 2787
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    .line 2788
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 2789
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    move v3, v0

    .line 2790
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2791
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    .line 2792
    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 2793
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v4, v3, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2796
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2797
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2798
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    return-void
.end method

.method public checkAllScreensToSelfDelete()V
    .locals 2

    const/4 v0, 0x0

    .line 3666
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3667
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

    .line 3672
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3673
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 3674
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->clearToasted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScreens()V
    .locals 2

    const-string v0, "Launcher.Workspace"

    const-string v1, "clearScreens"

    .line 2802
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2804
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2805
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 552
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->computeScroll()V

    .line 553
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset()Z

    .line 554
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 556
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    :cond_0
    const/4 v0, 0x0

    .line 558
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 559
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 561
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    :cond_1
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 2

    .line 3876
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 3877
    new-instance v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3879
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

    .line 1687
    iget-wide v0, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overItem.screenId="

    .line 1694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",currScreenId="

    .line 1695
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mScreenIdMap="

    .line 1696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    :goto_0
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1698
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v10}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 1699
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    iget-object v3, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1702
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1705
    :cond_1
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 1707
    invoke-virtual {v0, v9, v1}, Lcom/miui/home/launcher/CellLayout;->getChildVisualPosByTag(Ljava/lang/Object;[I)Z

    move-result v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    .line 1708
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

    .line 1713
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v13, v2, v9}, Lcom/miui/home/launcher/FolderIcon;->updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1714
    aget v2, v1, v10

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 1715
    aget v2, v1, v12

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    .line 1716
    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/CellLayout;->removeChild(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1717
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 1719
    iget-wide v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    aget v4, v1, v10

    aget v5, v1, v12

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 1720
    iget-object v0, v8, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 1721
    invoke-virtual {v13}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, v8, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    move-object v3, p1

    .line 1720
    invoke-static {v0, v9, p1, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->dropDragObjectIntoFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1722
    invoke-virtual {v13, v11}, Lcom/miui/home/launcher/FolderIcon;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return v12

    :cond_4
    return v10
.end method

.method deleteScreen(J)V
    .locals 3

    .line 3228
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Launcher.Workspace"

    .line 3230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already deleted screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3233
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isDeleteableScreen(J)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3236
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 3237
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3239
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;

    sget v2, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    invoke-direct {v1, p1, p2, v2}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3241
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteScreen(J)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 729
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->bindCore(Landroid/view/View;J)V

    .line 730
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    .line 731
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 732
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mPredictStepCount:I

    .line 733
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 734
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Launcher.Workspace"

    const-string v0, "ignore touch event workspace is locked"

    .line 735
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidate()V

    .line 739
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 748
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 750
    :pswitch_0
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch down"

    .line 751
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_4
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 756
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    :cond_5
    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch up or cancel"

    .line 758
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
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

    .line 912
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkScreenVisibility(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 918
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

    const-string v0, " Workspace Items:\n"

    .line 3941
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3942
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3943
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cellLayout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3946
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enterNormalEditingByGesture()V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 923
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 925
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

    .line 1888
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1891
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->fillEmptyCellAuto(II)V

    :cond_0
    return-void
.end method

.method public findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 7

    .line 2214
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    const-wide/16 v1, -0x1

    .line 2215
    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const/4 v3, -0x1

    .line 2216
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/4 v3, 0x0

    .line 2217
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2218
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2219
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanX:I

    .line 2220
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanY:I

    .line 2221
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3, v3, v4, v5}, Lcom/miui/home/launcher/DeviceConfig;->isInvalidateCellPosition(IIII)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 2224
    :cond_0
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, p1, v0, v4, v6}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Launcher.Workspace"

    const-string p2, "Too many apps installed, not adding to home screen"

    .line 2227
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 2231
    :cond_1
    iget-wide v4, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    .line 2232
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2233
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2234
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez p2, :cond_3

    .line 2238
    iget p2, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    .line 2239
    iput-wide v0, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method public findScreenFirstVacantArea(IILcom/miui/home/launcher/CellScreen;)[I
    .locals 0

    .line 3705
    invoke-virtual {p3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3709
    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p1

    return-object p1
.end method

.method findSingleSlot(IIJZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v5, p3

    move v7, p5

    .line 4052
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->findSlot(IIIIJZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 4060
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    .line 4061
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 4066
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p7, :cond_2

    .line 4069
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p3, 0x7f11038d

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    return-object p2

    .line 4074
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    const/4 p3, 0x0

    .line 4075
    aget p3, p1, p3

    iput p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    const/4 p3, 0x1

    .line 4076
    aget p1, p1, p3

    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 4077
    iput p5, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 4078
    iput p6, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const/16 p1, -0x64

    .line 4079
    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 4080
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-object p2
.end method

.method public finishCurrentGesture()V
    .locals 0

    .line 767
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

    .line 2810
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2815
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2816
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    .line 2817
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2818
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    iget v6, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenOrder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2819
    iget v2, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2821
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->reloadScreens(Ljava/util/ArrayList;)V

    .line 2822
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setupCurrentScreen()V

    return-void

    .line 2811
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " screenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " indexScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    .line 2812
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loading = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 3381
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLayout(I)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2688
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2690
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2455
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public getCellScreen(I)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2447
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    .line 2448
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 2449
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

.method public getCurrentAllScreenID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAllScreenIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2700
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2702
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2696
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    return-object v0
.end method

.method public getCurrentRightCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2708
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenId()J
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
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

    .line 387
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

    .line 3871
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 1448
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1

    .line 1450
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isTwoScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1451
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2427
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2429
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2422
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 2423
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultScreenIndex()I
    .locals 2

    .line 2370
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 2371
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

    .line 1963
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1964
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1965
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

    const p1, 0x7f110074

    .line 1964
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

    .line 2018
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

.method public getFirstNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2775
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    .line 2776
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 2777
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2778
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2782
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getFoldDefaultScreenId()I
    .locals 2

    .line 2383
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 2384
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

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1399
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1400
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

    .line 2717
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

    .line 2764
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2765
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2766
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2767
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2771
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getPreviousScreenTransitionType()I
    .locals 1

    .line 3046
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return v0
.end method

.method public getScreenIdByIndex(I)J
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-wide v0

    .line 2440
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-wide v0

    .line 2443
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

    .line 2433
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

    .line 3373
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 3374
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    return-object v0

    .line 3376
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    return-object v0
.end method

.method public getScreenType(I)I
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getScrollZone()I
    .locals 1

    .line 3453
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    return v0
.end method

.method protected getSnapDuration(II)I
    .locals 0

    const/16 p1, 0xf0

    return p1
.end method

.method protected getSnapOverScroll()I
    .locals 3

    .line 3653
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3656
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_1

    .line 3657
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int v0, v0

    return v0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3660
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    return v0

    :cond_2
    return v1
.end method

.method protected getSnapUnitIndex(I)I
    .locals 1

    .line 3645
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3646
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    return p1

    .line 3648
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getSnapUnitIndex(I)I

    move-result p1

    return p1
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 2012
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasOddScreen()Z
    .locals 1

    .line 3977
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 2150
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$OT796x4GF5IlDRSwSJ_yItzxmuc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$OT796x4GF5IlDRSwSJ_yItzxmuc;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public inEditingModeAnimating()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3102
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3103
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3104
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
    .locals 1

    const/4 v0, 0x0

    .line 3286
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(ILcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)V

    return-void
.end method

.method public insertNewScreen(ILcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3293
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    const/4 v1, 0x1

    .line 3297
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-eqz p2, :cond_2

    .line 3300
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3301
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3302
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3304
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3306
    :cond_2
    :goto_0
    invoke-static {v0, v0, p1}, Lcom/miui/home/launcher/ScreenUtils;->insertNewScreen(III)V

    return-void
.end method

.method public isAllItemsCheckedInLastNoEmtpyScreen()Z
    .locals 5

    .line 3457
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 3458
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 3459
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 3462
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3463
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 3464
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3465
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v4

    goto :goto_1

    .line 3466
    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_3

    .line 3467
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

    .line 2712
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2713
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

    .line 2375
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

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 297
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

    .line 3198
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 3201
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3202
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 3203
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result p2

    move v0, v1

    .line 3204
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-eq p1, v0, :cond_1

    .line 3205
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

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
    .locals 2

    .line 1729
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdInCurrentScreen(J)Z
    .locals 0

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p1

    return p1
.end method

.method public isInLastScreenIndex()Z
    .locals 2

    .line 4008
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInNormalEditingMode()Z
    .locals 2

    .line 305
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

.method public isInQuickEditingMode()Z
    .locals 2

    .line 310
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

.method public isIndexInCurrentScreen(I)Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->isInCurrentScreen(I)Z

    move-result p1

    return p1
.end method

.method public isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5

    .line 2257
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2258
    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2260
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    return v2

    .line 2264
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, -0x1

    .line 2265
    iput-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    return v1

    :cond_2
    return v2
.end method

.method public isQuickCallCellLayoutExist()Z
    .locals 1

    .line 2162
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

    .line 2174
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2175
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

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 316
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/Gadget;

    .line 317
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 318
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

.method public isScreenHasValidArea(III)Z
    .locals 0

    .line 1457
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1458
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShowScreenSeekBar()Z
    .locals 1

    .line 3866
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

    .line 1139
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

    .line 301
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

.method public isTwoScreen()Z
    .locals 2

    .line 3479
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method moveToDefaultScreen(Z)V
    .locals 1

    .line 2401
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2403
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    goto :goto_0

    .line 2405
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 2407
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2409
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public needShowLastEmptyScreen()Z
    .locals 1

    .line 1969
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

    .line 787
    instance-of v0, p3, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getChildIndex(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 790
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    .line 3367
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3368
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    :cond_0
    return-void
.end method

.method public onDefaultScreenDelete()V
    .locals 2

    .line 2392
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2394
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2395
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    return-void

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 1

    .line 3960
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 p1, 0x0

    .line 3961
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3962
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3964
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3967
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3968
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 3969
    iget-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_2

    .line 3970
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 3973
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->onScreenOrientationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1787
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 1788
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1789
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isAllDropedSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eq p1, p0, :cond_1

    .line 1791
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1795
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1798
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isNoVacantMode()Z

    move-result p2

    if-eqz p2, :cond_3

    instance-of p2, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-nez p2, :cond_2

    instance-of p1, p1, Lcom/miui/home/launcher/UninstallDropTarget;

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 1799
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_3
    const/4 p1, 0x0

    .line 1802
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1910
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 1913
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1482
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1483
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1484
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1486
    :cond_0
    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1487
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1462
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1463
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1464
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->findDragOverCellScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1466
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1467
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1468
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1469
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1471
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1474
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1475
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1477
    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    :cond_3
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1923
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1897
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1901
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1902
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1905
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1210
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1212
    iget-wide v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1236
    iget v2, v1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 1237
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    .line 1242
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_12

    .line 1244
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/miui/home/launcher/CellLayout;->allowDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 1250
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1251
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1252
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1254
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v6, 0x0

    goto :goto_0

    .line 1255
    :cond_4
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    .line 1256
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1257
    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 1260
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v5

    if-eq v5, v0, :cond_6

    goto/16 :goto_1

    .line 1278
    :cond_6
    iget-object v5, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1279
    invoke-virtual {v2, v1, v5}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1281
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v10, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v10, v10, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 1282
    iget-object v8, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v8, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {v0, v8, v9}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1285
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1287
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 1288
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1289
    instance-of v8, v5, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v8, :cond_8

    .line 1290
    move-object v8, v5

    check-cast v8, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 1291
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1295
    :cond_8
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1297
    invoke-virtual {v9}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v9

    if-nez v9, :cond_9

    instance-of v9, v5, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v9, :cond_9

    move-object v9, v5

    check-cast v9, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 1299
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherWidgetView;->isMiuiWidget()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v10, v10, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 1300
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_9

    .line 1301
    invoke-direct {v0, v8, v9}, Lcom/miui/home/launcher/Workspace;->checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherWidgetView;)V

    .line 1304
    :cond_9
    invoke-direct {v0, v5, v1}, Lcom/miui/home/launcher/Workspace;->updateDragViewAnimateTarget(Landroid/view/View;Lcom/miui/home/launcher/DragObject;)V

    goto :goto_3

    .line 1261
    :cond_a
    :goto_1
    iget v5, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1262
    iget v8, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1263
    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/Workspace;->onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z

    move-result v9

    .line 1264
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v10

    if-eqz v9, :cond_d

    .line 1265
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v11

    instance-of v11, v11, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v11, :cond_d

    .line 1266
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v11

    const-wide/16 v13, -0x6e

    cmp-long v11, v11, v13

    if-eqz v11, :cond_b

    .line 1267
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v11

    const-wide/16 v15, -0x6f

    cmp-long v11, v11, v15

    if-nez v11, :cond_d

    .line 1268
    :cond_b
    iget-object v11, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v12

    check-cast v12, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v15, 0x3

    const/16 v16, -0x1

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1271
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v17

    cmp-long v4, v17, v13

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x2

    :goto_2
    const/16 v17, 0x0

    .line 1272
    iget v4, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v10, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move v13, v15

    move/from16 v14, v16

    move v15, v3

    move/from16 v16, v7

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move/from16 v21, v10

    .line 1268
    invoke-static/range {v11 .. v21}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;IIIIIIIII)V

    :cond_d
    move v7, v9

    :goto_3
    if-nez v7, :cond_e

    .line 1306
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->hasToastedNoSpace()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f110375

    invoke-static {v2, v4, v3}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    .line 1308
    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1309
    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_f
    :goto_4
    if-eqz v7, :cond_10

    .line 1311
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_10

    .line 1312
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_10
    if-eqz v7, :cond_11

    .line 1315
    invoke-direct {v0, v6}, Lcom/miui/home/launcher/Workspace;->showToastOnWidgetAddedAndCountLimit(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_11
    return v7

    :cond_12
    :goto_5
    const v4, 0x7f110375

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1246
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result v1

    if-eqz v1, :cond_13

    const v4, 0x7f110377

    :cond_13
    const/4 v1, 0x0

    .line 1245
    invoke-static {v2, v4, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    return v1
.end method

.method public onDropAnimationFinish()V
    .locals 1

    .line 1944
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 1945
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->cancelLongPress()V

    .line 1948
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1949
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1496
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1497
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 1498
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 1499
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 1500
    instance-of v3, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1501
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v5

    if-eq v5, p1, :cond_0

    instance-of v5, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v5, :cond_0

    .line 1503
    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 1505
    :cond_0
    instance-of v4, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1506
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 1507
    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ShortcutIcon;

    .line 1508
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->resetCheckBox()V

    .line 1509
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1510
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    :cond_1
    const/4 v3, -0x1

    .line 1512
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1514
    new-instance v2, Lcom/miui/home/launcher/Workspace$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/Workspace$6;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 1

    .line 1526
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onDropCompleted()V

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1220
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1225
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1226
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 1228
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, -0x1

    .line 1229
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 1230
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method onEditingModeEnterEnd()V
    .locals 2

    .line 3009
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 3010
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 3013
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3014
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3016
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterEnd()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onEditingModeExitEnd()V
    .locals 3

    .line 3028
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 3029
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    .line 3030
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    const/4 v0, 0x0

    move v1, v0

    .line 3032
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3033
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3035
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitEnd()V

    .line 3036
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3039
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 3040
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3041
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public onEnterScrollArea(IIILandroid/view/MotionEvent;)Z
    .locals 3

    .line 3595
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3596
    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/Workspace;->startDragScrollAnimator(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3598
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3599
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3601
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->onEnterScrollArea(IIILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onExitScrollArea()Z
    .locals 1

    const/4 v0, -0x1

    .line 3636
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3637
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3638
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3639
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    .line 3640
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onExitScrollArea()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 657
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onFinishInflate()V

    .line 658
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010033

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 659
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010036

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 660
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 801
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

    .line 802
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_2

    .line 817
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 821
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v3, "android.wallpaper.tap"

    .line 823
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v5, v5, v1

    .line 824
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v6, v6, v2

    .line 825
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 822
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V

    .line 828
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    if-eqz v0, :cond_4

    .line 830
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz p1, :cond_3

    .line 831
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 832
    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 834
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return v2

    .line 846
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
    .locals 2

    .line 2913
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/DragableScreenView;->onLayout(ZIIII)V

    .line 2914
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2915
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 2916
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 2918
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    .line 2919
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_3

    .line 2920
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 2921
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getLocationInWindow([I)V

    .line 2922
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    iget-object p5, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    aget v0, p5, p3

    const/4 v1, 0x1

    if-ne p4, v0, :cond_1

    aget p2, p2, v1

    aget p4, p5, v1

    if-eq p2, p4, :cond_2

    :cond_1
    move p3, v1

    :cond_2
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Launcher;->setIsLauncherLayoutInMultiWindowMode(Z)V

    :cond_3
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 2964
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    const/4 v0, 0x0

    .line 2966
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2967
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2969
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellScreen;->onMultiWindowModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOverlayAnimPause()V
    .locals 1

    .line 4028
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onPause()V

    return-void
.end method

.method public onOverlayAnimResume()V
    .locals 1

    .line 4024
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onResume()V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 4

    const/4 v0, 0x0

    .line 3742
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3743
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v1, v2

    .line 3744
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragLayer;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 3745
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    neg-float v3, v3

    .line 3748
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3749
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3750
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3751
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    cmpl-float p1, v2, v0

    if-nez p1, :cond_1

    .line 3753
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 3755
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 2884
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 2885
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onPause()V

    .line 2886
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPinching(F)Z
    .locals 5

    .line 953
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 956
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 960
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 962
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    const v2, 0x3f8ccccd    # 1.1f

    if-eqz v0, :cond_6

    .line 963
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 964
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    cmpg-float v3, p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_2

    .line 966
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 967
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_5

    .line 968
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeHotseatsToEditingEntryView()V

    goto :goto_0

    :cond_2
    cmpl-float v3, p1, v4

    if-ltz v3, :cond_4

    .line 971
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 973
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->startSecurityHide()V

    return v1

    :cond_3
    move p1, v4

    goto :goto_0

    .line 978
    :cond_4
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 979
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_5

    .line 980
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeEditingEntryViewToHotseats()V

    .line 983
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    goto :goto_1

    .line 984
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_7

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 986
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 987
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
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1008
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 1009
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 1010
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    .line 1011
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 1013
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->resetCellScreenScale(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method onQuickModeExitEnd()V
    .locals 1

    .line 3022
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3023
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 671
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 684
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 685
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    goto :goto_0

    .line 687
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    :goto_0
    if-eq v0, v2, :cond_3

    .line 690
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 2891
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onCreate()V

    const/4 v0, 0x0

    .line 2892
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 2893
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 664
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 665
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

.method public onScreenSizeChanged()V
    .locals 2

    .line 2945
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2946
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 2947
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditScreenScaleRatio:F

    .line 2948
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 v0, 0x0

    .line 2949
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2950
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2952
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onScreenSizeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2955
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_3

    .line 2956
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->onScreenSizeChanged()V

    .line 2958
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2959
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    :cond_4
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 887
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->onScrollChanged(IIII)V

    const/4 p1, 0x0

    .line 888
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onScrollXAnimationEnd()V
    .locals 1

    .line 568
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onScrollXAnimationEnd()V

    const/4 v0, 0x0

    .line 569
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 570
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->notifyScrollToNextScreenAnimEnd()V

    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1055
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1918
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1067
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1061
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2870
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3911
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3912
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVerticalFling(IFF)V
    .locals 1

    .line 1089
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    .line 1090
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

    .line 1092
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomSearchEnable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1093
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomGlobalSearchEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1094
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1095
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1096
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    .line 1097
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    const-string p2, "home_up"

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBarContainer;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1079
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1080
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

    .line 1827
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0806d2

    goto :goto_0

    :cond_0
    const v1, 0x7f0806d1

    .line 1828
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    if-eqz v0, :cond_1

    const v0, 0x7f0806ce

    goto :goto_1

    :cond_1
    const v0, 0x7f0806cd

    .line 1829
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    const/4 v0, 0x0

    .line 1830
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1831
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 1832
    instance-of v2, v1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v2, :cond_2

    .line 1833
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

    .line 796
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return-void
.end method

.method public removeAllEmptyFoldersInCurrentScreen()V
    .locals 5

    .line 3713
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3714
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3715
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v3, :cond_0

    .line 3716
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderIcon;

    const/4 v4, 0x1

    .line 3717
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    .line 3718
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderIcon;->finishPendingAll()V

    .line 3719
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 3

    .line 1855
    iget-wide v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1857
    iget-wide v1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1858
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    if-ne v0, v1, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/view/View;
    .locals 3

    .line 1879
    iget-wide v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1881
    iget-wide v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeScreen(I)V
    .locals 2

    .line 3215
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->removeScreen(I)V

    .line 3216
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 3217
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 3218
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    .line 3220
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

    .line 3221
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3222
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 3224
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V
    .locals 1

    .line 4048
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeShortcuts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1844
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1845
    iget-wide v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1847
    iget-wide v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1848
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1849
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeHotSeatsRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 3447
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->removeViewsInLayout(II)V

    .line 3448
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 4

    .line 1865
    iget-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1866
    iget-wide v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1868
    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1869
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_0

    .line 1870
    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onDestroy()V

    :cond_0
    if-eqz v1, :cond_1

    .line 1873
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1874
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    :cond_1
    return-void
.end method

.method reorderScreens()V
    .locals 6

    const-string v0, "Launcher.Workspace"

    .line 2854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens before reorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2857
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2859
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

    .line 2862
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
    .locals 4

    .line 851
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 852
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->scrollTo(II)V

    const-string p2, "Launcher_Scrollto"

    const-string v0, "[(rawX,rawY)|scrollX]  "

    .line 853
    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Launcher_Scrollto"

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidateAllMamlDrawables()V

    .line 858
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 859
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAssistPointResource(I)V
    .locals 2

    .line 3886
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    if-eq v0, p1, :cond_0

    .line 3887
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3888
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3889
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3890
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getAssistantPoint()Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3891
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

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 4

    .line 327
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 328
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 329
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setCurrentScreenInner(I)V

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    if-nez p1, :cond_0

    .line 331
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 332
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    :cond_0
    const/4 p1, 0x0

    .line 334
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    return-void
.end method

.method public setDefaultScreenId(J)V
    .locals 0

    .line 2388
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 1782
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 9

    .line 3123
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    .line 3124
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 3125
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

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

    if-nez p2, :cond_9

    .line 3129
    invoke-direct {p0, v4, v0}, Lcom/miui/home/launcher/Workspace;->updateScreenLayoutMode(ZZ)V

    .line 3130
    invoke-direct {p0, v1, v4}, Lcom/miui/home/launcher/Workspace;->setupEditingScreen(ZZ)V

    if-nez v0, :cond_c

    .line 3132
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_3

    .line 3133
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-array v6, v2, [F

    if-eqz v1, :cond_2

    .line 3134
    iget v7, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v7, v7

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    aput v7, v6, v3

    .line 3133
    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 3135
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x172

    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3136
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3137
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    :cond_3
    if-eqz v1, :cond_4

    const/4 p2, 0x4

    goto :goto_3

    :cond_4
    move p2, v3

    .line 3139
    :goto_3
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 3140
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz p2, :cond_6

    .line 3141
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ScreenView$SlideBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3143
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_8

    .line 3144
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_5
    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    :goto_6
    if-eqz v4, :cond_c

    .line 3149
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setTransitionEffectEditingMode()V

    goto :goto_8

    :cond_9
    const/16 p2, 0x9

    if-ne p1, p2, :cond_a

    .line 3154
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_8

    .line 3156
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 3157
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p2

    :goto_7
    if-ltz p2, :cond_c

    .line 3159
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 3161
    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    :cond_b
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_c
    :goto_8
    move p2, v3

    move v4, p2

    .line 3168
    :goto_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ge p2, v6, :cond_11

    .line 3169
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 3171
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v7

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 3172
    iget-object v7, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v7, v6, p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V

    if-nez v0, :cond_d

    .line 3173
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->shouldShowEditModeAnim(I)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v3

    goto :goto_a

    :cond_d
    const/high16 v7, -0x80000000

    :goto_a
    invoke-virtual {v6, v1, v7, p3}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz v4, :cond_e

    goto :goto_b

    :cond_e
    move v4, v3

    goto :goto_c

    :cond_f
    :goto_b
    move v4, v2

    :cond_10
    :goto_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_11
    if-nez v4, :cond_13

    .line 3177
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isRecentsContainerShowing()Z

    move-result p2

    if-nez p2, :cond_13

    .line 3178
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->isShouldBlur(I)Z

    move-result p1

    if-eqz p1, :cond_12

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_12
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {v5, p1, v3}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_13
    return-void
.end method

.method public setEditingStateChangeFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 3112
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setFoldDefaultScreenId(J)V
    .locals 0

    .line 2379
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mFoldDefaultScreenId:J

    return-void
.end method

.method public setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3785
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1900(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    .line 3787
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3788
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setIndicatorMarginBottomInEditThumbnailMode(Z)V
    .locals 4

    .line 937
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07012f

    invoke-static {p1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1776
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1777
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 1778
    new-instance p1, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 3736
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    const/4 p1, 0x0

    .line 3738
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public setScreenScrollRangeByCurrentScreenType()V
    .locals 6

    .line 3066
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3068
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v0

    .line 3069
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v1

    .line 3070
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3071
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRange(II)V

    .line 3073
    :cond_1
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->correctCurrentScreen(Z)V

    .line 3074
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    :goto_0
    if-ltz v3, :cond_5

    .line 3076
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    if-eqz v4, :cond_4

    if-lt v3, v0, :cond_3

    if-le v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x4

    .line 3078
    :goto_2
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 3839
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setState(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 2

    .line 3848
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    .line 3852
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    const/4 p1, 0x2

    .line 3854
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3855
    iget-wide v0, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3856
    new-instance p3, Lcom/miui/home/launcher/Workspace$23;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$23;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3862
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

    .line 2866
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3389
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3390
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3392
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 3393
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3394
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    if-eqz p2, :cond_2

    .line 3397
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

    .line 3049
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    const/4 v0, 0x0

    .line 3051
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 3052
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_0
    return-void
.end method

.method public showAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 2143
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$NaXgCJQAt608tQU2sKiBX_qDJLo;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$NaXgCJQAt608tQU2sKiBX_qDJLo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showQuickCallCellLayoutTitle()V
    .locals 1

    .line 2136
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$AVsPdZqnfgbztperwQhBTRrTUiM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$AVsPdZqnfgbztperwQhBTRrTUiM;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showSeekBarWithoutAnim(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3439
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 3441
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

    .line 3689
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 3690
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->snapByVelocity(II)V

    return-void
.end method

.method protected snapToScreen(IIZ)I
    .locals 4

    .line 1164
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1166
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    .line 1168
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1169
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1170
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1171
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1173
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    move p1, v0

    .line 1176
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v0, :cond_2

    .line 1177
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 1178
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    .line 1179
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDesktopSwipeLeftOrRight()V

    .line 1182
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(IIZ)I

    move-result p1

    return p1
.end method

.method startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 5

    .line 1187
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1189
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1193
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1195
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    .line 1196
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1199
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1200
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 1201
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 1204
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1206
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    return-void
.end method

.method public startDragScrollAnimator(ILandroid/view/MotionEvent;)Z
    .locals 9

    .line 3538
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3541
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    .line 3548
    :pswitch_0
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    goto :goto_0

    .line 3545
    :pswitch_1
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int p1, p1

    .line 3552
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getSnapBound()[I

    move-result-object v2

    .line 3553
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    aget v4, v2, v0

    if-ge v3, v4, :cond_2

    .line 3554
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->canDragToPa()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3555
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    move p1, v0

    .line 3561
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result p2

    add-int/2addr p2, p1

    aget v2, v2, v1

    if-le p2, v2, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, p1

    :goto_1
    if-eqz v5, :cond_4

    .line 3565
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    .line 3566
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v4

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/Workspace;->startScroll(IIIFF)V

    .line 3567
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3568
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3569
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    return v1

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startFoldEditDragingAnim()V
    .locals 1

    .line 4018
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    if-eqz v0, :cond_0

    .line 4019
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldEditDragingAnim()V

    :cond_0
    return-void
.end method

.method public startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
    .locals 1

    .line 4012
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    if-eqz v0, :cond_0

    .line 4013
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V

    :cond_0
    return-void
.end method

.method public startLoading()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 3360
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 3361
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 3362
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    .line 3363
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAssistantPoints(Z)V
    .locals 2

    .line 3897
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_2

    .line 3898
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3899
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 3900
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3901
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->removeAssistantPoint()V

    goto :goto_0

    .line 3902
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

    .line 3903
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->addAssistantPoint()V

    .line 3906
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 2

    .line 3350
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 3353
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iget-boolean v0, v0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    if-eqz v0, :cond_1

    return-void

    .line 3356
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    return-void
.end method

.method public updateCurrentIndex(I)V
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenInner(I)V

    .line 374
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelScroll()V

    .line 375
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->scrollToScreen(I)V

    return-void
.end method

.method public updateMamlDownloadVisible(I)V
    .locals 2

    .line 2897
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2900
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2901
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2903
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellLayout;->updateMamlDownloadVisible(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateNormalEditProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 1026
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v2

    sub-float v2, v0, v2

    div-float/2addr v1, v2

    const v2, 0x3f99999a    # 1.2f

    .line 1027
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->afterFriction(FF)F

    move-result v1

    .line 1028
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    sub-float p1, v0, p1

    mul-float/2addr p1, v1

    sub-float p1, v0, p1

    .line 1029
    :goto_0
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Workspace$ZrwmYIaSnr3WcwkL9syWS0CB1Rs;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$ZrwmYIaSnr3WcwkL9syWS0CB1Rs;-><init>(F)V

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Workspace;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    .line 1031
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 1032
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1033
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public updateWorkspacePaddingTop()V
    .locals 1

    .line 2940
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method
