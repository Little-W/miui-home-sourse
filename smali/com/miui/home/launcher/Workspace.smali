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

.field protected mFoldEditModeGap:F

.field private mFoldEditModeMarginLeft:F

.field protected mFoldEditModeScaleRatio:F

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

.field private mIsSnapBySecondaryTouch:Z

.field private mIsSnapCausedByDragScroll:Z

.field private mIsSnaping:Z

.field private mIsSupportEditMode:Z

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

    .line 2200
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    .line 2201
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_2250:[I

    .line 2202
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_1500:[I

    .line 2203
    sget-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    array-length v0, v0

    sput v0, Lcom/miui/home/launcher/Workspace;->TOTAL_PREDICT_COUNT:I

    .line 2480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    .line 3626
    new-instance v0, Lcom/miui/home/launcher/Workspace$20;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Workspace$20;-><init>(Ljava/lang/String;)V

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

    .line 232
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 158
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    const-wide/16 v0, -0x1

    .line 160
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const/4 p3, 0x2

    .line 167
    new-array v2, p3, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 171
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    const/4 v0, 0x7

    .line 172
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 173
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 174
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 193
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 194
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    const/4 v1, -0x1

    .line 195
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 199
    new-instance v2, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v2, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 205
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsSupportEditMode:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 213
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 215
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    .line 611
    new-instance v2, Lcom/miui/home/launcher/Workspace$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    .line 968
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1153
    new-instance v2, Lcom/miui/home/launcher/Workspace$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$4;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    .line 1413
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    .line 1974
    new-instance v2, Lcom/miui/home/launcher/Workspace$8;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    .line 1994
    new-instance v2, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mEditModeItemClickedHandler:Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    .line 2037
    new-instance v2, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    .line 2206
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 2435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    .line 2436
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    .line 2600
    new-instance v2, Lcom/miui/home/launcher/Workspace$11;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$11;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    .line 2622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    .line 2623
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2624
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2625
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2626
    new-instance v2, Lcom/miui/home/launcher/Workspace$12;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$12;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    .line 2646
    new-instance v2, Lcom/miui/home/launcher/Workspace$13;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$13;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    .line 2897
    new-instance v2, Lcom/miui/home/launcher/Workspace$17;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Workspace$17;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    .line 2930
    new-array v2, p3, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    .line 2931
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    .line 2949
    new-instance p3, Lcom/miui/home/launcher/Workspace$18;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$18;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    .line 3137
    new-instance p3, Landroid/animation/ObjectAnimator;

    invoke-direct {p3}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    .line 3304
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 3305
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    .line 3640
    new-instance p3, Lmiuix/animation/physics/SpringAnimation;

    sget-object v2, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    invoke-direct {p3, p0, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 3654
    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    .line 3813
    new-instance p3, Lcom/miui/home/launcher/Workspace$21;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$21;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    .line 3833
    new-instance p3, Lcom/miui/home/launcher/Workspace$22;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$22;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const p3, 0x7f0806d1

    .line 3895
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3927
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 246
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const v3, 0x7f11024c

    .line 247
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x7f0705f4

    .line 249
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-string v5, "bottom_point"

    .line 250
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 251
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x51

    .line 252
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v1, 0x7f0806d5

    .line 254
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    .line 255
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    .line 256
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 257
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setSeekBarTranslation()V

    .line 258
    iput-boolean v6, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_0
    const-string p3, "top_point"

    .line 259
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x2

    .line 260
    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p3, 0x31

    .line 261
    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const p3, 0x7f070618

    .line 262
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 263
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 264
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_1
    const-string p3, "slider"

    .line 265
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 266
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p3, 0x50

    .line 267
    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 268
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput p3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 269
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 270
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 272
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setAnimationCacheEnabled(Z)V

    const/16 p3, 0x2a30

    .line 273
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->setMaximumSnapVelocity(I)V

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isClipTransitionDevice()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 275
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->setClip(Z)V

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070686

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    .line 280
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070119

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    .line 281
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v1, v2}, Lcom/miui/home/launcher/OnLongClickAgent;->setTimeOut(J)V

    .line 282
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initScreenSeekBarEditAnimation()V

    .line 283
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->setImportantForAccessibility(I)V

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 285
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070187

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 286
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;

    invoke-direct {p3, p0, v0}, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    .line 287
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 288
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->setScrollWholeScreen(Z)V

    .line 290
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

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setIsSupportEditMode(Z)V

    .line 292
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initFoldAnim()V

    .line 293
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

    .line 2656
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

    .line 2539
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 2541
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 2543
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    .line 2544
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2545
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    .line 2546
    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-void
.end method

.method private canDragToPa()Z
    .locals 4

    .line 641
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 642
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 643
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 644
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 645
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isAssistantCTAAgree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 646
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 647
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object v0

    .line 652
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 653
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 654
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getDragSource()Lcom/miui/home/launcher/DragSource;

    .line 655
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

    .line 658
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDraggingFromAssistant()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 659
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

    .line 1401
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1402
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 1405
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Workspace$Xh5TaqgmC9CbVAzlYiAOPGE09Qo;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$Xh5TaqgmC9CbVAzlYiAOPGE09Qo;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z
    .locals 4

    .line 2267
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2268
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

    .line 2269
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2270
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 2271
    monitor-exit v0

    return p1

    .line 2274
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

    .line 911
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 915
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-nez v0, :cond_1

    return v1

    .line 919
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    .line 920
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 922
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

    .line 2517
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2518
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2519
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2520
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2522
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    move v1, v0

    .line 2523
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2524
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 2526
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

    .line 2531
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 2533
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

    .line 2008
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInLastScreenIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    .line 2010
    new-instance v0, Lcom/miui/home/launcher/Workspace$9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$9;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->addScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V

    goto :goto_0

    .line 2018
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

    .line 1064
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1065
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1067
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

    .line 620
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 621
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    .line 622
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_3

    if-eqz v1, :cond_3

    .line 624
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingLeft()V

    .line 625
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-nez v2, :cond_3

    .line 626
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->canDragToPa()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Lcom/miui/home/launcher/LauncherCallbacks;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    .line 628
    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 630
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnough()V

    .line 634
    :cond_3
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 636
    :cond_5
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingRight()V

    :cond_6
    return-void
.end method

.method private findDragOverCellScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;
    .locals 3

    .line 1442
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenMeasureWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1443
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

    .line 1444
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 1447
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1
.end method

.method private findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 6

    .line 2091
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

    .line 2092
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2097
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->needAddToQuickCallCellLayout(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2098
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v3

    .line 2099
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFirstNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 2102
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    .line 2104
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 2105
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2113
    :goto_1
    invoke-virtual {v3, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastEmptyCell(II)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2115
    aget p3, p1, v2

    iput p3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2116
    aget p1, p1, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2117
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

    .line 2120
    :goto_2
    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/Workspace$CellInfo;->nextScreen(I)V

    .line 2121
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    .line 2122
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

    .line 2123
    iput v2, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2126
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_6

    return-object p2

    :cond_6
    if-eqz v0, :cond_7

    move v3, v2

    goto :goto_4

    .line 2130
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_4
    if-eqz v0, :cond_8

    .line 2131
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

    .line 2134
    iput v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    .line 2135
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 2137
    :cond_a
    invoke-virtual {v0, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object v5

    if-eqz v5, :cond_b

    .line 2139
    aget p1, v5, v2

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2140
    aget p1, v5, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2141
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

    .line 2108
    new-instance p4, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",screenCount:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
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

    .line 2668
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 2671
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getFirstVacantIconArea()Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v0

    .line 2672
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2673
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2674
    iget-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 2675
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2676
    new-instance p1, Lcom/miui/home/launcher/Workspace$15;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/home/launcher/Workspace$15;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$CellInfo;Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 2689
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

    .line 2150
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2152
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

    .line 4068
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method private generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 3294
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/CellScreen;->createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 3295
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/CellScreen;->createCellLayout(I)V

    .line 3296
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    .line 3297
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p3

    .line 3298
    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    const/16 p1, -0x64

    .line 3299
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setContainerId(I)V

    .line 3300
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method private getChildScreenWidthScale()F
    .locals 1

    .line 1452
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getDampingScale(F)F
    .locals 2

    .line 1020
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

    .line 3611
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3612
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

    .line 1463
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1464
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1

    .line 1466
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1
.end method

.method private getFirstVacantIconArea()Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 10

    .line 2482
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 2483
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    .line 2484
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    .line 2485
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x1

    .line 2489
    invoke-virtual {v2, v3, v3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v2

    const/4 v4, 0x0

    move v5, v1

    move v6, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 2492
    aget v7, v2, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    aget v7, v2, v3

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 2510
    :cond_1
    aget v1, v2, v4

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2511
    aget v1, v2, v3

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2512
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v6, v3

    add-int v2, v1, v6

    .line 2494
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2495
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v5, :cond_3

    .line 2497
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 2498
    sget-object v5, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2500
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

    .line 2502
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2504
    :goto_2
    monitor-exit v5

    goto :goto_4

    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2507
    :cond_3
    :goto_4
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2508
    invoke-virtual {v5, v3, v3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v5

    move-object v9, v5

    move v5, v2

    move-object v2, v9

    goto :goto_0
.end method

.method private getLastDragScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 2

    .line 1459
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

    .line 3081
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

    .line 559
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
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

    .line 2188
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 2189
    instance-of v1, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-eqz v1, :cond_0

    .line 2190
    check-cast v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenScaleRatio()F
    .locals 1

    .line 3747
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    return v0
.end method

.method private initFoldAnim()V
    .locals 2

    .line 304
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    .line 306
    new-instance v0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    .line 307
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeScaleRatio:F

    .line 308
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeGap:F

    return-void
.end method

.method private initScreenSeekBarEditAnimation()V
    .locals 2

    .line 3140
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 3141
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 1950
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

    .line 3548
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

    .line 3549
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

    .line 4015
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4016
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

    .line 514
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

    .line 3993
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

    .line 2023
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2024
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

    .line 2028
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2029
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

    .line 1094
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

    .line 2180
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

    .line 1406
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 1407
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/DragLayer;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    const/4 p1, 0x0

    .line 1408
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$hideAddContactButtonInQuickCallCellLayout$6(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2173
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->hideAddContactButton()V

    const/4 p0, 0x1

    .line 2174
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$insertNewScreenIfNeed$3(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1953
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1954
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1955
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->containsOnlyEmptyFolders(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1956
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

    .line 1643
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1644
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1103ff

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

    .line 2166
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showAddContactButton()V

    const/4 p0, 0x1

    .line 2167
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showQuickCallCellLayoutTitle$4(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 2159
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showTitle()V

    const/4 p0, 0x1

    .line 2160
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateNormalEditProgress$0(FLcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 1049
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->scaleCellLayoutToNormalEditMode(F)V

    return-void
.end method

.method private loadIndicatorMarginBottom()V
    .locals 2

    .line 2997
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    .line 2998
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    .line 2999
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    .line 3000
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    .line 3001
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3003
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

    .line 2078
    instance-of v0, p1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2079
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2080
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

    .line 592
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

    .line 593
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

    .line 1559
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    .line 1560
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    .line 1561
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

    .line 1602
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/miui/home/launcher/CellScreen;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1604
    aget v9, v4, v12

    iput v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1605
    aget v9, v4, v13

    iput v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1606
    iget v9, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v9, v11, :cond_5

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    .line 1681
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

    .line 1658
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1659
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1660
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1652
    :pswitch_1
    iput-wide v6, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1653
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1654
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v13, v5}, Lcom/miui/home/launcher/Launcher;->addMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    goto/16 :goto_2

    .line 1670
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v9

    iput-wide v9, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1671
    move-object v1, v3

    check-cast v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    iget v4, v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    if-ne v4, v8, :cond_1

    .line 1673
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_2

    .line 1674
    :cond_1
    iget v1, v1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 1676
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_2

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1664
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1665
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1666
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1614
    :pswitch_4
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 1615
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    .line 1616
    new-instance v8, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v9

    invoke-direct {v8, v9, v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 1617
    iget-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v9, v8, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result v1

    .line 1618
    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 1619
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1620
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v4, :cond_3

    .line 1621
    iget-object v14, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 1624
    :goto_0
    iput-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_2

    .line 1640
    :pswitch_5
    iput-wide v6, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1641
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1642
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    new-instance v5, Lcom/miui/home/launcher/-$$Lambda$Workspace$HliEbCUcKxj7mEDvNDKas9u3cKA;

    invoke-direct {v5, v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$HliEbCUcKxj7mEDvNDKas9u3cKA;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v1, v4, v13, v5}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    .line 1629
    :pswitch_6
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v8, v3

    check-cast v8, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v4, v8, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;Lcom/miui/home/launcher/CellScreen;)I

    move-result v1

    .line 1630
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 1631
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, v4, :cond_4

    .line 1632
    iget-object v14, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 1635
    :goto_1
    iput-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1608
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v5, v1}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1609
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v5, v3

    check-cast v5, Lcom/miui/home/launcher/FolderInfo;

    aget v8, v4, v12

    aget v4, v4, v13

    invoke-virtual {v1, v5, v8, v4}, Lcom/miui/home/launcher/Launcher;->addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    move-object v14, v1

    .line 1683
    :goto_2
    iget v1, v3, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v1, v11, :cond_f

    .line 1684
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAddWidget()V

    goto/16 :goto_7

    :cond_6
    move v13, v12

    const/4 v14, 0x0

    goto/16 :goto_7

    .line 1566
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

    .line 1568
    move-object v10, v3

    check-cast v10, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1570
    invoke-virtual {v10}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1568
    invoke-static {v9, v10}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    instance-of v9, v9, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v9, :cond_9

    .line 1573
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    .line 1574
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    instance-of v9, v9, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v9, :cond_a

    .line 1575
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1577
    :cond_a
    :goto_4
    iget-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v4

    .line 1578
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1579
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1580
    iget v1, v2, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-ne v1, v8, :cond_d

    .line 1581
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1582
    invoke-virtual {v1, v2, v4}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1585
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->clearDraggingState()V

    .line 1586
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

    .line 1598
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_f

    .line 1599
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    :cond_f
    :goto_7
    if-eqz v14, :cond_11

    .line 1689
    invoke-virtual {v14, v12}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1690
    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_10

    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1691
    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1692
    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1694
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 1695
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v3

    if-eqz v2, :cond_11

    .line 1696
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_11

    if-eqz v3, :cond_11

    iget v4, v3, Lcom/miui/home/launcher/DragObject;->dragAction:I

    if-eq v4, v11, :cond_11

    iget v3, v3, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eqz v3, :cond_11

    .line 1699
    invoke-virtual {v1, v14}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1700
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v2, :cond_11

    .line 1701
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

    .line 663
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 670
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private preInvalidate()V
    .locals 2

    .line 733
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 734
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 736
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 738
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private preInvalidateAllMamlDrawables()V
    .locals 8

    .line 883
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

    .line 886
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    move v1, v3

    .line 887
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 888
    aget v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 889
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->isVisibleForMaml()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    .line 890
    :goto_2
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 891
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 892
    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v7, :cond_1

    .line 893
    check-cast v6, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 894
    invoke-static {v6}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 895
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 899
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

    .line 2859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->removeScreensInLayout(II)V

    .line 2864
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 2865
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz p1, :cond_0

    .line 2866
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    .line 2867
    :goto_1
    invoke-direct {p0, v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    .line 2868
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2871
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 2872
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setEditModeIfNeeded()V

    return-void
.end method

.method private resetCellScreenScale(F)V
    .locals 4

    .line 1039
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 1040
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$q-9VB7eHFqjDmt6ItcKvkIqq8Hw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$q-9VB7eHFqjDmt6ItcKvkIqq8Hw;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1041
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method private setClip(Z)V
    .locals 0

    .line 3008
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipChildren(Z)V

    .line 3009
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipToPadding(Z)V

    return-void
.end method

.method private setEditModeIfNeeded()V
    .locals 3

    .line 3118
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_0
    return-void
.end method

.method private setIsSnaping(Z)V
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 601
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    return-void

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 606
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 607
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->onSnapStopped()V

    :cond_2
    return-void
.end method

.method private setSeekBarTranslation()V
    .locals 3

    .line 297
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 299
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3794
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1900(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    const/4 v0, 0x0

    .line 3796
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3798
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3801
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3802
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setupCurrentScreen()V
    .locals 4

    .line 2849
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenId()J

    move-result-wide v0

    .line 2850
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2851
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2852
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    .line 2854
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2855
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 1

    const/4 p2, 0x1

    .line 3106
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3108
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_0

    .line 3110
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 3111
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3112
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 3114
    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    return-void
.end method

.method private shouldResetHotseats()Z
    .locals 2

    .line 553
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

    .line 554
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

    .line 555
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

    .line 3205
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3206
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

    .line 3208
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p1

    return p1
.end method

.method private showToastOnWidgetAddedAndCountLimit(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 1362
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v1, :cond_1

    return-void

    .line 1365
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1368
    :cond_2
    check-cast p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 1372
    iget-boolean v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1373
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1374
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1378
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1381
    :cond_3
    iput-boolean v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    const-string v0, ""

    .line 1382
    iput-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    return-void

    .line 1388
    :cond_4
    iget-boolean v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1389
    iget-object v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1394
    iput-boolean v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    const-string v0, ""

    .line 1395
    iput-object v0, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method private startScrollFailedAnimator()V
    .locals 3

    .line 3643
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3646
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    new-instance v1, Lmiuix/animation/physics/SpringForce;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    const v2, 0x3e99999a    # 0.3f

    .line 3647
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    const v2, 0x3e6b851f    # 0.23f

    .line 3648
    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    .line 3646
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;

    .line 3649
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 3650
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v1, :cond_1

    const/high16 v1, 0x44fa0000    # 2000.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3b060000    # -2000.0f

    .line 3649
    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 3651
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void
.end method

.method private transDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1437
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

    .line 1347
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1348
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1350
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEditModeMarginLeft()V
    .locals 3

    .line 4119
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSupportEditMode:Z

    if-nez v0, :cond_0

    return-void

    .line 4120
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 4121
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeScaleRatio:F

    mul-float/2addr v1, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 4122
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeGap:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeMarginLeft:F

    return-void
.end method

.method private updateHotseatPosition()V
    .locals 6

    .line 529
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->shouldResetHotseats()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexByPoint(II)I

    move-result v0

    .line 531
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->getNextScreenIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 535
    iget v4, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    .line 536
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/hotseats/HotSeats;->setAlpha(F)V

    .line 537
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/hotseats/HotSeats;->setTranslationY(F)V

    .line 538
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 539
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/SearchBar;->setTranslationY(F)V

    if-eqz v0, :cond_1

    .line 541
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 542
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private updateScreenLayoutMode(ZZ)V
    .locals 1

    .line 3213
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 3214
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

    .line 3449
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3450
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

    .line 3451
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    goto :goto_0

    .line 3453
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWallpaperOffset()Z
    .locals 3

    .line 500
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastScreenEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 504
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

    .line 506
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

    .line 518
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 520
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

    .line 521
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    move p1, v3

    goto :goto_1

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 521
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 523
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

    .line 3965
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3966
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3967
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

    .line 1758
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

    .line 1762
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1766
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 1771
    :cond_2
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x67

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    return v1

    .line 1775
    :cond_3
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    return v1

    .line 1779
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

    .line 1785
    :cond_5
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    return v1

    .line 1790
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

    .line 1794
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

    .line 717
    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 719
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/4 p3, 0x0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 722
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 724
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 727
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_2
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 11

    move-object v9, p0

    move-object v10, p1

    .line 434
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

    .line 435
    instance-of v0, v10, Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_0

    instance-of v0, v10, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    iput-object v10, v9, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIILjava/lang/Long;Z)V
    .locals 10

    move-object v9, p1

    .line 441
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

    .line 442
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

    .line 443
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

    .line 459
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 0

    .line 475
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p4

    if-gez p4, :cond_0

    if-gez p4, :cond_0

    const-string p1, "Launcher.Workspace"

    const-string p2, "The screen must be >= 0; skipping child"

    .line 478
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_0
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p5

    if-eqz p8, :cond_1

    const/4 p6, 0x0

    goto :goto_0

    :cond_1
    const/4 p6, -0x1

    .line 484
    :goto_0
    new-instance p7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p5, p1, p6, p7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 485
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p5

    cmp-long p2, p2, p5

    if-nez p2, :cond_3

    .line 486
    instance-of p2, p1, Landroid/appwidget/AppWidgetHostView;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz p2, :cond_3

    .line 487
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 490
    :cond_3
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method public addInScreen(Landroid/view/View;JIIIIZZZ)V
    .locals 7

    .line 495
    invoke-virtual/range {p0 .. p8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    move-object v0, p0

    .line 496
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

    .line 4056
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollToNextScreenAnimListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 3436
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;I)V

    .line 3437
    instance-of p2, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p2, :cond_0

    .line 3438
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3444
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3445
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

    .line 1058
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p2

    .line 1059
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

    .line 3285
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3286
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3288
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

    .line 2552
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    const/4 v0, 0x0

    .line 2553
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2556
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

    .line 2693
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    .line 2694
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2696
    new-instance v0, Lcom/miui/home/launcher/Workspace$16;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$16;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 2

    .line 2593
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2595
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeFinished(Landroid/content/Context;)V

    return-void
.end method

.method public autoShowTransitionEffectDemo()V
    .locals 5

    .line 1165
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 1166
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 1167
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    .line 1168
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1170
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    .line 1171
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    goto :goto_0

    .line 1173
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    .line 1175
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/Workspace$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Workspace$5;-><init>(Lcom/miui/home/launcher/Workspace;I)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    .line 1181
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    add-int/lit16 v0, v0, 0xc8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected beforeSnapToScreen(I)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->snapWorkspacePreview(I)V

    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 2

    .line 3332
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3333
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    .line 3334
    invoke-virtual {p0, p1, p4}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 3335
    iget p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 p3, 0x0

    if-gt p4, p2, :cond_0

    .line 3336
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget p4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p4, p4, 0x1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 3337
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget p4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p2, p4, p3}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    .line 3339
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p2

    const/high16 p4, -0x80000000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, v0}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z

    .line 3340
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 3341
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 3342
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 3343
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3344
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 3346
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Workspace$19;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Workspace$19;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3356
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 3357
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter p1

    .line 3358
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3359
    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 3360
    iput-boolean p3, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 3361
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 3362
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3364
    :cond_3
    sget-object p2, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3365
    :try_start_1
    sget-object p3, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    .line 3366
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3367
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p3

    .line 3366
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p3

    :catchall_1
    move-exception p2

    .line 3367
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

    .line 3268
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3269
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3271
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 3274
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 3275
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onDefaultScreenDelete()V

    .line 3277
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3278
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 3280
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    :cond_3
    return-void
.end method

.method protected calcScrollRightBound(II)I
    .locals 2

    .line 4099
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getVisualPosition(I)I

    move-result p1

    .line 4100
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

    .line 4105
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenScrollX(I)I

    move-result p1

    .line 4106
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 4107
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

    .line 3717
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->hasOddScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3718
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3719
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3720
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    return v1

    .line 3723
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->calcSnapGap()I

    move-result v0

    return v0
.end method

.method public calculateFoldScreenSide(I)I
    .locals 3

    .line 4048
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4049
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4051
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

    .line 3999
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4000
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

    .line 4001
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(IZ)I

    move-result p1

    goto :goto_1

    .line 4003
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public calibrateFoldCurrentScreenIndex(IZ)I
    .locals 6

    .line 4009
    sget-object v0, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->INSTANCE:Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 4010
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isLastCellLayoutEmpty()Z

    move-result v4

    move v1, p1

    move v5, p2

    .line 4009
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/util/FoldScreenIndexCalculator;->obtainValidCurrentScreenIndex(IIIZZ)I

    move-result p1

    .line 4011
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

    .line 2179
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$VU_JwY5qOSRLkobzPFD9CX5AvBk;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$VU_JwY5qOSRLkobzPFD9CX5AvBk;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public canMakeRomInFullScreen(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3505
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3506
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3507
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3508
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 3511
    :cond_0
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v2, :cond_1

    .line 3512
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

    .line 3520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3521
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3523
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3525
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isTwoScreen()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3526
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3528
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .line 3531
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3532
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

    .line 3536
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 3537
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

    .line 3846
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3847
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 3848
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

    .line 3599
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-eqz v0, :cond_0

    return-void

    .line 3602
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelScroll()V

    .line 3603
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDeltaWhenCancelScroll()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3605
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Workspace;->startScroll(III)V

    .line 3606
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_1
    return-void
.end method

.method public changeTargetScreenOrder(II)V
    .locals 6

    .line 2808
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 2809
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    .line 2810
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 2811
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    move v3, v0

    .line 2812
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2813
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    .line 2814
    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 2815
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v4, v3, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2818
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2819
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2820
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    return-void
.end method

.method public checkAllScreensToSelfDelete()V
    .locals 2

    const/4 v0, 0x0

    .line 3688
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3689
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

    .line 3694
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3695
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 3696
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

    .line 2824
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2826
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2827
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 570
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->computeScroll()V

    .line 571
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset()Z

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 574
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    :cond_0
    const/4 v0, 0x0

    .line 576
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 577
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    :cond_1
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 2

    .line 3888
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 3889
    new-instance v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3891
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

    .line 1709
    iget-wide v0, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overItem.screenId="

    .line 1716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",currScreenId="

    .line 1717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mScreenIdMap="

    .line 1718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    :goto_0
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1720
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v10}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 1721
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    iget-object v3, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1724
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1727
    :cond_1
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 1729
    invoke-virtual {v0, v9, v1}, Lcom/miui/home/launcher/CellLayout;->getChildVisualPosByTag(Ljava/lang/Object;[I)Z

    move-result v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    .line 1730
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

    .line 1735
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v13, v2, v9}, Lcom/miui/home/launcher/FolderIcon;->updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1736
    aget v2, v1, v10

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 1737
    aget v2, v1, v12

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    .line 1738
    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/CellLayout;->removeChild(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1739
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 1741
    iget-wide v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    aget v4, v1, v10

    aget v5, v1, v12

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 1742
    iget-object v0, v8, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 1743
    invoke-virtual {v13}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, v8, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    move-object v3, p1

    .line 1742
    invoke-static {v0, v9, p1, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->dropDragObjectIntoFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1744
    invoke-virtual {v13, v11}, Lcom/miui/home/launcher/FolderIcon;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return v12

    :cond_4
    return v10
.end method

.method deleteScreen(J)V
    .locals 3

    .line 3250
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Launcher.Workspace"

    .line 3252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already deleted screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3255
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isDeleteableScreen(J)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3258
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 3259
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3261
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;

    sget v2, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    invoke-direct {v1, p1, p2, v2}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3263
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteScreen(J)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 748
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->bindCore(Landroid/view/View;J)V

    .line 749
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastEvent:Landroid/view/MotionEvent;

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 751
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mPredictStepCount:I

    .line 752
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 753
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Launcher.Workspace"

    const-string v0, "ignore touch event workspace is locked"

    .line 754
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 757
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidate()V

    .line 758
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 767
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 769
    :pswitch_0
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch down"

    .line 770
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :cond_4
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 775
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    :cond_5
    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch up or cancel"

    .line 777
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
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

    .line 931
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkScreenVisibility(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 937
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

    .line 3953
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3954
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3955
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3957
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

    .line 3958
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enterNormalEditingByGesture()V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 942
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 944
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

    .line 1910
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1913
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->fillEmptyCellAuto(II)V

    :cond_0
    return-void
.end method

.method public findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 7

    .line 2236
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    const-wide/16 v1, -0x1

    .line 2237
    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const/4 v3, -0x1

    .line 2238
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/4 v3, 0x0

    .line 2239
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2240
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2241
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanX:I

    .line 2242
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanY:I

    .line 2243
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3, v3, v4, v5}, Lcom/miui/home/launcher/DeviceConfig;->isInvalidateCellPosition(IIII)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 2246
    :cond_0
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, p1, v0, v4, v6}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Launcher.Workspace"

    const-string p2, "Too many apps installed, not adding to home screen"

    .line 2249
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 2253
    :cond_1
    iget-wide v4, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    .line 2254
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2255
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2256
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2259
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez p2, :cond_3

    .line 2260
    iget p2, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    .line 2261
    iput-wide v0, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2258
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

    .line 3727
    invoke-virtual {p3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3731
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

    .line 4064
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->findSlot(IIIIJZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 4072
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    .line 4073
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 4078
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p7, :cond_2

    .line 4081
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p3, 0x7f110392

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    return-object p2

    .line 4086
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    const/4 p3, 0x0

    .line 4087
    aget p3, p1, p3

    iput p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    const/4 p3, 0x1

    .line 4088
    aget p1, p1, p3

    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 4089
    iput p5, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 4090
    iput p6, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const/16 p1, -0x64

    .line 4091
    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 4092
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-object p2
.end method

.method public finishCurrentGesture()V
    .locals 0

    .line 786
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

    .line 2832
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2837
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2838
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    .line 2839
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2840
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    iget v6, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenOrder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2841
    iget v2, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2843
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->reloadScreens(Ljava/util/ArrayList;)V

    .line 2844
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setupCurrentScreen()V

    return-void

    .line 2833
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

    .line 2834
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

    .line 3403
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    if-eqz v0, :cond_0

    .line 3404
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLayout(I)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2710
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2712
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2477
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public getCellScreen(I)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2469
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    .line 2470
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 2471
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

    .line 387
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

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2722
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2724
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2718
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    return-object v0
.end method

.method public getCurrentRightCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2730
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenId()J
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
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

    .line 405
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

    .line 3883
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 1470
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    return-object p1

    .line 1472
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isTwoScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1473
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

    .line 2449
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2451
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2444
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 2445
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultScreenIndex()I
    .locals 2

    .line 2392
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 2393
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

    .line 1985
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1986
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1987
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

    .line 1986
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

    .line 2040
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

    .line 2797
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    .line 2798
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 2799
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2800
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2804
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getFoldDefaultScreenId()I
    .locals 2

    .line 2405
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 2406
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

.method public getFoldEditModeGap()F
    .locals 1

    .line 4130
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeGap:F

    return v0
.end method

.method public getFoldEditModeMarginLeft()F
    .locals 1

    .line 4126
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeMarginLeft:F

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1421
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1422
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

    .line 2739
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

    .line 2786
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2787
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2788
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2789
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2793
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

    .line 3068
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return v0
.end method

.method public getScreenIdByIndex(I)J
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-wide v0

    .line 2462
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-wide v0

    .line 2465
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

    .line 2455
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

    .line 3395
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 3396
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    return-object v0

    .line 3398
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    return-object v0
.end method

.method protected getScreenLayoutX(I)I
    .locals 2

    .line 4143
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenLayoutMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 4144
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getVisualPosition(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeScaleRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeGap:F

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeMarginLeft:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mChildScreenLayoutMeasureDiffX:I

    add-int/2addr p1, v0

    return p1

    .line 4146
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getScreenLayoutX(I)I

    move-result p1

    return p1
.end method

.method protected getScreenSnapX(I)I
    .locals 2

    .line 4151
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenLayoutMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 4152
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenLayoutX(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mChildScreenLayoutMeasureDiffX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 4153
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeMarginLeft:F

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getSnapDirection()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    .line 4155
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getScreenSnapX(I)I

    move-result p1

    return p1
.end method

.method public getScreenType(I)I
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getScrollZone()I
    .locals 1

    .line 3475
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

    .line 3675
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

    .line 3678
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_1

    .line 3679
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int v0, v0

    return v0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3682
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    return v0

    :cond_2
    return v1
.end method

.method protected getSnapUnitIndex(I)I
    .locals 1

    .line 3667
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isNeedCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapBySecondaryTouch:Z

    if-eqz v0, :cond_0

    .line 3668
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    return p1

    .line 3670
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getSnapUnitIndex(I)I

    move-result p1

    return p1
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 2034
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasOddScreen()Z
    .locals 1

    .line 3989
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

    .line 2172
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$OT796x4GF5IlDRSwSJ_yItzxmuc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$OT796x4GF5IlDRSwSJ_yItzxmuc;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public inEditingModeAnimating()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3124
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3125
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3126
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

    .line 3308
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(ILcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)V

    return-void
.end method

.method public insertNewScreen(ILcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3315
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    const/4 v1, 0x1

    .line 3319
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-eqz p2, :cond_2

    .line 3322
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3323
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3324
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3326
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3328
    :cond_2
    :goto_0
    invoke-static {v0, v0, p1}, Lcom/miui/home/launcher/ScreenUtils;->insertNewScreen(III)V

    return-void
.end method

.method public isAllItemsCheckedInLastNoEmtpyScreen()Z
    .locals 5

    .line 3479
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 3480
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 3481
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 3484
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3485
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 3486
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3487
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v4

    goto :goto_1

    .line 3488
    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_3

    .line 3489
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

    .line 2734
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2735
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

    .line 2397
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

    .line 312
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 315
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

    .line 3220
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 3223
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3224
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 3225
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result p2

    move v0, v1

    .line 3226
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-eq p1, v0, :cond_1

    .line 3227
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

    .line 1751
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

    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result p1

    return p1
.end method

.method public isInLastScreenIndex()Z
    .locals 2

    .line 4020
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

    .line 323
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

    .line 328
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

    .line 375
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->isInCurrentScreen(I)Z

    move-result p1

    return p1
.end method

.method public isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5

    .line 2279
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2280
    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2282
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

    .line 2286
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, -0x1

    .line 2287
    iput-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    return v1

    :cond_2
    return v2
.end method

.method public isQuickCallCellLayoutExist()Z
    .locals 1

    .line 2184
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

    .line 2196
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2197
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

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 334
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/Gadget;

    .line 335
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 336
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

    .line 1479
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1480
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

    .line 3878
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

    .line 1161
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

    .line 319
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

    .line 3501
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

    .line 2423
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2425
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    goto :goto_0

    .line 2427
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 2429
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2431
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public needShowLastEmptyScreen()Z
    .locals 1

    .line 1991
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

    .line 806
    instance-of v0, p3, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getChildIndex(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 809
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    .line 3389
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3390
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    :cond_0
    return-void
.end method

.method public onDefaultScreenDelete()V
    .locals 2

    .line 2414
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2416
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2417
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

    .line 3972
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 p1, 0x0

    .line 3973
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3974
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3976
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3979
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3980
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 3981
    iget-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_2

    .line 3982
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 3985
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->onScreenOrientationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1809
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 1810
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1811
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isAllDropedSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eq p1, p0, :cond_1

    .line 1813
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1817
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1820
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isNoVacantMode()Z

    move-result p2

    if-eqz p2, :cond_3

    instance-of p2, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-nez p2, :cond_2

    instance-of p1, p1, Lcom/miui/home/launcher/UninstallDropTarget;

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 1821
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_3
    const/4 p1, 0x0

    .line 1824
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1932
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 1935
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1504
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1506
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1508
    :cond_0
    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1509
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1484
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1485
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1486
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->findDragOverCellScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1488
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1489
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1490
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1491
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1493
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1496
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1497
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1499
    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    :cond_3
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1945
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1919
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1923
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1924
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1927
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1232
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1233
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1234
    iget-wide v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1258
    iget v2, v1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 1259
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    .line 1264
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_12

    .line 1266
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/miui/home/launcher/CellLayout;->allowDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 1272
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1273
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1274
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1276
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v6, 0x0

    goto :goto_0

    .line 1277
    :cond_4
    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v6

    .line 1278
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1279
    invoke-virtual {v5, v7}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 1282
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v5

    const/4 v7, 0x1

    if-gt v5, v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v5

    if-eq v5, v0, :cond_6

    goto/16 :goto_1

    .line 1300
    :cond_6
    iget-object v5, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1301
    invoke-virtual {v2, v1, v5}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1303
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v10, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v10, v10, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 1304
    iget-object v8, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v8, v8, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {v0, v8, v9}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1307
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1309
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 1310
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1311
    instance-of v8, v5, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v8, :cond_8

    .line 1312
    move-object v8, v5

    check-cast v8, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 1313
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1317
    :cond_8
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1319
    invoke-virtual {v9}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v9

    if-nez v9, :cond_9

    instance-of v9, v5, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v9, :cond_9

    move-object v9, v5

    check-cast v9, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 1321
    invoke-virtual {v9}, Lcom/miui/home/launcher/LauncherWidgetView;->isMiuiWidget()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v10, v10, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 1322
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_9

    .line 1323
    invoke-direct {v0, v8, v9}, Lcom/miui/home/launcher/Workspace;->checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherWidgetView;)V

    .line 1326
    :cond_9
    invoke-direct {v0, v5, v1}, Lcom/miui/home/launcher/Workspace;->updateDragViewAnimateTarget(Landroid/view/View;Lcom/miui/home/launcher/DragObject;)V

    goto :goto_3

    .line 1283
    :cond_a
    :goto_1
    iget v5, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1284
    iget v8, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1285
    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/Workspace;->onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z

    move-result v9

    .line 1286
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v10

    if-eqz v9, :cond_d

    .line 1287
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v11

    instance-of v11, v11, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v11, :cond_d

    .line 1288
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v11

    const-wide/16 v13, -0x6e

    cmp-long v11, v11, v13

    if-eqz v11, :cond_b

    .line 1289
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v11

    const-wide/16 v15, -0x6f

    cmp-long v11, v11, v15

    if-nez v11, :cond_d

    .line 1290
    :cond_b
    iget-object v11, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v12

    check-cast v12, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v15, 0x3

    const/16 v16, -0x1

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1293
    invoke-interface {v10}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v17

    cmp-long v4, v17, v13

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x2

    :goto_2
    const/16 v17, 0x0

    .line 1294
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

    .line 1290
    invoke-static/range {v11 .. v21}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;IIIIIIIII)V

    :cond_d
    move v7, v9

    :goto_3
    if-nez v7, :cond_e

    .line 1328
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->hasToastedNoSpace()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f11037a

    invoke-static {v2, v4, v3}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    .line 1330
    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1331
    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_f
    :goto_4
    if-eqz v7, :cond_10

    .line 1333
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_10

    .line 1334
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_10
    if-eqz v7, :cond_11

    .line 1337
    invoke-direct {v0, v6}, Lcom/miui/home/launcher/Workspace;->showToastOnWidgetAddedAndCountLimit(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_11
    return v7

    :cond_12
    :goto_5
    const v4, 0x7f11037a

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1268
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result v1

    if-eqz v1, :cond_13

    const v4, 0x7f11037c

    :cond_13
    const/4 v1, 0x0

    .line 1267
    invoke-static {v2, v4, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    return v1
.end method

.method public onDropAnimationFinish()V
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 1967
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->cancelLongPress()V

    .line 1970
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1971
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1518
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1519
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 1520
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 1521
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 1522
    instance-of v3, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1523
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v5

    if-eq v5, p1, :cond_0

    instance-of v5, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v5, :cond_0

    .line 1525
    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 1527
    :cond_0
    instance-of v4, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1528
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 1529
    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ShortcutIcon;

    .line 1530
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->resetCheckBox()V

    .line 1531
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1532
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    :cond_1
    const/4 v3, -0x1

    .line 1534
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1536
    new-instance v2, Lcom/miui/home/launcher/Workspace$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/Workspace$6;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 1

    .line 1548
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getLastDragScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onDropCompleted()V

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1242
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1245
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDropScreen(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1248
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 1250
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, -0x1

    .line 1251
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 1252
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method onEditingModeEnterEnd()V
    .locals 2

    .line 3031
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 3035
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3036
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3038
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterEnd()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onEditingModeExitEnd()V
    .locals 3

    .line 3050
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 3051
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    .line 3052
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    const/4 v0, 0x0

    move v1, v0

    .line 3054
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3055
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3057
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitEnd()V

    .line 3058
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3061
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 3062
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3063
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public onEnterScrollArea(IIILandroid/view/MotionEvent;)Z
    .locals 3

    .line 3617
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3618
    invoke-virtual {p0, p3, p4}, Lcom/miui/home/launcher/Workspace;->startDragScrollAnimator(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3620
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3621
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3623
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->onEnterScrollArea(IIILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onExitScrollArea()Z
    .locals 1

    const/4 v0, -0x1

    .line 3658
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3659
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3660
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3661
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    .line 3662
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onExitScrollArea()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 676
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onFinishInflate()V

    .line 677
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010033

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 678
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010036

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 679
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

    .line 820
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

    .line 821
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 830
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_2

    .line 836
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 840
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVL;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v3, "android.wallpaper.tap"

    .line 842
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v5, v5, v1

    .line 843
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v6, v6, v2

    .line 844
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 841
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V

    .line 847
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    if-eqz v0, :cond_4

    .line 849
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz p1, :cond_3

    .line 850
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 851
    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 853
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return v2

    .line 865
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

    .line 2935
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/DragableScreenView;->onLayout(ZIIII)V

    .line 2936
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2937
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 2938
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 2940
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    .line 2941
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_3

    .line 2942
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLocationOnScreen:[I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 2943
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLocationInWindow:[I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getLocationInWindow([I)V

    .line 2944
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

.method protected onMeasure(II)V
    .locals 0

    .line 4114
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onMeasure(II)V

    .line 4115
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateEditModeMarginLeft()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 2986
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    const/4 v0, 0x0

    .line 2988
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2989
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2991
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellScreen;->onMultiWindowModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOverlayAnimPause()V
    .locals 1

    .line 4040
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onPause()V

    return-void
.end method

.method public onOverlayAnimResume()V
    .locals 1

    .line 4036
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onResume()V

    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 4

    const/4 v0, 0x0

    .line 3764
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3765
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v1, v2

    .line 3766
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragLayer;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 3767
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    neg-float v3, v3

    .line 3770
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3771
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3772
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3773
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    cmpl-float p1, v2, v0

    if-nez p1, :cond_1

    .line 3775
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 3777
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 2906
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 2907
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onPause()V

    .line 2908
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPinching(F)Z
    .locals 5

    .line 972
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

    .line 975
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->resetCellScreenScaleAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz v0, :cond_1

    .line 976
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 979
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 981
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    const v2, 0x3f8ccccd    # 1.1f

    if-eqz v0, :cond_6

    .line 982
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 983
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    cmpg-float v3, p1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_2

    .line 985
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 986
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_5

    .line 987
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeHotseatsToEditingEntryView()V

    goto :goto_0

    :cond_2
    cmpl-float v3, p1, v4

    if-ltz v3, :cond_4

    .line 990
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 992
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->startSecurityHide()V

    return v1

    :cond_3
    move p1, v4

    goto :goto_0

    .line 997
    :cond_4
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 998
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_5

    .line 999
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeEditingEntryViewToHotseats()V

    .line 1002
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    goto :goto_1

    .line 1003
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_7

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 1005
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 1006
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

    .line 1025
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1027
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 1028
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 1029
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    .line 1030
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 1032
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->resetCellScreenScale(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method onQuickModeExitEnd()V
    .locals 1

    .line 3044
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3045
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 690
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 703
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 704
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    goto :goto_0

    .line 706
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    :goto_0
    if-eq v0, v2, :cond_3

    .line 709
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 2913
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onCreate()V

    const/4 v0, 0x0

    .line 2914
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 2915
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mRestoreBlurRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 683
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 684
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

    .line 2967
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 2969
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateEditModeScaleRatio()V

    .line 2970
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 v0, 0x0

    .line 2971
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2972
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2974
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onScreenSizeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2977
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_3

    .line 2978
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->onScreenSizeChanged()V

    .line 2980
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2981
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWorkspacePaddingTop()V

    :cond_4
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 906
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->onScrollChanged(IIII)V

    const/4 p1, 0x0

    .line 907
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onScrollXAnimationEnd()V
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onScrollXAnimationEnd()V

    const/4 v0, 0x0

    .line 587
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 588
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->notifyScrollToNextScreenAnimEnd()V

    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1074
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    .line 1076
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapBySecondaryTouch:Z

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1940
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1088
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1081
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x0

    .line 1083
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapBySecondaryTouch:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2892
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3923
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3924
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVerticalFling(IFF)V
    .locals 1

    .line 1110
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    .line 1111
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

    .line 1113
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomSearchEnable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1114
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomGlobalSearchEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1115
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1116
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1117
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1118
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    .line 1119
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

    .line 1100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1101
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

    .line 1849
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0806d6

    goto :goto_0

    :cond_0
    const v1, 0x7f0806d5

    .line 1850
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    if-eqz v0, :cond_1

    const v0, 0x7f0806d2

    goto :goto_1

    :cond_1
    const v0, 0x7f0806d1

    .line 1851
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    const/4 v0, 0x0

    .line 1852
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1853
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 1854
    instance-of v2, v1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v2, :cond_2

    .line 1855
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

    .line 815
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return-void
.end method

.method public removeAllEmptyFoldersInCurrentScreen()V
    .locals 5

    .line 3735
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3736
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3737
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v3, :cond_0

    .line 3738
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderIcon;

    const/4 v4, 0x1

    .line 3739
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    .line 3740
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderIcon;->finishPendingAll()V

    .line 3741
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 3

    .line 1877
    iget-wide v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1879
    iget-wide v1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1880
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    if-ne v0, v1, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Landroid/view/View;
    .locals 3

    .line 1901
    iget-wide v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1903
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

    .line 3237
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->removeScreen(I)V

    .line 3238
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 3239
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 3240
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    .line 3242
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

    .line 3243
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3244
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 3246
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeScrollToNextScreenAnimListener(Lcom/miui/home/launcher/fold/ScrollToNextScreenAnimListener;)V
    .locals 1

    .line 4060
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

    .line 1866
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

    .line 1867
    iget-wide v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1869
    iget-wide v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1870
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1871
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeHotSeatsRecentCache(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 3469
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->removeViewsInLayout(II)V

    .line 3470
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 4

    .line 1887
    iget-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1888
    iget-wide v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1890
    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1891
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v0, :cond_0

    .line 1892
    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onDestroy()V

    :cond_0
    if-eqz v1, :cond_1

    .line 1895
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1896
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    :cond_1
    return-void
.end method

.method reorderScreens()V
    .locals 6

    const-string v0, "Launcher.Workspace"

    .line 2876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens before reorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2879
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2881
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

    .line 2884
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

    .line 870
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 871
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->scrollTo(II)V

    const-string p2, "Launcher_Scrollto"

    const-string v0, "[(rawX,rawY)|scrollX]  "

    .line 872
    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Launcher_Scrollto"

    .line 874
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

    .line 876
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidateAllMamlDrawables()V

    .line 877
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

    .line 878
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

    .line 3898
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    if-eq v0, p1, :cond_0

    .line 3899
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3900
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3901
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3902
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getAssistantPoint()Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3903
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

    .line 363
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

    .line 345
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 346
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 347
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setCurrentScreenInner(I)V

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    if-nez p1, :cond_0

    .line 349
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 350
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->updateIndex(IZ)V

    :cond_0
    const/4 p1, 0x0

    .line 352
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    return-void
.end method

.method public setDefaultScreenId(J)V
    .locals 0

    .line 2410
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 1804
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 9

    .line 3145
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    .line 3146
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 3147
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

    .line 3151
    invoke-direct {p0, v4, v0}, Lcom/miui/home/launcher/Workspace;->updateScreenLayoutMode(ZZ)V

    .line 3152
    invoke-direct {p0, v1, v4}, Lcom/miui/home/launcher/Workspace;->setupEditingScreen(ZZ)V

    if-nez v0, :cond_c

    .line 3154
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_3

    .line 3155
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-array v6, v2, [F

    if-eqz v1, :cond_2

    .line 3156
    iget v7, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v7, v7

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    aput v7, v6, v3

    .line 3155
    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 3157
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x172

    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3158
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3159
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    :cond_3
    if-eqz v1, :cond_4

    const/4 p2, 0x4

    goto :goto_3

    :cond_4
    move p2, v3

    .line 3161
    :goto_3
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 3162
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz p2, :cond_6

    .line 3163
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ScreenView$SlideBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3165
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_8

    .line 3166
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

    .line 3171
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setTransitionEffectEditingMode()V

    goto :goto_8

    :cond_9
    const/16 p2, 0x9

    if-ne p1, p2, :cond_a

    .line 3176
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_8

    .line 3178
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 3179
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p2

    :goto_7
    if-ltz p2, :cond_c

    .line 3181
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 3183
    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    :cond_b
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_c
    :goto_8
    move p2, v3

    move v4, p2

    .line 3190
    :goto_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ge p2, v6, :cond_11

    .line 3191
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 3193
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v7

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->isIndexInCurrentScreen(I)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 3194
    iget-object v7, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v7, v6, p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V

    if-nez v0, :cond_d

    .line 3195
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

    .line 3199
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isRecentsContainerShowing()Z

    move-result p2

    if-nez p2, :cond_13

    .line 3200
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

    .line 3134
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setFoldDefaultScreenId(J)V
    .locals 0

    .line 2401
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mFoldDefaultScreenId:J

    return-void
.end method

.method public setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3807
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1900(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    .line 3809
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3810
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

    .line 956
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 958
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

.method public setIsSupportEditMode(Z)V
    .locals 0

    .line 4138
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSupportEditMode:Z

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1798
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1799
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 1800
    new-instance p1, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 3758
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    const/4 p1, 0x0

    .line 3760
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public setScreenScrollRangeByCurrentScreenType()V
    .locals 6

    .line 3088
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3090
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v0

    .line 3091
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v1

    .line 3092
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3093
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRange(II)V

    .line 3095
    :cond_1
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->correctCurrentScreen(Z)V

    .line 3096
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    :goto_0
    if-ltz v3, :cond_5

    .line 3098
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

    .line 3100
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

    .line 3861
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setState(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 1

    .line 3870
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    .line 3874
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    return-void
.end method

.method setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 0

    .line 2888
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3411
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3412
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3414
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 3415
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3416
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    if-eqz p2, :cond_2

    .line 3419
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

    .line 3071
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3072
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    const/4 v0, 0x0

    .line 3073
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 3074
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_0
    return-void
.end method

.method public showAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 2165
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$NaXgCJQAt608tQU2sKiBX_qDJLo;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$NaXgCJQAt608tQU2sKiBX_qDJLo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showQuickCallCellLayoutTitle()V
    .locals 1

    .line 2158
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$AVsPdZqnfgbztperwQhBTRrTUiM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$AVsPdZqnfgbztperwQhBTRrTUiM;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showSeekBarWithoutAnim(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3461
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 3463
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

    .line 3711
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 3712
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->snapByVelocity(II)V

    return-void
.end method

.method protected snapToScreen(IIZ)I
    .locals 4

    .line 1186
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1188
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    .line 1190
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1191
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1192
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1193
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1195
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    move p1, v0

    .line 1198
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v0, :cond_2

    .line 1199
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 1200
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    .line 1201
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDesktopSwipeLeftOrRight()V

    .line 1204
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(IIZ)I

    move-result p1

    return p1
.end method

.method startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 5

    .line 1209
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1211
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1215
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1217
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    .line 1218
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1221
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1222
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 1223
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;-><init>()V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 1226
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1228
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    return-void
.end method

.method public startDragScrollAnimator(ILandroid/view/MotionEvent;)Z
    .locals 9

    .line 3560
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3563
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    .line 3570
    :pswitch_0
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    goto :goto_0

    .line 3567
    :pswitch_1
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int p1, p1

    .line 3574
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getSnapBound()[I

    move-result-object v2

    .line 3575
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    aget v4, v2, v0

    if-ge v3, v4, :cond_2

    .line 3576
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->canDragToPa()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3577
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherCallbacks()Lcom/miui/home/launcher/LauncherCallbacks;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    move p1, v0

    .line 3583
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

    .line 3587
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    .line 3588
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v4

    const/4 v6, 0x0

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/Workspace;->startScroll(IIIFF)V

    .line 3589
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3590
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3591
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

    .line 4030
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    if-eqz v0, :cond_0

    .line 4031
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldEditDragingAnim()V

    :cond_0
    return-void
.end method

.method public startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
    .locals 1

    .line 4024
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditSwitchScreenAnim:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    if-eqz v0, :cond_0

    .line 4025
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V

    :cond_0
    return-void
.end method

.method public startLoading()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 3382
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 3383
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 3384
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    .line 3385
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAssistantPoints(Z)V
    .locals 2

    .line 3909
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_2

    .line 3910
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3911
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 3912
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3913
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->removeAssistantPoint()V

    goto :goto_0

    .line 3914
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

    .line 3915
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->addAssistantPoint()V

    .line 3918
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 2

    .line 3372
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 3375
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iget-boolean v0, v0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    if-eqz v0, :cond_1

    return-void

    .line 3378
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    return-void
.end method

.method public updateCurrentIndex(I)V
    .locals 0

    .line 391
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenInner(I)V

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelScroll()V

    .line 393
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->scrollToScreen(I)V

    return-void
.end method

.method public updateEditModeScaleRatio()V
    .locals 1

    .line 4134
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFoldEditModeScaleRatio:F

    return-void
.end method

.method public updateMamlDownloadVisible(I)V
    .locals 2

    .line 2919
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2922
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2923
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2925
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

    .line 1045
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v2

    sub-float v2, v0, v2

    div-float/2addr v1, v2

    const v2, 0x3f99999a    # 1.2f

    .line 1046
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->afterFriction(FF)F

    move-result v1

    .line 1047
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

    .line 1048
    :goto_0
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Workspace$ZrwmYIaSnr3WcwkL9syWS0CB1Rs;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$ZrwmYIaSnr3WcwkL9syWS0CB1Rs;-><init>(F)V

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Workspace;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    .line 1050
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 1051
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1052
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

    .line 2962
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method
