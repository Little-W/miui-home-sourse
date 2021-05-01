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

.field private final mTrimScreenRunnable:Ljava/lang/Runnable;

.field private mVerticalFlingInvalidateBottomAreaHeight:F

.field private mVisibleRect:Landroid/graphics/Rect;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 1880
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    .line 1881
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_2250:[I

    .line 1882
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_1500:[I

    .line 1883
    sget-object v0, Lcom/miui/home/launcher/Workspace;->PREDICT_STEP_PIXELS_IN_3000:[I

    array-length v0, v0

    sput v0, Lcom/miui/home/launcher/Workspace;->TOTAL_PREDICT_COUNT:I

    .line 2150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    .line 3192
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

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 142
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    const-wide/16 v0, -0x1

    .line 144
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const/4 p3, 0x2

    .line 151
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 155
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    const/4 p3, 0x7

    .line 156
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 157
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 158
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 p3, 0x0

    .line 174
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 177
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 178
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    const/4 v0, -0x1

    .line 179
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 183
    new-instance v1, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v1, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const/high16 v1, -0x40800000    # -1.0f

    .line 189
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 191
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 193
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 584
    new-instance v1, Lcom/miui/home/launcher/Workspace$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    .line 870
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 1042
    new-instance v1, Lcom/miui/home/launcher/Workspace$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$4;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollEnd:Ljava/lang/Runnable;

    .line 1221
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    .line 1673
    new-instance v1, Lcom/miui/home/launcher/Workspace$8;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    .line 1693
    new-instance v1, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    invoke-direct {v1, p0, p3}, Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mEditModeItemClickedHandler:Lcom/miui/home/launcher/Workspace$EditModeItemClickedHandler;

    .line 1715
    new-instance v1, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    invoke-direct {v1, p0, p3}, Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/Workspace$CancelEmptySpaceLongClickHandler;

    .line 1886
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 2105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    .line 2106
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    .line 2272
    new-instance v1, Lcom/miui/home/launcher/Workspace$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$10;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    .line 2294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    .line 2295
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2296
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2297
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2298
    new-instance v1, Lcom/miui/home/launcher/Workspace$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$11;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForCategory:Ljava/util/function/Consumer;

    .line 2318
    new-instance v1, Lcom/miui/home/launcher/Workspace$12;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$12;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCollectConsumerForFillEmpty:Ljava/util/function/Consumer;

    .line 2593
    new-instance v1, Lcom/miui/home/launcher/Workspace$16;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$16;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    .line 2772
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    .line 2920
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 2921
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    .line 3206
    new-instance v1, Lmiuix/animation/physics/SpringAnimation;

    sget-object v2, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v1, p0, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    .line 3220
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$jyORq1dcn0TB98mra-NeDdEMgeo;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    .line 3357
    new-instance v1, Lcom/miui/home/launcher/Workspace$19;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$19;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    .line 3377
    new-instance v1, Lcom/miui/home/launcher/Workspace$20;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Workspace$20;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const v1, 0x7f08029e

    .line 3460
    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3492
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mVisibleRect:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 219
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const v3, 0x7f10014b

    .line 220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x7f07023d

    .line 222
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-string v5, "bottom_point"

    .line 223
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 224
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x51

    .line 225
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 226
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v0, 0x7f0802a0

    .line 227
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    .line 229
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 230
    iput-boolean v6, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_0
    const-string v1, "top_point"

    .line 231
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x2

    .line 232
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x31

    .line 233
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v0, 0x7f07024d

    .line 234
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 236
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    :cond_1
    const-string v1, "slider"

    .line 237
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x50

    .line 239
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 241
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 242
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 244
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setAnimationCacheEnabled(Z)V

    const/16 v0, 0x2a30

    .line 245
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setMaximumSnapVelocity(I)V

    .line 246
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isClipTransitionDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->setClip(Z)V

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070293

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mScrollZone:I

    .line 251
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070094

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    .line 252
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/OnLongClickAgent;->setTimeOut(J)V

    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->initScreenSeekBarEditAnimation()V

    .line 254
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->setImportantForAccessibility(I)V

    .line 255
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 256
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700e3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 257
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

    .line 2328
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

    .line 2209
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 2211
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 2213
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    .line 2214
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2215
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    .line 2216
    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/Workspace;->addItemToFolder(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-void
.end method

.method private announceForAccessibilityIfNeed(I)V
    .locals 6

    .line 363
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 366
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    move v2, v1

    move v3, v2

    .line 367
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 368
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 369
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

    .line 374
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

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    .line 375
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private calcScaleWhenReadyToEdit(FF)F
    .locals 3

    sub-float p2, p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 916
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

    .line 1209
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1210
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 1213
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Workspace$kRblouzbSEHBzW4AqkJdNgy5Ieo;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$kRblouzbSEHBzW4AqkJdNgy5Ieo;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z
    .locals 4

    .line 1947
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1948
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

    .line 1949
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 1950
    monitor-exit v0

    return p1

    .line 1953
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

    .line 2187
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2188
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mFolderCount:I

    .line 2189
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mShortcutCount:I

    .line 2190
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mQuickAppCount:I

    .line 2192
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    move v1, v0

    .line 2193
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2194
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 2196
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

    .line 2201
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 2203
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

    .line 957
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 958
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 960
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

    .line 593
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 594
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    .line 595
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_2

    if-eqz v1, :cond_2

    .line 597
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingLeft()V

    .line 599
    :cond_2
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-ne v2, v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 601
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

    .line 2036
    invoke-direct {p0, v10, v10}, Lcom/miui/home/launcher/Workspace;->getFirstNotEmptyCellInfo(II)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    move-object v11, v5

    goto :goto_0

    :cond_0
    if-ne v1, v10, :cond_1

    .line 2039
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

    .line 2046
    iget-wide v6, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v6, v7}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v6

    if-le v2, v6, :cond_3

    return v5

    :cond_3
    if-ne v1, v10, :cond_4

    .line 2049
    iget-wide v1, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    if-ge v1, v2, :cond_4

    return v5

    .line 2052
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

    .line 2055
    :cond_7
    iget-wide v1, v11, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2057
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    .line 2058
    iget-wide v5, v11, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v5, v6}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    move-result-object v1

    .line 2059
    instance-of v2, v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v2, :cond_8

    .line 2061
    check-cast v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v1, v10}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 2063
    :cond_8
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v5, -0x64

    const/4 v9, 0x0

    move-object v2, v11

    move-wide v3, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    .line 2064
    iget-object v1, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v11}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_9
    return v10
.end method

.method private fillScreensAfterMigrateDB(II)V
    .locals 20

    move-object/from16 v6, p0

    .line 1989
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellXMigratedFrom()I

    move-result v7

    .line 1990
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v8

    .line 1991
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellYMigratedFrom()I

    move-result v9

    .line 1992
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v10

    if-lt v7, v8, :cond_0

    if-ge v9, v10, :cond_a

    .line 1995
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 1996
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    move/from16 v14, p1

    move-wide v12, v0

    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_a

    .line 1998
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

    .line 2005
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

    .line 2006
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

    .line 2015
    invoke-virtual {v15, v4, v5, v7, v7}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide v2, v12

    move/from16 v18, v4

    move/from16 v19, v5

    .line 2016
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

    .line 2023
    invoke-virtual {v6, v14}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v12

    move/from16 v7, v17

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 6

    .line 1771
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

    .line 1772
    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1775
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace$CellInfo;->isWidgetFinding()Z

    move-result v3

    or-int/2addr v0, v3

    .line 1777
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->needAddToQuickCallCellLayout(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1778
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v3

    .line 1779
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1781
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFirstNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 1782
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    goto :goto_1

    .line 1784
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastNotEmptyScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 1785
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    iput v4, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    :goto_1
    invoke-virtual {v3, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastEmptyCell(II)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1795
    aget p3, p1, v2

    iput p3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 1796
    aget p1, p1, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1797
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

    .line 1800
    :goto_2
    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/Workspace$CellInfo;->nextScreen(I)V

    .line 1801
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v3

    iput-wide v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    .line 1802
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

    .line 1803
    iput v2, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1806
    iget v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_6

    return-object p2

    :cond_6
    if-eqz v0, :cond_7

    move v3, v2

    goto :goto_4

    .line 1810
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_4
    if-eqz v0, :cond_8

    .line 1811
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

    .line 1814
    iput v3, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    .line 1815
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 1817
    :cond_a
    invoke-virtual {v0, p3, p4}, Lcom/miui/home/launcher/CellLayout;->findLastVacantArea(II)[I

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1819
    aget p1, v5, v2

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 1820
    aget p1, v5, v1

    iput p1, p2, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1821
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

    .line 1788
    new-instance p4, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",screenCount:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
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

    .line 2340
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 2343
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getFirstVacantIconArea()Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v0

    .line 2344
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2345
    iget v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2346
    iget-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 2347
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2348
    new-instance p1, Lcom/miui/home/launcher/Workspace$14;

    invoke-direct {p1, p0, v0, p2}, Lcom/miui/home/launcher/Workspace$14;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$CellInfo;Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 2361
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

    .line 1830
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getQuickCallCellLayout()Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1832
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

    .line 2910
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/CellScreen;->createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 2911
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/CellScreen;->createCellLayout(I)V

    .line 2912
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    .line 2913
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p3

    .line 2914
    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    const/16 p1, -0x64

    .line 2915
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/CellLayout;->setContainerId(I)V

    .line 2916
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

    .line 2423
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 2424
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2425
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2427
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

    .line 2152
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 2153
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    .line 2154
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    .line 2155
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x1

    .line 2159
    invoke-virtual {v2, v3, v3}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object v2

    const/4 v4, 0x0

    move v5, v1

    move v6, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 2162
    aget v7, v2, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    aget v7, v2, v3

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 2180
    :cond_1
    aget v1, v2, v4

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 2181
    aget v1, v2, v3

    iput v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 2182
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v6, v3

    add-int v2, v1, v6

    .line 2164
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2165
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v5, :cond_3

    .line 2167
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 2168
    sget-object v5, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2170
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

    .line 2172
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2174
    :goto_2
    monitor-exit v5

    goto :goto_4

    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2177
    :cond_3
    :goto_4
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 2178
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

    .line 2440
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2441
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2442
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2444
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

    .line 2716
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

    .line 539
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
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

    .line 1868
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1869
    instance-of v1, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-eqz v1, :cond_0

    .line 1870
    check-cast v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenScaleRatio()F
    .locals 1

    .line 3291
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    return v0
.end method

.method private initScreenSeekBarEditAnimation()V
    .locals 2

    .line 2775
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2776
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 1653
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$Hl8teeWhTqfixt3jQRPSkpuqOHs;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$Hl8teeWhTqfixt3jQRPSkpuqOHs;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAllItemsCheckInFolder(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3127
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

    .line 3128
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

    .line 272
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

    .line 277
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

    .line 2029
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

    .line 985
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$canAddShortcutToQuickCallCellLayout$108(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 1

    .line 1860
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

.method public static synthetic lambda$checkAppWidgetResizeFrameWhenDropOnOriginScreen$102(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 1215
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/DragLayer;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    const/4 p1, 0x0

    .line 1216
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic lambda$hideAddContactButtonInQuickCallCellLayout$107(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 1853
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->hideAddContactButton()V

    const/4 p0, 0x1

    .line 1854
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$insertNewScreenIfNeed$104(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1656
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1658
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->containsOnlyEmptyFolders(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1659
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

.method public static synthetic lambda$onDropFromExternal$103(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/gadget/Gadget;)Z
    .locals 2

    .line 1388
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10021c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$resetCellScreenScale$100(Lcom/miui/home/launcher/Workspace;F)V
    .locals 2

    .line 939
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    add-float/2addr v1, p1

    .line 940
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    return-void
.end method

.method static synthetic lambda$showAddContactButtonInQuickCallCellLayout$106(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 1846
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showAddContactButton()V

    const/4 p0, 0x1

    .line 1847
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showQuickCallCellLayoutTitle$105(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 1839
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showTitle()V

    const/4 p0, 0x1

    .line 1840
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateNormalEditProgress$101(FLcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 947
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->scaleCellLayoutToNormalEditMode(F)V

    return-void
.end method

.method private loadIndicatorMarginBottom()V
    .locals 2

    .line 2632
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    .line 2633
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    .line 2634
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v0

    .line 2635
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottomInEditMode()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    .line 2636
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2638
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

    .line 1758
    instance-of v0, p1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1759
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1760
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

    .line 1321
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1322
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    .line 1323
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v4

    iput-boolean v4, v2, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    .line 1324
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

    .line 1364
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/miui/home/launcher/CellScreen;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1366
    aget v4, v3, v11

    iput v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1367
    aget v4, v3, v13

    iput v4, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1368
    iget v4, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v4, v10, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 1414
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

    .line 1403
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1404
    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    iget v4, v3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    if-ne v4, v7, :cond_1

    .line 1406
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v12

    goto/16 :goto_1

    .line 1407
    :cond_1
    iget v3, v3, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 1409
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    .line 1397
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1398
    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1399
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v1, v3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto :goto_1

    .line 1375
    :pswitch_2
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I

    move-result v3

    .line 1376
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1377
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v3, v4, :cond_2

    .line 1378
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v3, v12

    .line 1381
    :goto_0
    iput-object v12, v0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    move-object v12, v3

    goto :goto_1

    .line 1385
    :pswitch_3
    iput-wide v5, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1387
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    new-instance v7, Lcom/miui/home/launcher/-$$Lambda$Workspace$1h_7Snba8W3Q-vCzsr0K0GJyKKM;

    invoke-direct {v7, v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$1h_7Snba8W3Q-vCzsr0K0GJyKKM;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v3, v4, v13, v7}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 1370
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4, v12}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1371
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    move-object v7, v2

    check-cast v7, Lcom/miui/home/launcher/FolderInfo;

    aget v8, v3, v11

    aget v3, v3, v13

    invoke-virtual {v4, v7, v8, v3}, Lcom/miui/home/launcher/Launcher;->addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v3

    move-object v12, v3

    .line 1416
    :cond_4
    :goto_1
    iget v3, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v3, v10, :cond_e

    .line 1417
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAddWidget()V

    goto/16 :goto_6

    :cond_5
    move v13, v11

    goto/16 :goto_6

    .line 1328
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

    .line 1330
    move-object v8, v2

    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1332
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1330
    invoke-static {v4, v8}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsDrag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_8

    .line 1335
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4, v12, v12}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    goto :goto_3

    .line 1336
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_9

    .line 1337
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v4, v12}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 1339
    :cond_9
    :goto_3
    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v3

    .line 1340
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v4, p1

    .line 1341
    invoke-virtual {v4, v1, v3}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1342
    iget v4, v1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-ne v4, v7, :cond_c

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    .line 1344
    invoke-virtual {v4, v1, v3}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getLastCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    .line 1347
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellScreen;->clearDraggingState()V

    .line 1348
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

    .line 1360
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v3, :cond_e

    .line 1361
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    :cond_e
    :goto_6
    if-eqz v12, :cond_10

    .line 1422
    invoke-virtual {v12, v11}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1423
    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    iget-wide v3, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 1424
    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1425
    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1427
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    .line 1428
    iget-object v3, v0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v3

    if-eqz v1, :cond_10

    .line 1429
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_10

    if-eqz v3, :cond_10

    iget v4, v3, Lcom/miui/home/launcher/DragObject;->dragAction:I

    if-eq v4, v10, :cond_10

    iget v3, v3, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eqz v3, :cond_10

    .line 1432
    invoke-virtual {v2, v12}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1433
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v1, :cond_10

    .line 1434
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

    .line 606
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 613
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private preInvalidate()V
    .locals 2

    .line 676
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 677
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 681
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private preInvalidateAllMamlDrawables()V
    .locals 8

    .line 809
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

    .line 812
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    move v1, v3

    .line 813
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 814
    aget v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 815
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->isVisibleForMaml()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    .line 816
    :goto_2
    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 817
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 818
    instance-of v7, v6, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v7, :cond_1

    .line 819
    check-cast v6, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 820
    invoke-static {v6}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 821
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 825
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

    .line 2522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Workspace;->removeScreensInLayout(II)V

    .line 2527
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 2528
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-eqz p1, :cond_0

    .line 2529
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    .line 2530
    :goto_1
    invoke-direct {p0, v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    .line 2531
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2534
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 2535
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setEditModeIfNeeded()V

    return-void
.end method

.method private resetCellScreenScale(F)V
    .locals 4

    .line 937
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 938
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Workspace$F0ByX8Aw6k3grIJSrhHfr3pXvMg;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$F0ByX8Aw6k3grIJSrhHfr3pXvMg;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 942
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method

.method private setClip(Z)V
    .locals 0

    .line 2643
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipChildren(Z)V

    .line 2644
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->setClipToPadding(Z)V

    return-void
.end method

.method private setEditModeIfNeeded()V
    .locals 3

    .line 2753
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2754
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_0
    return-void
.end method

.method private setIsSnaping(Z)V
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 574
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    return-void

    .line 578
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 579
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    .line 580
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->onSnapStopped()V

    :cond_2
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3338
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1700(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    const/4 v0, 0x0

    .line 3340
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3342
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3345
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3346
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setupCurrentScreen()V
    .locals 4

    .line 2512
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCurrentDefaultScreenId()J

    move-result-wide v0

    .line 2513
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2514
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2515
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->saveCurrentDefaultScreenId(J)V

    .line 2517
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2518
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 1

    const/4 p2, 0x1

    .line 2740
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2742
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 2743
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_0

    .line 2745
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 2746
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2747
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 2749
    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    return-void
.end method

.method private startScrollFailedAnimator()V
    .locals 3

    .line 3209
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3212
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    new-instance v1, Lmiuix/animation/physics/SpringForce;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    const v2, 0x3e99999a    # 0.3f

    .line 3213
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    const v2, 0x3e6b851f    # 0.23f

    .line 3214
    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    .line 3212
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;

    .line 3215
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v1, :cond_1

    const/high16 v1, 0x44fa0000    # 2000.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3b060000    # -2000.0f

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 3217
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFailedTipAnimator:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void
.end method

.method private transDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1245
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

    .line 344
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 345
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 348
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->onVisible()V

    goto :goto_1

    .line 350
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

    .line 333
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->onInvisible()V

    .line 337
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 339
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->onVisible()V

    :cond_1
    return-void
.end method

.method private updateGadgetsLifeCycle(JJ)V
    .locals 6

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 321
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .line 322
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 323
    iget-wide v4, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 324
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 325
    :cond_0
    iget-wide v3, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_1

    .line 326
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateHotseatPosition()V
    .locals 5

    .line 505
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildScreenMeasureWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPause()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 507
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexByPoint(II)I

    move-result v0

    .line 509
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenLayoutX(I)I

    .line 510
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    .line 511
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->getNextScreenIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v1

    .line 513
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 516
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 517
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 518
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/HotSeats;->setTranslationY(F)V

    .line 519
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 520
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/SearchBar;->setTranslationY(F)V

    .line 521
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorShrinkBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 522
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setTranslationY(F)V

    goto :goto_0

    .line 529
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorMarginBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 530
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 531
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/HotSeats;->setTranslationY(F)V

    .line 532
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 533
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/SearchBar;->setTranslationY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSeekBarVisibility()V
    .locals 2

    .line 3052
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 3053
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3054
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    goto :goto_0

    .line 3056
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->showSeekBarWithoutAnim(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWallpaperOffset()Z
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 489
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

    .line 488
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private updateWallpaperOffset(I)Z
    .locals 5

    .line 494
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 496
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

    .line 497
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    move p1, v3

    goto :goto_1

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 497
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 499
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

    .line 3530
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3531
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3532
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
    .locals 3

    .line 1491
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1495
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1499
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5

    .line 1500
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_5

    .line 1501
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 1505
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 1506
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v2

    if-gt v0, v2, :cond_4

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    if-le p1, v0, :cond_3

    goto :goto_0

    .line 1510
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1

    :cond_5
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

    .line 660
    iget-object p3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    .line 661
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 662
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/4 p3, 0x0

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 665
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 667
    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 670
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_2
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 10

    .line 411
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

    .line 426
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

    .line 427
    instance-of v0, v10, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    .line 428
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

    .line 444
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 0

    .line 460
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p4

    if-gez p4, :cond_0

    if-gez p4, :cond_0

    const-string p1, "Launcher.Workspace"

    const-string p2, "The screen must be >= 0; skipping child"

    .line 463
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_0
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p5

    if-eqz p8, :cond_1

    const/4 p6, 0x0

    goto :goto_0

    :cond_1
    const/4 p6, -0x1

    .line 469
    :goto_0
    new-instance p7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {p7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p5, p1, p6, p7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p5

    cmp-long p2, p2, p5

    if-nez p2, :cond_2

    .line 471
    instance-of p2, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz p2, :cond_2

    .line 472
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLastWidgetView:Landroid/view/View;

    .line 475
    :cond_2
    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method public addInScreen(Landroid/view/View;JIIIIZZZ)V
    .locals 7

    .line 480
    invoke-virtual/range {p0 .. p8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    move-object v0, p0

    .line 481
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

    .line 3039
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;I)V

    .line 3040
    instance-of p2, p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz p2, :cond_0

    .line 3041
    check-cast p1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3047
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3048
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public alignIconsToTopWithSaveDb()V
    .locals 3

    const/4 v0, 0x0

    .line 2901
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2902
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2904
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

    .line 2222
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    const/4 v0, 0x0

    .line 2223
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2226
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

    .line 2365
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->collectAllIcons(Z)V

    .line 2366
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    .line 2368
    new-instance v0, Lcom/miui/home/launcher/Workspace$15;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$15;-><init>(Lcom/miui/home/launcher/Workspace;)V

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mReorganizeFinishConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 2

    .line 2265
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2267
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    .line 2269
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeFinished(Landroid/content/Context;)V

    return-void
.end method

.method public autoShowTransitionEffectDemo()V
    .locals 5

    .line 1054
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 1055
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowingTransitionEffectDemo:Z

    .line 1056
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    .line 1057
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1059
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    .line 1060
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    goto :goto_0

    .line 1062
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(IIZ)I

    move-result v0

    .line 1064
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/Workspace$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Workspace$5;-><init>(Lcom/miui/home/launcher/Workspace;I)V

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    .line 1070
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mAutoScrollBack:Ljava/lang/Runnable;

    add-int/lit16 v0, v0, 0xc8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected beforeSnapToScreen(I)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->snapWorkspacePreview(I)V

    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 2

    .line 2936
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2937
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Workspace;->generateEmptyCellScreen(JI)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    .line 2938
    invoke-virtual {p0, p1, p4}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 2939
    iget p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-gt p4, p2, :cond_0

    .line 2940
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 2942
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p2

    const/high16 p3, -0x80000000

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z

    .line 2943
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 2944
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 2945
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 2946
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2947
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 2949
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/Workspace$17;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Workspace$17;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2959
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 2960
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter p1

    .line 2961
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2962
    iget-object p4, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 2963
    iput-boolean p3, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 2964
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    .line 2965
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2967
    :cond_3
    sget-object p2, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2968
    :try_start_1
    sget-object p3, Lcom/miui/home/launcher/Workspace;->sPrepareNewScreenLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    .line 2969
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2970
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p3

    .line 2969
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p3

    :catchall_1
    move-exception p2

    .line 2970
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

    .line 2884
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2885
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2887
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 2890
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 2891
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onDefaultScreenDelete()V

    .line 2893
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2894
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->loadThumbnails(Z)V

    .line 2896
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    :cond_3
    return-void
.end method

.method public canAddShortcutToQuickCallCellLayout()Z
    .locals 1

    .line 1859
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$YnPXKgSl2Hh2Bj2ZIbdr8REJfdg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$YnPXKgSl2Hh2Bj2ZIbdr8REJfdg;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public canCurrentScreenMakeRom()Z
    .locals 5

    .line 3104
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 3105
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isFull()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 3108
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3109
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 3110
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3111
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    .line 3114
    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_2

    .line 3115
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

    .line 3390
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3391
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 3392
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

    .line 3170
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    if-eqz v0, :cond_0

    return-void

    .line 3173
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelScroll()V

    .line 3174
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenLayoutX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3176
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Workspace;->startScroll(III)V

    .line 3177
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_1
    return-void
.end method

.method public changeTargetScreenOrder(II)V
    .locals 5

    .line 2476
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 2477
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    .line 2478
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 2479
    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 2480
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2481
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 2482
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2485
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2486
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2487
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    return-void
.end method

.method public checkAllScreensToSelfDelete()V
    .locals 2

    const/4 v0, 0x0

    .line 3243
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3244
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

    .line 3249
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3250
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 3251
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->clearToasted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScreens()V
    .locals 1

    .line 2491
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2492
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2493
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 550
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->computeScroll()V

    .line 551
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset()Z

    .line 552
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 554
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    :cond_0
    const/4 v0, 0x0

    .line 556
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 557
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 559
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    :cond_1
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 2

    .line 3453
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 3454
    new-instance v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 3456
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

    .line 1442
    iget-wide v0, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overItem.screenId="

    .line 1449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",currScreenId="

    .line 1450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mScreenIdMap="

    .line 1451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    :goto_0
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1453
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v10}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 1454
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    iget-object v3, v8, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1457
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1460
    :cond_1
    iget-object v1, v8, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 1462
    invoke-virtual {v0, v9, v1}, Lcom/miui/home/launcher/CellLayout;->getChildVisualPosByTag(Ljava/lang/Object;[I)Z

    move-result v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    .line 1463
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

    .line 1468
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v13, v2, v9}, Lcom/miui/home/launcher/FolderIcon;->updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 1469
    aget v2, v1, v10

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 1470
    aget v2, v1, v12

    iput v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    .line 1471
    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/CellLayout;->removeChild(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1472
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 1474
    iget-wide v2, v9, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    aget v4, v1, v10

    aget v5, v1, v12

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 1475
    iget-object v0, v8, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    .line 1476
    invoke-virtual {v13}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, v8, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    move-object v3, p1

    .line 1475
    invoke-static {v0, v9, p1, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->dropDragObjectIntoFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1477
    invoke-virtual {v13, v11}, Lcom/miui/home/launcher/FolderIcon;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return v12

    :cond_4
    return v10
.end method

.method deleteScreen(J)V
    .locals 3

    .line 2866
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Launcher.Workspace"

    .line 2868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already deleted screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2871
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isDeleteableScreen(J)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2874
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 2875
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2877
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;

    sget v2, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    invoke-direct {v1, p1, p2, v2}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2879
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteScreen(J)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 690
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 692
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 693
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 694
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mPredictStepCount:I

    .line 695
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mFirstVelocity:I

    .line 696
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Launcher.Workspace"

    const-string v0, "ignore touch event workspace is locked"

    .line 697
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 700
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidate()V

    .line 701
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 706
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 710
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 712
    :pswitch_0
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch down"

    .line 713
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_5
    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mSecondPointerDown:Z

    .line 718
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 719
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    :cond_6
    const-string v0, "Launcher.Workspace"

    const-string v1, "Workspace touch up or cancel"

    .line 721
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
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

    .line 838
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-eq v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 846
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

    .line 3518
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3519
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3520
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3522
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

    .line 3523
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enterNormalEditingByGesture()V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 851
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 853
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

    .line 1613
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1616
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->fillEmptyCellAuto(II)V

    :cond_0
    return-void
.end method

.method public fillEmptyCellsAfterMigrateDB()V
    .locals 2

    .line 1978
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMigratingDBFromOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->fillScreensAfterMigrateDB(II)V

    .line 1982
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

    .line 3271
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3275
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->findFirstVacantArea(II)[I

    move-result-object p1

    return-object p1
.end method

.method public findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;
    .locals 7

    .line 1916
    new-instance v0, Lcom/miui/home/launcher/Workspace$CellInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/Workspace$CellInfo;-><init>()V

    const-wide/16 v1, -0x1

    .line 1917
    iput-wide v1, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const/4 v3, -0x1

    .line 1918
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    const/4 v3, 0x0

    .line 1919
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    .line 1920
    iput v3, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    .line 1921
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanX:I

    .line 1922
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v4, v0, Lcom/miui/home/launcher/Workspace$CellInfo;->spanY:I

    .line 1923
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3, v3, v4, v5}, Lcom/miui/home/launcher/DeviceConfig;->isInvalidateCellPosition(IIII)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 1926
    :cond_0
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, p1, v0, v4, v6}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace$CellInfo;II)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Launcher.Workspace"

    const-string p2, "Too many apps installed, not adding to home screen"

    .line 1929
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 1933
    :cond_1
    iget-wide v4, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    .line 1934
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1935
    :try_start_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->checkIsDupTask(Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1936
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCallbacksWhenScreenReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1939
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    if-nez p2, :cond_3

    .line 1940
    iget p2, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenOrder:I

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    .line 1941
    iput-wide v0, p1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1938
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

    .line 730
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

    .line 2499
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2500
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2501
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    .line 2502
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2503
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    iget v6, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenOrder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2504
    iget v2, v2, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2506
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->reloadScreens(Ljava/util/ArrayList;)V

    .line 2507
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setupCurrentScreen()V

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 1022
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 1026
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    .line 1032
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1033
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1034
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 3006
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLayout(I)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2382
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2384
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 2147
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public getCellScreen(I)Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2139
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    .line 2140
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    .line 2141
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

    .line 2394
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2396
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2390
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    return-object v0
.end method

.method public getCurrentScreenId()J
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
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

    .line 397
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

    .line 3448
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 2119
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2121
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .line 2114
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 2115
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultScreenIndex()I
    .locals 2

    .line 2071
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 2072
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

    .line 1684
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1685
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1686
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

    .line 1685
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

    .line 1718
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

    .line 2465
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    .line 2466
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 2467
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2468
    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2472
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1229
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->getHitRect(Landroid/graphics/Rect;)V

    .line 1230
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

    .line 2407
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

    .line 2454
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2455
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 2456
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2457
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2461
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    return-object v0
.end method

.method public getNextTypeScreenIndex()I
    .locals 3

    .line 2723
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v0

    .line 2724
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

    .line 2703
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    return v0
.end method

.method getScreenIdByIndex(I)J
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-wide v0

    .line 2132
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-wide v0

    .line 2135
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

    .line 2125
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

    .line 2998
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 2999
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    return-object v0

    .line 3001
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    return-object v0
.end method

.method public getScreenType(I)I
    .locals 0

    .line 393
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p1

    return p1
.end method

.method public getScrollZone()I
    .locals 1

    .line 3078
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

    .line 3233
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    if-nez v0, :cond_0

    .line 3234
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int v0, v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3237
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 1712
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hideAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 1852
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$kiB6mRIAet-Ny8hLAU0lETPXrdo;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$kiB6mRIAet-Ny8hLAU0lETPXrdo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public inEditingModeAnimating()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2759
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2760
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2761
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
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2927
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    const/4 v1, 0x1

    .line 2931
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mIsInsertingNewScreen:Z

    .line 2932
    invoke-static {v0, v0, p1}, Lcom/miui/home/launcher/ScreenUtils;->insertNewScreen(III)V

    return-void
.end method

.method public isAllItemsCheckedInLastNoEmtpyScreen()Z
    .locals 5

    .line 3082
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 3083
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 3084
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 3087
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3088
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 3089
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3090
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v4

    goto :goto_1

    .line 3091
    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v4, :cond_3

    .line 3092
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

    .line 2402
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2403
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

    .line 2076
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

    .line 261
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 264
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

    .line 2835
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2838
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2839
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 2840
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenType(I)I

    move-result p2

    move v0, v1

    .line 2841
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-eq p1, v0, :cond_1

    .line 2843
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

    .line 1484
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5

    .line 1958
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1959
    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1961
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

    .line 1965
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v3, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, -0x1

    .line 1966
    iput-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    return v1

    :cond_2
    return v2
.end method

.method public isQuickCallCellLayoutExist()Z
    .locals 1

    .line 1864
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

    .line 1876
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1877
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

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/Gadget;

    .line 284
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 285
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

    .line 3443
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

    .line 1050
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

    .line 268
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

    .line 2093
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2095
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    goto :goto_0

    .line 2097
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 2099
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2101
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public needShowLastEmptyScreen()Z
    .locals 1

    .line 1690
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

    .line 736
    instance-of v0, p3, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eq v0, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 739
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public notifyCurrentScreen()V
    .locals 4

    .line 3396
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3400
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3402
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    if-eqz v3, :cond_1

    .line 3403
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

    .line 2992
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2993
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    :cond_0
    return-void
.end method

.method public onDefaultScreenDelete()V
    .locals 2

    .line 2084
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2086
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setDefaultScreenId(J)V

    .line 2087
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

    .line 3537
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 p1, 0x0

    .line 3538
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3539
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3541
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3544
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3545
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mResetEditingViewsAfterScreenOrientationChanged:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 3546
    iget-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_2

    .line 3547
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 3550
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->onScreenOrientationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 1525
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 1526
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1527
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->isAllDropedSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eq p1, p0, :cond_1

    .line 1529
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1533
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1536
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isNoVacantMode()Z

    move-result p2

    if-eqz p2, :cond_3

    instance-of p2, v0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-nez p2, :cond_2

    instance-of p1, p1, Lcom/miui/home/launcher/UninstallDropTarget;

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 1537
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_3
    const/4 p1, 0x0

    .line 1540
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1635
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 1638
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1266
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1267
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1268
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1270
    :cond_0
    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1271
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1250
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1251
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1252
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1254
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1255
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1256
    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 1258
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1259
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 1261
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    :cond_2
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1648
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1622
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1626
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1627
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1630
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Workspace;->insertNewScreenIfNeed(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onDragStarted(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1118
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1120
    iget-wide v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 10

    .line 1138
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1139
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1146
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellLayout;->allowDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v2

    const v3, 0x7f1001bc

    if-nez v2, :cond_3

    .line 1147
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1148
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isAutoDraged()Z

    move-result p1

    if-eqz p1, :cond_2

    const v3, 0x7f1001bd

    .line 1147
    :cond_2
    invoke-static {v0, v3, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    return v1

    .line 1152
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1153
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->transDragObject(Lcom/miui/home/launcher/DragObject;)V

    .line 1155
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    .line 1156
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1157
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 1160
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_b

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v2

    if-eq v2, p0, :cond_6

    goto/16 :goto_0

    .line 1164
    :cond_6
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1165
    invoke-virtual {v0, p1, v2}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1167
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v7, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v7, v7, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    .line 1168
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v5, v5, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v5, v6}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1171
    invoke-virtual {v5}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1173
    :cond_7
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 1174
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 1175
    instance-of v5, v2, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v5, :cond_8

    .line 1176
    move-object v5, v2

    check-cast v5, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 1177
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 1181
    :cond_8
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 1182
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1183
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v6

    if-nez v6, :cond_9

    instance-of v6, v2, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v6, v6, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 1185
    invoke-virtual {v5}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 1186
    move-object v6, v2

    check-cast v6, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-direct {p0, v5, v6}, Lcom/miui/home/launcher/Workspace;->checkAppWidgetResizeFrameWhenDropOnOriginScreen(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    .line 1189
    :cond_9
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1190
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1191
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    goto :goto_1

    .line 1194
    :cond_a
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1161
    :cond_b
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Workspace;->onDropFromExternal(Lcom/miui/home/launcher/CellScreen;Lcom/miui/home/launcher/DragObject;)Z

    move-result v4

    :cond_c
    :goto_1
    if-nez v4, :cond_d

    .line 1197
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->hasToastedNoSpace()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1198
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 1199
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1200
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_e
    :goto_2
    if-eqz v4, :cond_f

    .line 1202
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_f

    .line 1203
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/hybrid/HybridController;->trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_f
    return v4
.end method

.method public onDropAnimationFinish()V
    .locals 1

    .line 1669
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1670
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 1280
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1281
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    .line 1282
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 1283
    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 1284
    instance-of v3, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1285
    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v5

    if-eq v5, p1, :cond_0

    instance-of v5, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v5, :cond_0

    .line 1287
    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/ShortcutIcon;Landroid/view/ViewGroup;)V

    .line 1289
    :cond_0
    instance-of v4, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1290
    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 1291
    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/ShortcutIcon;

    .line 1292
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->resetCheckBox()V

    .line 1293
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1294
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    :cond_1
    const/4 v3, -0x1

    .line 1296
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1297
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 1298
    new-instance v2, Lcom/miui/home/launcher/Workspace$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/Workspace$6;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 1

    .line 1310
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1312
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onDropCompleted()V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 1128
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1129
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    .line 1130
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, -0x1

    .line 1131
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 1132
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    return-void
.end method

.method onEditingModeEnterEnd()V
    .locals 2

    .line 2666
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 2670
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2671
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2673
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

    .line 2648
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2649
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2651
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterStart()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onEditingModeExitEnd()V
    .locals 3

    .line 2685
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 2686
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    .line 2687
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    const/4 v0, 0x0

    move v1, v0

    .line 2689
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2690
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2692
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitEnd()V

    .line 2693
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2696
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2697
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2698
    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method onEditingModeExitStart()V
    .locals 2

    const/4 v0, 0x0

    .line 2657
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2658
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2660
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitStart()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 3

    .line 3183
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Workspace;->startDragScrollAnimator(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3185
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3186
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3188
    :cond_0
    iput p3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3189
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->onEnterScrollArea(III)Z

    move-result p1

    return p1
.end method

.method public onExitScrollArea()Z
    .locals 1

    const/4 v0, -0x1

    .line 3224
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentDragingScrollDirection:I

    .line 3225
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3226
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollFiledTipAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3227
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    .line 3228
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onExitScrollArea()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 619
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onFinishInflate()V

    .line 620
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010026

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 621
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 622
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

    .line 750
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

    .line 751
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 760
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_2

    .line 766
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 770
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const-string v5, "android.wallpaper.tap"

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v0, v0, v1

    .line 772
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v0, v0, v2

    .line 773
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 770
    invoke-virtual/range {v3 .. v9}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 776
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    if-eqz v0, :cond_4

    .line 778
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz p1, :cond_3

    .line 779
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 780
    iget-object p1, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 782
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return v2

    .line 794
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

    .line 2585
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/DragableScreenView;->onLayout(ZIIII)V

    .line 2586
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2587
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 2588
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mCallbackAfterNextLayout:Ljava/lang/Runnable;

    .line 2590
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateHotseatPosition()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 2621
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspacePaddingTop(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 2623
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2624
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2626
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

    .line 3308
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3309
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v1, v2

    .line 3310
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragLayer;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 3311
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    neg-float v3, v3

    .line 3314
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3315
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setWorkspaceProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3316
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    .line 3317
    sget-object p1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/Workspace;->setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V

    cmpl-float p1, v2, v0

    if-nez p1, :cond_1

    .line 3319
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 3321
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 2562
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onPinching(F)Z
    .locals 6

    .line 874
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isElderlyManMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    const v2, 0x3f99999a    # 1.2f

    if-eqz v0, :cond_6

    .line 877
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result p1

    .line 878
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 879
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    cmpg-float v4, p1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_2

    .line 881
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 882
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeHotseatsToEditingEntryView()V

    .line 885
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/miui/home/launcher/Workspace;->calcScaleWhenReadyToEdit(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    cmpl-float v3, p1, v5

    if-lez v3, :cond_4

    .line 887
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 889
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->startSecurityHide()V

    return v1

    :cond_3
    move p1, v5

    goto :goto_0

    .line 894
    :cond_4
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    iput-object v1, p0, Lcom/miui/home/launcher/Workspace;->mState:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 895
    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    if-ne v0, v1, :cond_5

    .line 896
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->changeEditingEntryViewToHotseats()V

    .line 899
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    goto :goto_1

    .line 900
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_7

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 902
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 903
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

    .line 926
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 928
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getDampingScale(F)F

    move-result v0

    .line 929
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 930
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 932
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->resetCellScreenScale(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method onQuickModeExitEnd()V
    .locals 1

    .line 2679
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mAddResizeFrameRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2680
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 633
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 646
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 647
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    goto :goto_0

    .line 649
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    :goto_0
    if-eq v0, v2, :cond_3

    .line 652
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 2567
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateCellLayoutMamlVisibility()V

    const/4 v0, 0x0

    .line 2568
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 626
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 627
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

    .line 2606
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2607
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 2608
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->loadIndicatorMarginBottom()V

    const/4 v0, 0x0

    .line 2609
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2610
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2612
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->onScreenSizeChanged()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2615
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_3

    .line 2616
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->onScreenSizeChanged()V

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 832
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragableScreenView;->onScrollChanged(IIII)V

    const/4 p1, 0x0

    .line 833
    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mOnlyDrawCurrentScreen:Z

    return-void
.end method

.method protected onScrollXAnimationEnd()V
    .locals 1

    .line 566
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onScrollXAnimationEnd()V

    const/4 v0, 0x0

    .line 567
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 967
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 1643
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 979
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 973
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isSecondaryPointerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 2555
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3488
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScrollingClickDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3489
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVerticalFling(IFF)V
    .locals 1

    .line 1001
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    .line 1002
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

    .line 1004
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomSearchEnable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1005
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomGlobalSearchEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1006
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1007
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1008
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    .line 1009
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

    .line 991
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 992
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

    .line 1565
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0802a1

    goto :goto_0

    :cond_0
    const v1, 0x7f0802a0

    .line 1566
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    if-eqz v0, :cond_1

    const v0, 0x7f08029f

    goto :goto_1

    :cond_1
    const v0, 0x7f08029e

    .line 1567
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setAssistPointResource(I)V

    const/4 v0, 0x0

    .line 1568
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1569
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 1570
    instance-of v2, v1, Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;

    if-eqz v2, :cond_2

    .line 1571
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

    .line 745
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mHasPerformLongClick:Z

    return-void
.end method

.method public removeAllEmptyFoldersInCurrentScreen()V
    .locals 5

    .line 3279
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3280
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3281
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v3, :cond_0

    .line 3282
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/FolderIcon;

    const/4 v4, 0x1

    .line 3283
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    .line 3284
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderIcon;->finishPendingAll()V

    .line 3285
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/FolderIcon;->setFastDelete(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 3

    .line 1592
    iget-wide v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1594
    iget-wide v1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1595
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    if-ne v0, v1, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public removeScreen(I)V
    .locals 2

    .line 2854
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->removeScreen(I)V

    .line 2855
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 2856
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 2858
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

    .line 2859
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2860
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    .line 2862
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

    .line 1582
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

    .line 1583
    iget-wide v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1585
    iget-wide v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    .line 1586
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 3072
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->removeViewsInLayout(II)V

    .line 3073
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method public removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 4

    .line 1602
    iget-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 1603
    iget-wide v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1605
    iget-wide v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/CellLayout;->removeChild(J)Landroid/view/View;

    :cond_0
    if-eqz v1, :cond_1

    .line 1607
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1608
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    :cond_1
    return-void
.end method

.method reorderScreens()V
    .locals 6

    const-string v0, "Launcher.Workspace"

    .line 2539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens before reorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mIndexOrderedScreenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2542
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdToIndexMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2544
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

    .line 2547
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

    .line 799
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 800
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->scrollTo(II)V

    const-string p2, "Launcher_Scrollto"

    const-string v0, "[(rawX,rawY)|scrollX]  "

    .line 801
    invoke-static {p2, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getLastMotionEventLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Launcher_Scrollto"

    .line 803
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

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->preInvalidateAllMamlDrawables()V

    return-void
.end method

.method public setAssistPointResource(I)V
    .locals 2

    .line 3463
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    if-eq v0, p1, :cond_0

    .line 3464
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3465
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3466
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    .line 3467
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->getAssistantPoint()Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mAssistantPointResId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3468
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

    .line 382
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

    .line 294
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 295
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 296
    iget v4, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 297
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setCurrentScreenInner(I)V

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 298
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/miui/home/launcher/Workspace;->mEditingScreenChanging:Z

    if-nez v5, :cond_1

    .line 299
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 300
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/miui/home/launcher/Workspace;->updateGadgetsLifeCycle(JJ)V

    .line 301
    invoke-direct {p0, v4, p1}, Lcom/miui/home/launcher/Workspace;->updateCellLayoutMamlVisibility(II)V

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->notifyCurrentScreen()V

    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 305
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;

    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->announceForAccessibilityIfNeed(I)V

    .line 307
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->checkMissingIcon()V

    :cond_1
    const/4 p1, 0x0

    .line 314
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    return-void
.end method

.method public setDefaultScreenId(J)V
    .locals 0

    .line 2080
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 1520
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 9

    .line 2780
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    .line 2781
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mEditingMode:I

    .line 2782
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

    if-nez p2, :cond_9

    .line 2786
    invoke-direct {p0, v1, v4}, Lcom/miui/home/launcher/Workspace;->setupEditingScreen(ZZ)V

    if-nez v0, :cond_b

    .line 2788
    iget-boolean p2, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_3

    .line 2789
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-array v6, v2, [F

    if-eqz v1, :cond_2

    iget v7, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v7, v7

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    aput v7, v6, v3

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2791
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x172

    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2792
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2793
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBarEditAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    :cond_3
    if-eqz v1, :cond_4

    const/4 p2, 0x4

    goto :goto_3

    :cond_4
    move p2, v3

    .line 2795
    :goto_3
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 2796
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz p2, :cond_6

    .line 2797
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ScreenView$SlideBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2799
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_8

    .line 2800
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
    if-eqz v4, :cond_b

    .line 2805
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setTransitionEffectEditingMode()V

    goto :goto_8

    :cond_9
    const/16 p2, 0x9

    if-ne p1, p2, :cond_a

    .line 2810
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRangeByCurrentScreenType()V

    goto :goto_8

    .line 2812
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->resetScreenScrollRange()V

    .line 2813
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_7
    if-ltz p2, :cond_b

    .line 2814
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/CellScreen;->setVisibility(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_b
    :goto_8
    move p2, v3

    move v4, p2

    .line 2820
    :goto_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ge p2, v6, :cond_11

    .line 2821
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 2823
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v8

    if-ne p2, v8, :cond_c

    move v8, v2

    goto :goto_a

    :cond_c
    move v8, v3

    :goto_a
    invoke-virtual {v6, v7, v8}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(ZZ)V

    .line 2824
    iget-object v7, p0, Lcom/miui/home/launcher/Workspace;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v7, v6, p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V

    if-nez v0, :cond_d

    .line 2826
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v7

    sub-int v7, p2, v7

    goto :goto_b

    :cond_d
    const/high16 v7, -0x80000000

    .line 2825
    :goto_b
    invoke-virtual {v6, v1, v7, p3}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz v4, :cond_e

    goto :goto_c

    :cond_e
    move v4, v3

    goto :goto_d

    :cond_f
    :goto_c
    move v4, v2

    :cond_10
    :goto_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_11
    if-nez v4, :cond_13

    .line 2830
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

    .line 2769
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mEditAnimateFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setHotseatAndSearchBarProperty(Lcom/miui/home/launcher/Workspace$DirectionProperty;F)V
    .locals 2

    .line 3351
    invoke-static {p1}, Lcom/miui/home/launcher/Workspace$DirectionProperty;->access$1700(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;

    move-result-object p1

    .line 3353
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3354
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

    .line 1514
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1515
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 1516
    new-instance p1, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0, p0}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 3302
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    const/4 p1, 0x0

    .line 3304
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->onOverlayScrollChanged(F)V

    return-void
.end method

.method public setScreenScrollRangeByCurrentScreenType()V
    .locals 6

    .line 2728
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2730
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v0

    .line 2731
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/miui/home/launcher/Workspace;->getLastScreenIndexByType(IIZ)I

    move-result v1

    .line 2732
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setScreenScrollRange(II)V

    .line 2733
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->correctCurrentScreen(Z)V

    .line 2734
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_3

    .line 2735
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

    .line 3416
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setState(Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 2

    .line 3425
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mStateTransitionAnimation:Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V

    .line 3429
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    const/4 p1, 0x2

    .line 3431
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3432
    iget-wide v0, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3433
    new-instance p3, Lcom/miui/home/launcher/Workspace$21;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/Workspace$21;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3439
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

    .line 2551
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mWorkspaceThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3017
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 3018
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3019
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    if-eqz p2, :cond_2

    .line 3022
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

    .line 2706
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2707
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    const/4 v0, 0x0

    .line 2708
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 2709
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    :cond_0
    return-void
.end method

.method public showAddContactButtonInQuickCallCellLayout()V
    .locals 1

    .line 1845
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$HwQERRGNfOj7ZAoFZahc1DVLh90;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$HwQERRGNfOj7ZAoFZahc1DVLh90;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showQuickCallCellLayoutTitle()V
    .locals 1

    .line 1838
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$rprR_5Fkq5G0zH_61M3ttxaQY1Y;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$rprR_5Fkq5G0zH_61M3ttxaQY1Y;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->findQuickCallCellLayout(Ljava/util/function/Function;)Z

    return-void
.end method

.method public showSeekBarWithoutAnim(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3064
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 3066
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

    .line 3266
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnapCausedByDragScroll:Z

    .line 3267
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->snapByVelocity(II)V

    return-void
.end method

.method protected snapToScreen(IIZ)I
    .locals 4

    .line 1075
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1077
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mNextScreenIndex:I

    .line 1079
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    .line 1081
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1082
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1084
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    move p1, v0

    .line 1087
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenIndex:I

    if-eq p1, v0, :cond_2

    .line 1088
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->setIsSnaping(Z)V

    .line 1089
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_2

    .line 1090
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDesktopSwipeLeftOrRight()V

    .line 1093
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(IIZ)I

    move-result p1

    return p1
.end method

.method startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 3

    .line 1098
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1100
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1104
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 1106
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    .line 1107
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1110
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    .line 1112
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 1114
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    return-void
.end method

.method public startDragScrollAnimator(I)Z
    .locals 10

    .line 3139
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mIsSnaping:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3142
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->cancelDragScroll()V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    .line 3149
    :pswitch_0
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    goto :goto_0

    .line 3146
    :pswitch_1
    iget p1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimationDistance:I

    neg-int p1, p1

    .line 3152
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getSnapBound()[I

    move-result-object v2

    .line 3153
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    aget v4, v2, v0

    if-lt v3, v4, :cond_2

    .line 3154
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

    .line 3158
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mDragScrollAnimateStarted:Z

    .line 3159
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v5

    const/4 v7, 0x0

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/launcher/Workspace;->startScroll(IIIFF)V

    .line 3160
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3161
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragToNextScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3162
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

    .line 2985
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 2986
    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreenId:J

    .line 2987
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->removeAllScreens()V

    .line 2988
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTrimScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAssistantPoints(Z)V
    .locals 2

    .line 3474
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    instance-of v0, v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    if-eqz v0, :cond_2

    .line 3475
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    check-cast v0, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;

    .line 3476
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->isAssistantPointExist()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 3477
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3478
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->removeAssistantPoint()V

    goto :goto_0

    .line 3479
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

    .line 3480
    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/MultiSeekBarIndicator;->addAssistantPoint()V

    .line 3483
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateSeekBarVisibility()V

    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 2

    .line 2975
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverLayoutProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 2978
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/CellScreen;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iget-boolean v0, v0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    if-eqz v0, :cond_1

    return-void

    .line 2981
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 2

    .line 2572
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2575
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2576
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2578
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->updateMamlDownloadVisible()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateNormalEditProgress(F)V
    .locals 3

    .line 946
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$Lu6X8BqotTgmWGKwXS-4NQ23QJA;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Workspace$Lu6X8BqotTgmWGKwXS-4NQ23QJA;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 949
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    sub-float v1, v0, v1

    div-float/2addr p1, v1

    .line 950
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mIndicatorOffsetBottomPortrait:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setTranslationY(F)V

    .line 951
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 952
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
