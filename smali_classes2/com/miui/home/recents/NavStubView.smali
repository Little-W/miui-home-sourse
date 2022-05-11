.class public Lcom/miui/home/recents/NavStubView;
.super Landroid/widget/FrameLayout;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;
.implements Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;,
        Lcom/miui/home/recents/NavStubView$MotionEventPosition;,
        Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;,
        Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;,
        Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;,
        Lcom/miui/home/recents/NavStubView$H;,
        Lcom/miui/home/recents/NavStubView$ModeGesture;
    }
.end annotation


# static fields
.field private static DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NavStubView"


# instance fields
.field private antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

.field private enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

.field finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

.field private mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final mAppToAppTargetRectF:Landroid/graphics/RectF;

.field private mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

.field private final mAppToHomeTargetRect:Landroid/graphics/Rect;

.field private final mAppToHomeTargetRectF:Landroid/graphics/RectF;

.field private final mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mAppToRecentsStartDimLayerAlpha:F

.field private mBreakAnimStartDimAlpha:F

.field private final mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mCancelAppToAppAnim:Z

.field private mCancelFakeAppToHomeAnim:Z

.field private final mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final mCompleteEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

.field private mCropArray:[I

.field private mCurRect:Landroid/graphics/RectF;

.field private mCurShortcutMenuLayerScale:F

.field private mCurTaskAlpha:F

.field private mCurTaskFullscreenProgress:F

.field private mCurTaskHeight:F

.field private mCurTaskRadius:F

.field private mCurTaskRatio:F

.field private mCurTaskWidth:F

.field private mCurTaskX:F

.field private mCurTaskY:F

.field private mCurrAction:I

.field private mCurrX:F

.field private mCurrY:F

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDelta:F

.field private mDimAlpha:F

.field private mDisableTouch:Z

.field private mDisableUpdateStatusBarClock:Z

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownNo:I

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field mEnterRecentsRunnale:Ljava/lang/Runnable;

.field private mEventReceiver:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mExitStateEvent:Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

.field private mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field mFinishRunnable:Ljava/lang/Runnable;

.field mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mFollowTailDistance:F

.field private mFollowTailX:F

.field private mFollowTailXDelta:F

.field private mFollowTailY:F

.field private mFollowTailYDelta:F

.field private mFrameHandler:Landroid/os/Handler;

.field mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

.field private final mFsGestureStartEvent:Lcom/miui/home/recents/messages/FsGestureStartEvent;

.field private mGestureLineProgress:F

.field private mGoToNormalStartRunnable:Ljava/lang/Runnable;

.field private final mHandler:Lcom/miui/home/recents/NavStubView$H;

.field private mHideGestureLine:Z

.field private final mHideTaskViewRectF:Landroid/graphics/RectF;

.field private final mHoldStateEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

.field private mHomeFadeInAnim:Landroid/animation/ValueAnimator;

.field private mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHomeIntent:Landroid/content/Intent;

.field mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mHomeRotationStartRectF:Landroid/graphics/RectF;

.field private final mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final mHorizontalActiveArea:[F

.field private mHorizontalGap:F

.field private mIgnoreInputConsumer:Z

.field private mInitX:F

.field private mInitY:F

.field private mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

.field private mIsAnimatingToLauncher:Z

.field private mIsAnimatingToRecents:Z

.field private mIsAppHandleGesture:Z

.field mIsAppHold:Z

.field mIsAssistantInEditMode:Z

.field private mIsBlockedAfterExitSmallWindowMode:Z

.field private mIsBlockedAfterStartNewTask:Z

.field private mIsCancelBreakOpenAnim:Z

.field private mIsDarkMode:Z

.field private mIsGestureStarted:Z

.field private mIsInFsMode:Z

.field private mIsInitFloatingIconLayer:Z

.field private mIsLaunchingNewTask:Z

.field private mIsPointerEvent:Z

.field private mIsQuickSwitching:Z

.field private mIsResetTaskView:Z

.field private mIsSafeArea:Z

.field private mIsShowNavBar:Z

.field private mIsShowRecents:Z

.field private mIsShowStatusBar:Z

.field private mIsSupportPushAppEnterWorldCirculate:Z

.field private mIsVertical:Z

.field private mKeepHidden:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDownNo:I

.field private mLastTouchTime:J

.field mLastVelocity:F

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLauncherAlphaInRecents:F

.field private mLauncherScaleInRecents:F

.field private final mLocation:[I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMatrixArray:[F

.field private mMinRectWidth:F

.field private mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

.field private mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

.field private mNeedBreakOpenAnim:Z

.field private mNeedCreateDimLayer:Z

.field private mNeedResetLauncherAlphaScale:Z

.field private mNoIconRadius:I

.field private mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

.field private final mOneHandedTouchSlop:I

.field private mPendingResetStatus:Z

.field private mPendingResetTaskView:Z

.field private mPer:F

.field private mPivotLocX:I

.field private mPivotLocY:I

.field private final mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

.field private mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

.field private mQuickSwitchTaskId:I

.field private mQuickSwitchTaskIndex:I

.field public mReLoadTaskFinished:Z

.field private mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final mRecentsModeEvent:Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

.field private final mRecentsUpdateListener:Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;

.field mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mRecentsZoomEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

.field private final mRecentslistenerAdapter:Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

.field private final mRectNoInset:Landroid/graphics/RectF;

.field mRemoveTopViewRunnable:Ljava/lang/Runnable;

.field private mResponseOffset:F

.field mResumeLastTaskRunnable:Ljava/lang/Runnable;

.field private mRotationCurRect:Landroid/graphics/RectF;

.field private mRunningTaskComponentName:Landroid/content/ComponentName;

.field private mRunningTaskId:I

.field private mRunningTaskIndex:I

.field private mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mRunningTaskUserId:I

.field private mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field mStartNewTaskRunnable:Ljava/lang/Runnable;

.field private mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

.field mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

.field mSupportHorizontalGesture:Z

.field private mSystemUiFlags:I

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field private mTargetHomeIconView:Landroid/view/View;

.field mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mTaskViewInitRect:Landroid/graphics/Rect;

.field private mTaskViewRadius:F

.field private mTaskViewWidth:F

.field private mTaskViewX:F

.field private final mTempCurrentRectF:Landroid/graphics/RectF;

.field private mToastSlideAgain:Landroid/widget/Toast;

.field private mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

.field private mTopWindowCropHandler:Landroid/os/Handler;

.field private mTouchSlop:I

.field private final mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

.field private final mUpdateTaskTargetRectF:Landroid/graphics/RectF;

.field private final mUpdateTaskViewRectF:Landroid/graphics/RectF;

.field private mUseEmptyTouchableRegion:Z

.field private mVelocityPxPerMs:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowMode:I

.field private onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    .line 216
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "perseus"

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "cepheus"

    const v2, 0x40666666    # 3.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "dipper"

    const v3, 0x40cccccd    # 6.4f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "grus"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 775
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x1

    .line 243
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    const/4 v0, 0x2

    .line 257
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    .line 264
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    const/4 v1, 0x0

    .line 284
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    .line 292
    new-instance v2, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentslistenerAdapter:Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

    .line 293
    new-instance v2, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsUpdateListener:Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;

    .line 295
    sget-object v2, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    .line 320
    new-instance v2, Lcom/miui/home/recents/NavStubView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$1;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    .line 988
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    .line 990
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1105
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    .line 1655
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    .line 1662
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 1666
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    .line 1679
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTempCurrentRectF:Landroid/graphics/RectF;

    .line 1680
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    .line 1681
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    .line 1682
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    .line 1683
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHideTaskViewRectF:Landroid/graphics/RectF;

    .line 1684
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    .line 1685
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRectF:Landroid/graphics/RectF;

    .line 1686
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    .line 1687
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    .line 1688
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    .line 1689
    new-instance v2, Lcom/miui/home/recents/messages/FsGestureStartEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureStartEvent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureStartEvent:Lcom/miui/home/recents/messages/FsGestureStartEvent;

    .line 1690
    new-instance v2, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsModeEvent:Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    .line 1691
    new-instance v2, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    .line 1692
    new-instance v2, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsZoomEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

    .line 1693
    new-instance v2, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHoldStateEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    .line 1694
    new-instance v2, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mExitStateEvent:Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    .line 1695
    new-instance v2, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCompleteEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    .line 1697
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    const/high16 v2, 0x420c0000    # 35.0f

    .line 1703
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const v2, 0x3d4ccccd    # 0.05f

    .line 1704
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    const/16 v2, 0x14

    .line 1706
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mNoIconRadius:I

    .line 1708
    new-instance v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 1709
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 1710
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    .line 1713
    new-instance v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 1714
    new-instance v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 1725
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1727
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 1936
    new-instance v2, Lcom/miui/home/recents/NavStubView$5;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$5;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    .line 1966
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    .line 1988
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    .line 1989
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    .line 2162
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    .line 2163
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    const/4 v2, 0x4

    .line 2164
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    .line 2166
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$FQN1Ukc5dTr-d2uj17nLsW4U9iw;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$FQN1Ukc5dTr-d2uj17nLsW4U9iw;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    .line 2243
    new-instance v3, Lcom/miui/home/recents/NavStubView$6;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$6;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2271
    new-instance v3, Lcom/miui/home/recents/NavStubView$7;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$7;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2321
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    .line 2526
    new-instance v3, Lcom/miui/home/recents/NavStubView$10;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$10;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    .line 2796
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$1R8G5ODmxBfdeRGShx9_Z92nAVU;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$1R8G5ODmxBfdeRGShx9_Z92nAVU;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    .line 2951
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mNeedResetLauncherAlphaScale:Z

    .line 3423
    new-instance v3, Lcom/miui/home/recents/NavStubView$13;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$13;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    .line 3739
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$jzZpqnJPpzuAaPLfrQYXtDl3kwc;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$jzZpqnJPpzuAaPLfrQYXtDl3kwc;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mResumeLastTaskRunnable:Ljava/lang/Runnable;

    .line 3750
    new-instance v3, Lcom/miui/home/recents/NavStubView$15;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$15;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    .line 3769
    new-instance v3, Lcom/miui/home/recents/NavStubView$16;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$16;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    .line 3814
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    .line 3826
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$0VZfRX-bAJJd-IN7xTzcla6fmVg;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$0VZfRX-bAJJd-IN7xTzcla6fmVg;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    .line 4063
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$bgOGYPF5MkOqOgG_kf53TsEbRKY;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$bgOGYPF5MkOqOgG_kf53TsEbRKY;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4775
    new-instance v3, Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$MotionEventPosition;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    .line 4809
    sget-object v3, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    .line 4873
    new-instance v3, Lcom/miui/home/recents/NavStubView$21;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$21;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRemoveTopViewRunnable:Ljava/lang/Runnable;

    .line 776
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 778
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 779
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 780
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 781
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 783
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    .line 784
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 785
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 786
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 787
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    .line 789
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 790
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 791
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    .line 793
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 794
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->setIsUseForHomeGesture(Z)V

    .line 795
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 796
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 798
    new-instance v3, Lcom/miui/home/recents/NavStubView$H;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/home/recents/NavStubView$H;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$1;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 799
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    const/16 v3, 0x8

    .line 800
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    .line 802
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedTouchSlop:I

    .line 804
    new-instance v2, Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-direct {v2, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    .line 805
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-virtual {v2}, Lcom/miui/home/recents/AntiMistakeTouchView;->getFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/recents/NavStubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    new-instance v2, Lcom/miui/home/recents/GestureStateMachine;

    const-string v3, "GestureStateMachine"

    invoke-direct {v2, v3, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 808
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    .line 810
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenLongSize()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    aput v3, v2, v1

    .line 811
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenLongSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 813
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/FsGestureAssistHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    .line 814
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isOneHandedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/OneHandedModeInputConsumer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    .line 818
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTopWindowCrop()V

    .line 819
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    .line 821
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    .line 822
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerAlpha()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncherAlphaInRecents:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    return p0
.end method

.method static synthetic access$116(Lcom/miui/home/recents/NavStubView;F)F
    .locals 1

    .line 145
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedAdjustTouchArea()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/NavStubView;)[F
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    return p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->disableTouch(Z)V

    return-void
.end method

.method static synthetic access$2302(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    return p0
.end method

.method static synthetic access$2500(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->injectMotionEvent(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    return p0
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    return p0
.end method

.method static synthetic access$2802(Lcom/miui/home/recents/NavStubView;I)I
    .locals 0

    .line 145
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    return p1
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result p0

    return p0
.end method

.method static synthetic access$316(Lcom/miui/home/recents/NavStubView;F)F
    .locals 1

    .line 145
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    return v0
.end method

.method static synthetic access$3200(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V
    .locals 0

    .line 145
    invoke-direct/range {p0 .. p10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    return p0
.end method

.method static synthetic access$3500(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    return p0
.end method

.method static synthetic access$3700(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTaskViewToInitPosition()V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    return p0
.end method

.method static synthetic access$4000(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    return p0
.end method

.method static synthetic access$4002(Lcom/miui/home/recents/NavStubView;I)I
    .locals 0

    .line 145
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    return p1
.end method

.method static synthetic access$4100(Lcom/miui/home/recents/NavStubView;F)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateTaskViewTransY(F)V

    return-void
.end method

.method static synthetic access$4200(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    return-void
.end method

.method static synthetic access$4300(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    return p0
.end method

.method static synthetic access$4400(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->onBreakOpenRectFAnimUpdate(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method static synthetic access$4500(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    return p0
.end method

.method static synthetic access$4700(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    return p0
.end method

.method static synthetic access$4800(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    return p0
.end method

.method static synthetic access$4900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncherAlphaInRecents:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    return p0
.end method

.method static synthetic access$5000(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFFFF)Landroid/graphics/RectF;
    .locals 0

    .line 145
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 145
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    return p1
.end method

.method static synthetic access$5100(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsInitFloatingIconLayer:Z

    return p0
.end method

.method static synthetic access$5102(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsInitFloatingIconLayer:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/home/recents/NavStubView;)Landroid/view/View;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAllAppsShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsStartDimLayerAlpha:F

    return p0
.end method

.method static synthetic access$5800(Lcom/miui/home/recents/NavStubView;F)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    return-void
.end method

.method static synthetic access$5900(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    return p0
.end method

.method static synthetic access$6000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 145
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    return p1
.end method

.method static synthetic access$6100(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    return-void
.end method

.method static synthetic access$6300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mCompleteEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    return-void
.end method

.method static synthetic access$6500(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p0
.end method

.method static synthetic access$6502(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6800(Lcom/miui/home/recents/NavStubView;Ljava/lang/Runnable;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resumeLastTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 145
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    return p1
.end method

.method static synthetic access$7100(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->disableUpdateStatusBarClock()V

    return-void
.end method

.method static synthetic access$7200(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    return-void
.end method

.method static synthetic access$7300(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startNewTask(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    return-void
.end method

.method static synthetic access$7500(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7602(Lcom/miui/home/recents/NavStubView;I)I
    .locals 0

    .line 145
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    return p1
.end method

.method static synthetic access$7700(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$ModeGesture;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method static synthetic access$7900(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTopWindowCrop()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    return p0
.end method

.method static synthetic access$8000(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$MotionEventPosition;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initAndUpdateTopWindowCrop(Lcom/miui/home/recents/NavStubView$MotionEventPosition;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitTopWindowCrop()V

    return-void
.end method

.method static synthetic access$8200(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startTopWindow()V

    return-void
.end method

.method static synthetic access$8300(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTopWindowCropConfiguration()V

    return-void
.end method

.method static synthetic access$8400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/RecentsTopWindowCrop;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/miui/home/recents/NavStubView;)Landroid/view/WindowManager;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    return p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private accessibilityTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 4299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4307
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPauseWhileSwipeUp()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAccessibilityMenuShortcutAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4308
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->notifyAccessibilityButtonLongClicked()V

    goto :goto_0

    .line 4309
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4310
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->notifyAccessibilityButtonClicked(I)V

    :cond_1
    :goto_0
    const-string p1, "accessibilityTouchResolution"

    .line 4312
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_1

    .line 4303
    :cond_2
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private actionUpResolution()V
    .locals 2

    .line 4532
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4533
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getActionUpSpeedAndDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    return-void
.end method

.method private addHomeModeLayoutListener()V
    .locals 2

    .line 4077
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4078
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4079
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private appTouchResolution(Landroid/view/MotionEvent;)V
    .locals 8

    .line 2019
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isBlockedAfterExitSmallWindowMode(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isBlockedAfterStartNewTask(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2022
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 2024
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2025
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2026
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->resumeLastTask(Ljava/lang/Runnable;)V

    .line 2029
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initAppModeValues()V

    .line 2031
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->breakOpenAnimIfNeeded()V

    .line 2033
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskInfo()V

    .line 2034
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez p1, :cond_2

    .line 2035
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsAnimation()V

    .line 2038
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 2040
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initLauncherViewState()V

    .line 2042
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2043
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->isOpenAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v3

    .line 2044
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 2046
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeAllTopWindowMessages()V

    .line 2047
    invoke-direct {p0, v3, v2}, Lcom/miui/home/recents/NavStubView;->sendTopWindowMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2048
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v4, :cond_6

    .line 2049
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 2050
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 2051
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 2052
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 2053
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDimAlpha()V

    .line 2054
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2055
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDimAlpha:F

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    .line 2058
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mMotionEventPosition:Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->update(Landroid/view/MotionEvent;)Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/miui/home/recents/NavStubView;->sendTopWindowMessage(ILjava/lang/Object;)V

    .line 2059
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1, v5}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 2060
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 2061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_b

    .line 2063
    :cond_7
    new-instance p1, Lcom/miui/home/recents/-$$Lambda$NavStubView$Rf0xe-_jjBIsYG4fJOVLeuCpW2E;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$Rf0xe-_jjBIsYG4fJOVLeuCpW2E;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const-wide/16 v6, 0x1e

    invoke-virtual {p0, p1, v6, v7}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2065
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 2066
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelBreakOpenRectFAnim()V

    const/4 p1, 0x0

    .line 2067
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 2069
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez p1, :cond_8

    .line 2070
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    .line 2073
    :cond_8
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isStartTopWindow()Z

    move-result p1

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_9

    .line 2074
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    .line 2075
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStateMachine;->removeCallbacksAndMessage()V

    const/4 p1, 0x4

    .line 2076
    invoke-direct {p0, p1, v2}, Lcom/miui/home/recents/NavStubView;->sendTopWindowMessage(ILjava/lang/Object;)V

    .line 2077
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v4, Lcom/miui/home/recents/-$$Lambda$NavStubView$kulUN-GVd_wXQiGfGpB7eB_iXH8;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$kulUN-GVd_wXQiGfGpB7eB_iXH8;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2078
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishHideTaskView()V

    .line 2079
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v3}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlur(Lcom/miui/home/launcher/Launcher;Z)V

    const-string p1, "startTopWindow"

    .line 2080
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_0

    .line 2081
    :cond_9
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-eqz p1, :cond_a

    .line 2083
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    .line 2084
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string p1, "appHandleGesture"

    .line 2085
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 2086
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v3}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 2087
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getActionUpSpeedAndDirection()I

    move-result p1

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/miui/home/recents/NavStubView;->sendBroadcastToAppForHandleGesture(ILjava/lang/String;)V

    goto :goto_0

    .line 2089
    :cond_a
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    .line 2091
    :goto_0
    invoke-direct {p0, v5, v2, v0, v1}, Lcom/miui/home/recents/NavStubView;->sendTopWindowMessage(ILjava/lang/Object;J)V

    :cond_b
    :goto_1
    return-void

    :cond_c
    :goto_2
    return-void
.end method

.method private assistantEditTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 4256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4260
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4264
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullUp()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 4265
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    const/4 v1, 0x1

    .line 4266
    invoke-virtual {p0, v1, v0, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    :cond_0
    const-string p1, "assistantEditTouchResolution"

    .line 4268
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private assistantTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/FsGestureAssistHelper;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 1608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "assistantTouchResolution"

    .line 1611
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private boostGesture()V
    .locals 7

    .line 1354
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1355
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget v5, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    sget v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/launcher/utils/BoostHelper;->boostGesture(JLandroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private breakOpenAnimIfNeeded()V
    .locals 1

    .line 2217
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->needBreakOpenAnim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 2218
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 2220
    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->breakOpenAnim()V

    :cond_0
    return-void
.end method

.method private calcIsAppHandleGesture(Landroid/content/ComponentName;)Z
    .locals 4

    if-nez p1, :cond_0

    .line 1553
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "isAppHandleGesture, launcher handle gesture, because runningTaskTopActivityComponentName is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 1556
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.personalassistant.picker.business.home.pages.PickerHomeActivity:com.miui.personalassistant.picker.business.home.pages.PickerSearchActivity:com.miui.personalassistant.picker.business.list.activity.PickerAppListActivity:com.miui.personalassistant.picker.business.list.activity.PickerMaMlListActivity:com.miui.personalassistant.picker.business.detail.PickerDetailActivity:com.miui.personalassistant.maml.EditMamlWidgetActivity"

    .line 1557
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1558
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAppHandleGesture, runningTaskClassName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isAppHandleGesture="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private calculateDamping()F
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    return v0

    :cond_0
    const v0, 0x3f5c28f6    # 0.86f

    return v0
.end method

.method private calculateDimAlpha()V
    .locals 2

    .line 1927
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDimAlpha:F

    return-void
.end method

.method private calculateResponse()F
    .locals 2

    .line 458
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xfa

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    return v0
.end method

.method private calculateRotationRect(Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_0

    .line 2553
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "calculateRotationRect error"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2556
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 2557
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v2

    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 2559
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method private calculateTaskAlpha()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2481
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    .line 2482
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    return v0
.end method

.method private calculateTaskFullscreenProgress()F
    .locals 3

    .line 2476
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 2477
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    return v0
.end method

.method private calculateTaskInitRectF()Landroid/graphics/Rect;
    .locals 4

    .line 2387
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2388
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateTaskPosition()V
    .locals 5

    .line 2402
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2406
    :cond_0
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculatePer(FF)F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2407
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskWidthNew(FF)F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 2409
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 2408
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskRatio(FFFZ)F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    .line 2411
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 2412
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->calculateTaskXY(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    .line 2414
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskFullscreenProgress()F

    .line 2415
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskRadius(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    .line 2416
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskAlpha()F

    return-void
.end method

.method private calculateTaskWidthHome()F
    .locals 3

    .line 2392
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    .line 2393
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    return v0
.end method

.method private calculateTaskXHome()F
    .locals 4

    .line 2397
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x43480000    # 200.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewX:F

    .line 2398
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewX:F

    return v0
.end method

.method private calculateTaskXY(Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 6

    .line 2420
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 2421
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    move-object v0, p1

    .line 2420
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskY(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    .line 2422
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    .line 2423
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2424
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPortraitDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2425
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    .line 2426
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    goto/16 :goto_0

    .line 2427
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPortraitDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2428
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    .line 2429
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    goto :goto_0

    .line 2430
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v0

    if-nez v0, :cond_2

    .line 2431
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    .line 2432
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    goto :goto_0

    .line 2433
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2434
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    .line 2435
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    :cond_3
    :goto_0
    return-void
.end method

.method private cancelBreakOpenRectFAnim()V
    .locals 1

    .line 2537
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    .line 2538
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2539
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2542
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    const/4 v0, 0x1

    .line 2543
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    return-void
.end method

.method private cancelSyncTransactionApplier()V
    .locals 2

    .line 3245
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method

.method private changeAlphaScaleForFsGesture(FF)V
    .locals 2

    .line 833
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$I_IxLGTFIV3uaeo6kQPrxjebR6s;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$I_IxLGTFIV3uaeo6kQPrxjebR6s;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkTopWindowCrop()V
    .locals 2

    .line 4916
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsSupportPushAppEnterWorldCirculate:Z

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportPushAppEnterWorldCirculate:Z

    if-eq v0, v1, :cond_0

    .line 4917
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTopWindowCrop()V

    :cond_0
    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 1348
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1349
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1350
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    return-void
.end method

.method private disableTouch(Z)V
    .locals 3

    const-string v0, "NavStubView_Touch"

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableTouch    old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    if-eq v0, p1, :cond_0

    .line 1091
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    .line 1092
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method private disableUpdateStatusBarClock()V
    .locals 3

    .line 3821
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 3822
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    .line 3823
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private endAppToRecentsAnimIfNeeded()V
    .locals 1

    .line 3270
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAppToRecentsAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3271
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    :cond_0
    return-void
.end method

.method private exitFreeFormWindowIfNeeded()V
    .locals 0

    return-void
.end method

.method private exitTopWindowCrop()V
    .locals 2

    .line 4865
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::exitTopWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4870
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRemoveTopViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->exitTopWindowCrop(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finalization(Ljava/lang/String;)V
    .locals 3

    .line 4592
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>>>finalization executed from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4595
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 4598
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsPointerEvent:Z

    .line 4599
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 4600
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "ignore_bring_to_front"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 4601
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "filter_flag"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 4603
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 4604
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4606
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    return-void
.end method

.method private findClosingAnimTarget(Landroid/graphics/Rect;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 2

    .line 2675
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2676
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    return-object p1

    .line 2679
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->findClosingWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2681
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->findClosingShortcutIcon(Landroid/graphics/Rect;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private findClosingShortcutIcon(Landroid/graphics/Rect;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 4

    .line 2635
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needFindClosingShortcutIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2636
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->getClosingApp(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/util/ComponentAndUserId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2638
    iget-object v2, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->componentName:Landroid/content/ComponentName;

    iget v0, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->userId:I

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v0, v3}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 2643
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2646
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 2648
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v3, "can\'t get closingIcon location"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2649
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method private findClosingWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 7

    .line 2657
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->getClosingApp(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/util/ComponentAndUserId;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2658
    iget-object v2, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2661
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v2

    .line 2662
    invoke-virtual {v2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object v2

    .line 2663
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needFindClosingShortcutIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 2664
    iget-object v0, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2665
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getScreenId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2666
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->isMatchClosingAppPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2667
    invoke-virtual {v2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private finishHideTaskView()V
    .locals 2

    .line 2743
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$QSrj9tH6KjmIqlokksQAHpv2hXQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$QSrj9tH6KjmIqlokksQAHpv2hXQ;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getActionUpSpeedAndDirection()I
    .locals 1

    .line 4509
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 4511
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4512
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    .line 4514
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullRight()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 4520
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    .line 4522
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullRight()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method private getClosingApp(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/util/ComponentAndUserId;
    .locals 2

    .line 2617
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2618
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    .line 2619
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2620
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2621
    new-instance v0, Lcom/miui/home/launcher/util/ComponentAndUserId;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/util/ComponentAndUserId;-><init>(Landroid/content/ComponentName;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2624
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/util/ComponentAndUserId;

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/util/ComponentAndUserId;-><init>(Landroid/content/ComponentName;I)V

    :goto_0
    return-object v0
.end method

.method private getCurRect()Landroid/graphics/RectF;
    .locals 6

    .line 2547
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTempCurrentRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    add-float v4, v1, v3

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2548
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTempCurrentRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F
    .locals 1

    .line 463
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method private getCurrentTaskViewRatio()F
    .locals 3

    .line 467
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 468
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 469
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getCurrentWindowMode(Landroid/view/MotionEvent;ZZZ)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    return p1

    .line 1527
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isStartOrStopOneHandMode()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x7

    return p1

    .line 1530
    :cond_1
    iget-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsAssistantInEditMode:Z

    if-eqz p2, :cond_2

    const/16 p1, 0x10

    return p1

    .line 1533
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    invoke-virtual {p2, p1, v0, v1}, Lcom/miui/home/recents/FsGestureAssistHelper;->canTriggerAssistantAction(FFI)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    return p1

    .line 1536
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    return p1

    .line 1539
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAccessibilityMenuAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsPointerEvent:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x8

    return p1

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    const/4 p1, 0x3

    return p1

    :cond_6
    if-eqz p3, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x2

    return p1
.end method

.method private getFgSmallWindowCountBetweenA_B(Ljava/util/List;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;II)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 668
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    if-eq p2, p3, :cond_2

    .line 670
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 671
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_1

    .line 673
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p3, :cond_0

    .line 674
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;
    .locals 4

    .line 1824
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1825
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1826
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1828
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1829
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1831
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private getHomeRotation()I
    .locals 1

    .line 2448
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getPercentsValue(FFF)F
    .locals 1

    const/4 v0, 0x0

    .line 2486
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private getQuickSwitchOrRunningTaskId()I
    .locals 1

    .line 489
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    :goto_0
    return v0
.end method

.method private getQuickSwitchOrRunningTaskIndex()I
    .locals 1

    .line 485
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    :goto_0
    return v0
.end method

.method private getRunningTaskInfo()V
    .locals 2

    .line 1954
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    .line 1955
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 1957
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 1961
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTaskInfoUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    .line 1962
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    .line 1963
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->calcIsAppHandleGesture(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    return-void
.end method

.method private getRunningTaskPkgName()Ljava/lang/String;
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    .line 2468
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 2

    .line 2598
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2599
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2600
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTaskView()V
    .locals 14

    .line 2754
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHideTaskViewRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2756
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mHideTaskViewRectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v6

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2757
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v10

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v11

    const/4 v12, 0x1

    new-instance v13, Lcom/miui/home/recents/-$$Lambda$NavStubView$qoPoQ_xJ_KZt4dYsnv45CyxZs24;

    invoke-direct {v13, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$qoPoQ_xJ_KZt4dYsnv45CyxZs24;-><init>(Lcom/miui/home/recents/NavStubView;)V

    move-object v4, p0

    .line 2756
    invoke-direct/range {v4 .. v13}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;)V

    goto :goto_0

    .line 2760
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishHideTaskView()V

    :goto_0
    return-void
.end method

.method private homeTouchResolution(Landroid/view/MotionEvent;)V
    .locals 4

    .line 4026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4047
    :pswitch_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/miui/home/recents/NavStubView;->linearToCubic(FFFF)F

    move-result v0

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    .line 4049
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 4050
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 4052
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 4053
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 4057
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    .line 4058
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    goto :goto_0

    .line 4028
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 4029
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyHomeModeFsGestureStart()V

    .line 4031
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->cancelAppToHomeAnim()V

    .line 4032
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$39gpsGwgi5ZwKN5RgUTsTsI_SYo;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$39gpsGwgi5ZwKN5RgUTsTsI_SYo;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 4038
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 4039
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 4040
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->HOME_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 4041
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    const/4 p1, -0x1

    .line 4042
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 4043
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 4044
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xg1oBXg8Taru-l6F8VPSEAtVLQc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$xg1oBXg8Taru-l6F8VPSEAtVLQc;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ignoreTouchPosition(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initAndUpdateTopWindowCrop(Lcom/miui/home/recents/NavStubView$MotionEventPosition;)V
    .locals 6

    .line 4812
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4815
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->shouldInitTopWindowCrop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    sget-object v1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    if-ne v0, v1, :cond_2

    .line 4817
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4818
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->checkTopWindowCrop()V

    .line 4819
    sget-boolean p1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportPushAppEnterWorldCirculate:Z

    if-nez p1, :cond_0

    .line 4820
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterMiniSmallWindow(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4821
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initTopWindowCrop()V

    .line 4823
    :cond_1
    sget-object p1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->FINISH:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    goto :goto_0

    .line 4824
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4825
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iget v1, p1, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawX:F

    iget p1, p1, Lcom/miui/home/recents/NavStubView$MotionEventPosition;->rawY:F

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    .line 4826
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 4825
    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->updateState(FFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initAppModeValues()V
    .locals 2

    .line 2098
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 2100
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 2101
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 2102
    sget-object v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    .line 2103
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 2104
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelSyncTransactionApplier()V

    .line 2105
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    return-void
.end method

.method private initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;ILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 2934
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2935
    sget-object p2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 2936
    instance-of p2, p3, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz p2, :cond_0

    const/16 p2, 0x3ea

    goto :goto_0

    :cond_0
    const/16 p2, 0x3e9

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setProgressCalculateType(I)V

    return-void
.end method

.method private initLauncherViewState()V
    .locals 2

    .line 2328
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$Lp74GswM3i7NNTrKCsN5eEDogTU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$Lp74GswM3i7NNTrKCsN5eEDogTU;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2341
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncherAlphaInRecents:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method private initTaskViews()V
    .locals 5

    .line 2371
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2373
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 2374
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 2375
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    const/4 v3, 0x0

    .line 2376
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 2377
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 2378
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 2379
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 2380
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 2381
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initTopWindowCrop()V
    .locals 8

    .line 4831
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::initTopWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4835
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::initTopWindowCrop    addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4836
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->getLayoutParamForWindow()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4839
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "NavStubView::initSmallWindowCrop error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4841
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4842
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 4843
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-static {v5, v6, v0, v7}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterMiniSmallWindow(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Ljava/lang/String;I)Z

    move-result v5

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    .line 4844
    invoke-static {v6, v0, v7}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterWorldcirculate(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;I)Z

    move-result v6

    .line 4842
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->initTopWindowCrop(ZIIZZ)V

    return-void
.end method

.method private initValue(Landroid/view/MotionEvent;)V
    .locals 2

    .line 4485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    .line 4486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    .line 4487
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine;

    const-string v0, "GestureStateMachine"

    invoke-direct {p1, v0, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 4488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mDownTime:J

    const/4 p1, 0x0

    .line 4489
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    .line 4491
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDelta:F

    .line 4492
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    .line 4493
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    .line 4494
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    const/4 p1, 0x0

    .line 4495
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    .line 4496
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    .line 4497
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    .line 4498
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureStartEvent:Lcom/miui/home/recents/messages/FsGestureStartEvent;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private injectMotionEvent(I)V
    .locals 21

    move-object/from16 v1, p0

    .line 1130
    iget-object v0, v1, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 1136
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v2, :cond_1

    .line 1138
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " downX: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " downY: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " flags:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1138
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 1141
    new-array v11, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 1143
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v15, 0x0

    aput-object v3, v11, v15

    .line 1145
    aget-object v3, v11, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1146
    new-array v12, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 1147
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v12, v15

    .line 1149
    aget-object v3, v12, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1150
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1151
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1152
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    const/4 v10, 0x1

    .line 1154
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 1155
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    .line 1156
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 1157
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    move/from16 v9, p1

    move v0, v15

    move v15, v3

    .line 1152
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v4, "android.hardware.input.InputManager"

    .line 1161
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInstance"

    .line 1162
    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 1163
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1166
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "injectInputEvent"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/view/InputEvent;

    aput-object v9, v8, v0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1167
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isAccessibilityMenuAvailable()Z
    .locals 1

    .line 4908
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAccessibilityMenuShortcutAvailable()Z
    .locals 1

    .line 4912
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAllAppsShowing()Z
    .locals 1

    .line 3240
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3241
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAllowToAppHoldState()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isInHoverState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAppToRecentsAnimRunning()Z
    .locals 1

    .line 3266
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBlockedAfterExitSmallWindowMode(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1984
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    return p1

    :pswitch_0
    const-string p1, "BLOCKER_ID_FOR_APP_DRAG_AFTER_EXIT_SMALL_WINDOW_MODE"

    .line 1971
    invoke-static {p1}, Lcom/miui/home/recents/util/TimeOutBlocker;->isBlocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1972
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isLastValidSmallWindowPackageName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    .line 1973
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsBlockedAfterExitSmallWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    return p1

    .line 1977
    :cond_1
    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    if-eqz p1, :cond_2

    const-string v0, "isBlocked"

    .line 1979
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 1981
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterExitSmallWindowMode:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isBlockedAfterStartNewTask(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2007
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    return p1

    .line 1994
    :pswitch_0
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    .line 1995
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsBlockedAfterStartNewTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    return p1

    .line 1999
    :cond_0
    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    if-eqz p1, :cond_1

    const-string v0, "isBlocked"

    .line 2001
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 2003
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    .line 2004
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsBlockedAfterStartNewTask:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDifferentRotation()Z
    .locals 3

    .line 2441
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2442
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isFastPullDown()Z
    .locals 2

    .line 4573
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFastPullUp()Z
    .locals 4

    .line 4561
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFastPullUp  mPivotLocY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mFollowTailY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   TAIL_GAP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   vx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   vy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3e380000    # -25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    .line 4567
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 4569
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInDarkMode(Landroid/content/res/Configuration;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 826
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInvalidRectF(Landroid/graphics/RectF;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 2829
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

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

.method private isLandScapeActually()Z
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLandscapeDisplay()Z
    .locals 4

    .line 2460
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2461
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private isLandscapeVisually()Z
    .locals 2

    .line 497
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLightBgForStatusBar()Z
    .locals 3

    .line 2147
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2148
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2149
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2150
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2152
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private isMistakeTouch()Z
    .locals 3

    .line 4007
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4011
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandScapeActually()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    if-nez v0, :cond_2

    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method private isNeedAdjustTouchArea()Z
    .locals 2

    .line 930
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v0, :cond_0

    .line 931
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedStopBecauseRecentsRemoteAnimStartFailed()Z
    .locals 1

    .line 3552
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOneHandedModeActive()Z
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->isOneHandedModeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOneHandedModeEnabled()Z
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->isOneHandedModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOneHandedModeSupported()Z
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isOneHandedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPauseWhileSwipeUp()Z
    .locals 2

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPortraitDisplay()Z
    .locals 3

    .line 2452
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2453
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method private isPullLeft()Z
    .locals 2

    .line 4581
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3e380000    # -25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPullRight()Z
    .locals 2

    .line 4577
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isQuickSwitchMode()Z
    .locals 2

    .line 481
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecentsContainerLandscapeVisually()Z
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 504
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 505
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 506
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecentsLoaded()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 477
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecentsRemoteAnimStarted()Z
    .locals 1

    .line 3556
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStartOrStopOneHandMode()Z
    .locals 3

    .line 1588
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsContainerLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1592
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedTouchSlop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeActive()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private isStartTopWindow()Z
    .locals 1

    .line 4886
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTopWindowInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isInHoverState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTaskStackLayoutStyleVertical()Z
    .locals 1

    .line 2593
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2594
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTopWindowInit()Z
    .locals 1

    .line 4852
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isInit()Z

    move-result v0

    return v0
.end method

.method private keyguardTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 4279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4283
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4287
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullUp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4288
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 4289
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    const/4 v1, 0x1

    .line 4290
    invoke-virtual {p0, v1, v0, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    :cond_0
    const-string p1, "keyguardTouchResolution"

    .line 4293
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic lambda$6C0vZ9anbQmBpmv_BOLvfDFYU_0(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->onBreakOpenRectFAnimUpdate(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public static synthetic lambda$7BL0kbxBcE19-XdTQcRtA1ebi74(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->onInputConsumerEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$actionMoveQuickSwitchTaskHold$10(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1875
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$actionMoveRecentsDrag$45(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    .line 4348
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4349
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsRecentsMoveAnim(Lcom/miui/home/recents/views/RecentsView;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$appTouchResolution$12(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 2063
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    return-void
.end method

.method public static synthetic lambda$changeAlphaScaleForFsGesture$7(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 6

    .line 834
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    .line 835
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->changeShortcutMenuLayerAlphaScale(FFIIZ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$enterHomeHoldState$42(Lcom/miui/home/recents/NavStubView;)V
    .locals 12

    .line 4092
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "enterHomeHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4096
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 4097
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 4098
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v3, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 4102
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    .line 4103
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4105
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    .line 4106
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsView;->updateEmptyView(I)V

    .line 4109
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startHomeFadeOutAnim()V

    .line 4110
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4111
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    const/4 v5, -0x1

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v9

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v10

    const/4 v11, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    .line 4112
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_2

    .line 4113
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->addHomeModeLayoutListener()V

    .line 4115
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 4117
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 4118
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 4119
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 4121
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$enterRecentsHoldState$46(Lcom/miui/home/recents/NavStubView;)V
    .locals 4

    const/4 v0, 0x1

    .line 4357
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateHomeAnim(Z)V

    const/4 v1, 0x0

    .line 4358
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->startRecentsStateRecentsAnim(Z)V

    .line 4359
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHoldStateEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4361
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v0}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 4362
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    return-void
.end method

.method public static synthetic lambda$exitHomeHoldState$43(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    .line 4131
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    .line 4132
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->hideEmptyView()V

    const-wide/16 v0, 0xfa

    .line 4134
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    .line 4135
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsFadeOutAnim()V

    .line 4137
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 4138
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    return-void
.end method

.method public static synthetic lambda$exitRecentsHoldState$47(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    const/4 v0, 0x0

    .line 4369
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateHomeAnim(Z)V

    const/4 v0, 0x1

    .line 4370
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateRecentsAnim(Z)V

    .line 4371
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mExitStateEvent:Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4373
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 4374
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    return-void
.end method

.method public static synthetic lambda$finishAppToHome$28(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    const/4 v0, 0x0

    .line 3255
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    return-void
.end method

.method public static synthetic lambda$finishAppToHome$29(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3259
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    return-void
.end method

.method public static synthetic lambda$finishHideTaskView$19(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 2744
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2745
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 2746
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$homeTouchResolution$39(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 4033
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 4034
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyStateIfNeed()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$homeTouchResolution$40(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 4044
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->endAnimation()V

    return-void
.end method

.method public static synthetic lambda$initLauncherViewState$16(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    .line 2329
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 2330
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initTaskViews()V

    .line 2331
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2332
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenGestureAppModeStart(Lcom/miui/home/launcher/Launcher;)V

    .line 2337
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->endAnimation()V

    .line 2338
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->cancelHomeFadeInAnim()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$kL2-zypLqbYJF5RcydxJAxbnUOU(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$kulUN-GVd_wXQiGfGpB7eB_iXH8(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    return-void
.end method

.method public static synthetic lambda$new$14(Lcom/miui/home/recents/NavStubView;)V
    .locals 6

    .line 2167
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2168
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2169
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 2170
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2171
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    .line 2172
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    .line 2173
    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 2174
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 2175
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 2176
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2178
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    .line 2179
    aput v3, v1, v4

    const/4 v3, 0x2

    .line 2180
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    aput v4, v1, v3

    .line 2181
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v1, v3

    .line 2183
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRadius()F

    move-result v0

    .line 2184
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "KEY_RECENTSANIMATION_MATRIX"

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_RECENTSANIMATION_CROP"

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    .line 2185
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_RECENTSANIMATION_RADIUS"

    .line 2186
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    .line 2188
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeRecentsAnimationExtra()V

    goto :goto_0

    .line 2191
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeRecentsAnimationExtra()V

    .line 2193
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    return-void
.end method

.method public static synthetic lambda$new$21(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 2796
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method public static synthetic lambda$new$35(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 3740
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3741
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 3743
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    return-void
.end method

.method public static synthetic lambda$new$37(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    const/4 v0, 0x0

    .line 3827
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    return-void
.end method

.method public static synthetic lambda$new$41(Lcom/miui/home/recents/NavStubView;)V
    .locals 11

    const/4 v0, 0x1

    .line 4064
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 4065
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeHomeModeLayoutListener()V

    .line 4066
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4067
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v8

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v9

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    .line 4068
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-eqz v0, :cond_0

    .line 4069
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveHomeTaskHold()V

    .line 4071
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    if-eqz v0, :cond_1

    .line 4072
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onInputConsumerEvent$8(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    .line 968
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onSystemUiFlagsChanged$9(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v0, :cond_1

    .line 1185
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1184
    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$performAppToApp$32(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;ILcom/miui/home/recents/views/TaskView;)V
    .locals 10

    .line 3673
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 3674
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 3675
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->calculateRotationRect(Landroid/graphics/RectF;)V

    .line 3676
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    if-eqz p3, :cond_0

    .line 3678
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$performAppToApp$33(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V
    .locals 10

    if-eqz p1, :cond_0

    .line 3685
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 3686
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->calculateRotationRect(Landroid/graphics/RectF;)V

    .line 3687
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$performAppToApp$34(Lcom/miui/home/recents/NavStubView;FFILcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;FFF)V
    .locals 3

    .line 3665
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sub-float v1, v0, p1

    mul-float/2addr v1, p7

    add-float/2addr v1, p1

    .line 3669
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    sub-float v1, v0, p2

    mul-float/2addr v1, p7

    add-float/2addr p2, v1

    .line 3670
    iput p2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 3671
    iget p2, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p2, v1, :cond_1

    .line 3672
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$NavStubView$Nuv5Xk01M8mUgeAWm2YQsj7nJXE;

    invoke-direct {p2, p0, p6, p3, p4}, Lcom/miui/home/recents/-$$Lambda$NavStubView$Nuv5Xk01M8mUgeAWm2YQsj7nJXE;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;ILcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    sub-float p2, v2, p1

    mul-float/2addr p2, p7

    add-float/2addr p1, p2

    .line 3683
    invoke-direct {p0, p6, p1, p8, p9}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 3684
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p3, Lcom/miui/home/recents/-$$Lambda$NavStubView$cqYffO2rNGhh2Xfq3qI9q19Y2Dc;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$cqYffO2rNGhh2Xfq3qI9q19Y2Dc;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    sub-float p1, v2, p5

    .line 3692
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 3693
    invoke-virtual {p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCenterXProgress()F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr p5, p1

    .line 3694
    invoke-direct {p0, p5}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$performAppToHome$18(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 2696
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2697
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsSheet;->shouldShow(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2698
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideLandscapeShortcutMenuLayer()V

    .line 2700
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2701
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-boolean v2, v0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 2702
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 2703
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 2705
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2706
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 2708
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 2707
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    .line 2710
    :cond_2
    invoke-static {p1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 2711
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->hideTaskView()V

    .line 2712
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onGesturePerformAppToHome()V

    .line 2713
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->updateMamlDownloadVisible(I)V

    return-void
.end method

.method public static synthetic lambda$performAppToRecents$31(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 3341
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    return-void
.end method

.method public static synthetic lambda$performHomeToHome$44(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 4175
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->cancelHomeFadeInAnim()V

    .line 4176
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4177
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4180
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 4182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ignore_bring_to_front"

    const/4 v2, 0x1

    .line 4183
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "filter_flag"

    .line 4184
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4185
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$performRecentsRest$50(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 3

    .line 4422
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4425
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4427
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->exitRecentsHoldState()V

    .line 4429
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsRecentsResetAnim(Lcom/miui/home/recents/views/RecentsView;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$qoPoQ_xJ_KZt4dYsnv45CyxZs24(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishHideTaskView()V

    return-void
.end method

.method public static synthetic lambda$quickSwitchTouchResolution$11(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 1897
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1899
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$removeAllTopWindowMessages$51(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 4860
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRemoveTopViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$resetLauncherProperty$20(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 2

    .line 2770
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    .line 2771
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2772
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    .line 2774
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 2776
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->postGoToNormalStartRunnable()V

    goto :goto_0

    .line 2778
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2781
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherView()V

    .line 2782
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$resetLauncherView$17(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    .line 2360
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 2363
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 2364
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 2365
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 2363
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method static synthetic lambda$resetTaskView$5(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    const/4 v0, 0x0

    .line 736


    const/4 v0, 0x0

    .line 737
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    return-void
.end method

.method public static synthetic lambda$resetTaskView$6(Lcom/miui/home/recents/NavStubView;)V
    .locals 15

    .line 685
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsZoomEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->enterRecentsOfFsGesture()V

    .line 692
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, 0x320

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    .line 694
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenGestureResetTaskView(Lcom/miui/home/launcher/Launcher;Z)V

    .line 696
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-eq v0, v1, :cond_1

    .line 697
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 703
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v2

    .line 705
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/miui/home/recents/views/TaskView;

    .line 706
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v4, v0, v4

    int-to-float v4, v4


    .line 708
    invoke-virtual {v11}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v7

    .line 709
    invoke-direct {p0, v11}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v9

    .line 710
    invoke-virtual {v11}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskRatio()F

    move-result v10

    .line 711
    invoke-virtual {v11}, Lcom/miui/home/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v12, Lcom/miui/home/recents/NavStubView$3;

    move-object v5, v12

    move-object v6, p0

    move-object v8, v11

    invoke-direct/range {v5 .. v10}, Lcom/miui/home/recents/NavStubView$3;-><init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/recents/views/TaskView;FF)V

    .line 712
    invoke-virtual {v4, v12}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/miui/home/recents/NavStubView$2;

    invoke-direct {v5, p0, v11}, Lcom/miui/home/recents/NavStubView$2;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    .line 723
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 729
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x4

    .line 731
    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    mul-float/2addr v2, v5

    add-float v13, v2, v4

    .line 732
    invoke-virtual {v11, v1}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    .line 734
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const v12, 0x3f6147ae    # 0.88f

    new-instance v14, Lcom/miui/home/recents/-$$Lambda$NavStubView$l4aurw3_FwHb1H5Rl3n-18ThxVM;

    invoke-direct {v14, v11}, Lcom/miui/home/recents/-$$Lambda$NavStubView$l4aurw3_FwHb1H5Rl3n-18ThxVM;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    move-object v5, v11

    move v6, v3

    move v11, v2

    invoke-virtual/range {v4 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 740
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->sendFakeEvent()V

    return-void
.end method

.method public static synthetic lambda$showRecents$15(Lcom/miui/home/recents/NavStubView;)V
    .locals 4

    .line 2281
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "showRecents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2287
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2289
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2291
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2292
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncherAlphaInRecents:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    .line 2294
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 2295
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2296
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/OverviewState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 2297
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    goto :goto_0

    .line 2299
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v3, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2301
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v2, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 2302
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2303
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 2304
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 2305
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 2307
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 2309
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setUserControlled(Z)V

    .line 2311
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v2, v0, Lcom/miui/home/recents/OverviewState;->disableRestore:Z

    .line 2312
    new-instance v0, Lcom/miui/home/recents/NavStubView$8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$8;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic lambda$startAppToHomeAnim$22(Lcom/miui/home/recents/NavStubView;FILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FI)V
    .locals 7

    .line 2886
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 2887
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/NavStubView;->initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;ILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 2888
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v4, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->startAppToHomeInMainThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;II)V

    .line 2889
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherAlphaScaleWhenUseSimpleAnim()V

    return-void
.end method

.method public static synthetic lambda$startAppToHomeAnim$23(Lcom/miui/home/recents/NavStubView;IILandroid/graphics/RectF;FFF)V
    .locals 0

    .line 2899
    iget-boolean p4, p0, Lcom/miui/home/recents/NavStubView;->mCancelFakeAppToHomeAnim:Z

    if-nez p4, :cond_0

    .line 2900
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p5, p3}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startAppToHomeAnim$24(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FII)V
    .locals 8

    .line 2908
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2909
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    goto :goto_0

    .line 2911
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->copyCurrentAnimState()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2912
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2913
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2914
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mCancelFakeAppToHomeAnim:Z

    .line 2915
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/NavStubView;->startAppToHomeInMainThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;II)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$startAppToHomeInGestureThread$25(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 3

    .line 3009
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppToHomeInGestureThread, mAppToHomeAnim2 update, reset icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method public static synthetic lambda$startAppToHomeInGestureThread$26(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;IIFLandroid/graphics/RectF;FFF)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p5

    .line 2969
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 2973
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    if-eqz v8, :cond_1

    const v0, 0x3f333333    # 0.7f

    sub-float v0, v0, p6

    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-float v0, v11, p6

    goto :goto_0

    :cond_2
    sub-float v0, v11, p6

    .line 2975
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 2976
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_3
    move v0, v10

    .line 2978
    :goto_0
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2980
    instance-of v0, v8, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_5

    .line 2981
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    goto :goto_1

    :cond_4
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v0

    :goto_1
    move v12, v0

    goto :goto_4

    :cond_5
    cmpl-float v0, v4, v11

    if-nez v0, :cond_6

    move v0, v10

    goto :goto_2

    :cond_6
    move v0, v11

    .line 2983
    :goto_2
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2984
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    iget-object v2, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v1

    goto :goto_3

    :cond_7
    move v1, v11

    :goto_3
    mul-float/2addr v0, v1

    move v12, v0

    :goto_4
    const v0, 0x3f8ccccd    # 1.1f

    mul-float v0, v0, p8

    .line 2987
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2989
    iget-boolean v0, v7, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_8

    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2990
    iget v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    sub-float v1, v11, v0

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    goto :goto_5

    :cond_8
    move v0, v11

    .line 2992
    :goto_5
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    if-eqz v8, :cond_9

    .line 2994
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 2996
    :cond_9
    instance-of v0, v8, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_a

    .line 2997
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    move-object v1, v8

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIconTitle(Lcom/miui/home/launcher/ShortcutIcon;)V

    move v0, p2

    move/from16 v1, p3

    goto :goto_6

    :cond_a
    move v0, p2

    move/from16 v1, p3

    .line 2999
    :goto_6
    invoke-static {p2, v1, v9}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v3, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFFFF)Landroid/graphics/RectF;

    .line 3001
    iget-boolean v0, v7, Lcom/miui/home/recents/NavStubView;->mNeedResetLauncherAlphaScale:Z

    if-eqz v0, :cond_b

    .line 3002
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherAlphaScaleWhenUseSimpleAnim()V

    const/4 v0, 0x0

    .line 3003
    iput-boolean v0, v7, Lcom/miui/home/recents/NavStubView;->mNeedResetLauncherAlphaScale:Z

    :cond_b
    if-eqz v8, :cond_c

    .line 3006
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    .line 3007
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isClosedToTarget(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3008
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$1Tbz1lZb-a9ksx078bixHtkn7QQ;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$1Tbz1lZb-a9ksx078bixHtkn7QQ;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3014
    :cond_c
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v0, :cond_d

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    cmpl-float v0, v12, v10

    if-lez v0, :cond_d

    .line 3015
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 3016
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    div-float v4, p7, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    :cond_d
    return-void
.end method

.method public static synthetic lambda$startAppToHomeInMainThread$27(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/recents/views/FloatingIconView;ZIILandroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V
    .locals 25

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v15, p9

    move/from16 v11, p10

    move/from16 v10, p11

    .line 3132
    iget-object v2, v12, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestCancel()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 3135
    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v9, v3

    mul-float v3, v3, p1

    .line 3136
    invoke-direct {v12, v3}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    if-eqz v13, :cond_1

    const v3, 0x3f4ccccd    # 0.8f

    sub-float/2addr v3, v11

    const v4, 0x3e99999a    # 0.3f

    div-float/2addr v3, v4

    goto :goto_0

    :cond_1
    sub-float v3, v9, v11

    .line 3138
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 3141
    instance-of v3, v13, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v3, :cond_3

    .line 3142
    iget-object v3, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v9

    goto :goto_1

    :cond_2
    iget-object v3, v12, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    iget-object v4, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v3

    :goto_1
    move v7, v3

    goto :goto_4

    :cond_3
    cmpl-float v3, v8, v9

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v9

    .line 3144
    :goto_2
    iget-object v4, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3145
    iget-object v4, v12, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    iget-object v5, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v9

    :goto_3
    mul-float/2addr v3, v4

    move v7, v3

    :goto_4
    cmpl-float v3, v7, v2

    if-eqz v3, :cond_8

    if-eqz v14, :cond_8

    .line 3148
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/FloatingIconView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_8

    if-nez p4, :cond_7

    .line 3152
    iget-object v3, v12, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3153
    iget-object v3, v12, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/miui/home/recents/util/Utilities;->getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 3154
    invoke-static {v0, v1, v3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v12, v3, v2, v10, v8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 3157
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->setSyncTransactionApplier()V

    :cond_7
    const/4 v3, 0x0

    .line 3159
    invoke-virtual {v14, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    :cond_8
    if-eqz p4, :cond_a

    .line 3163
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, v12, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 3164
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, v12, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 3165
    iput v10, v12, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    .line 3166
    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 3167
    iget v1, v12, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-direct {v12, v0, v1, v1}, Lcom/miui/home/recents/NavStubView;->getFgSmallWindowCountBetweenA_B(Ljava/util/List;II)I

    move-result v5

    .line 3168
    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, v12, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 3170
    iget v4, v12, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    move-object/from16 v3, p9

    move-object/from16 v22, v6

    move/from16 v6, v16

    move/from16 v23, v7

    move/from16 v7, v17

    move/from16 v24, v8

    move/from16 v8, v18

    move/from16 v16, v9

    move/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;)V

    move-object/from16 v0, v22

    move/from16 v3, v24

    .line 3171
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 3172
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-direct {v12, v0}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    goto :goto_5

    :cond_9
    move/from16 v23, v7

    move/from16 v16, v9

    :goto_5
    move/from16 v1, p11

    goto :goto_6

    :cond_a
    move/from16 v23, v7

    move v3, v8

    move/from16 v16, v9

    if-eqz v13, :cond_b

    .line 3176
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 3178
    :cond_b
    invoke-static {v0, v1, v15}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    move/from16 v1, p11

    invoke-direct {v12, v0, v2, v1, v3}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    :goto_6
    if-eqz v14, :cond_c

    .line 3181
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 3182
    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3183
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v16

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface/range {p2 .. p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    neg-float v0, v0

    .line 3184
    invoke-virtual {v15, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 3185
    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    div-float v0, v1, p8

    move/from16 v3, v23

    move/from16 v1, p10

    .line 3186
    invoke-virtual {v14, v15, v3, v1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    :cond_c
    return-void

    :cond_d
    :goto_7
    return-void
.end method

.method public static synthetic lambda$startFirstTask$38(Lcom/miui/home/recents/NavStubView;FFLandroid/graphics/RectF;FFF)V
    .locals 9

    const/4 p5, 0x0

    sub-float p6, p5, p1

    mul-float/2addr p6, p4

    add-float/2addr p1, p6

    .line 3876
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    sub-float/2addr p5, p2

    mul-float/2addr p5, p4

    add-float/2addr p2, p5

    .line 3877
    iput p2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 3878
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    add-int/lit8 v2, p1, -0x1

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 3879
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p3

    .line 3878
    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeInAnim$0(Lcom/miui/home/recents/NavStubView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 402
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 403
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    .line 404
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 405
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeInAnim$1(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeOutAnim$2(Lcom/miui/home/recents/NavStubView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 429
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 430
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 433
    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeOutAnim$3(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$startRecentsStateHomeAnim$48(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xfa

    .line 4382
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    goto :goto_0

    .line 4384
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startHomeFadeOutAnim()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$startRecentsStateRecentsAnim$49(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 2

    .line 4392
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4394
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4396
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$switchToScreenshot$36(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3802
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3803
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3805
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_1

    .line 3807
    :cond_1
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToScreenshot failed, isThumbnailDataValid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isRecentsLoaded="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static synthetic lambda$updateSysUiFlagsDirectly$13(Lcom/miui/home/recents/NavStubView;FI)V
    .locals 2

    .line 2130
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2133
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->useHomeSysUiFlags(F)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2134
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 2135
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLightBgForStatusBar()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    goto :goto_1

    .line 2136
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2137
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_0

    .line 2139
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSysUiStatusNavFlags()I

    move-result p1

    .line 2140
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_3

    move p2, v0

    :cond_3
    invoke-virtual {v1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 2141
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic lambda$updateTaskViewNew$4(Lcom/miui/home/recents/NavStubView;ZLandroid/graphics/RectF;Ljava/lang/Runnable;ZZIFZFF)V
    .locals 23

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v14, p6

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_0

    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->isInHoverState()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_0
    iget-boolean v0, v12, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 622
    :cond_1
    invoke-direct {v12, v13}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 624
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 626
    :cond_2
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskViewNew error: rectF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const v15, 0x3ee66666    # 0.45f

    if-eqz p4, :cond_4

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v15

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v15

    div-float/2addr v2, v1

    .line 633
    invoke-virtual {v13, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 636
    :cond_4
    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz p3, :cond_5

    move/from16 v0, v16

    goto :goto_0

    :cond_5
    move/from16 v0, v17

    .line 638
    :goto_0
    iget v10, v13, Landroid/graphics/RectF;->left:F

    .line 639
    iget-object v1, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    move/from16 v18, v0

    move/from16 v8, v17

    :goto_1
    if-ge v8, v11, :cond_a

    .line 641
    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v2

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p5, :cond_6

    iget v0, v12, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-ne v2, v0, :cond_6

    move/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    goto/16 :goto_4

    .line 645
    :cond_6
    iget-object v0, v12, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 646
    invoke-direct {v12, v9, v2, v14}, Lcom/miui/home/recents/NavStubView;->getFgSmallWindowCountBetweenA_B(Ljava/util/List;II)I

    move-result v5

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_8

    if-ge v2, v14, :cond_7

    move/from16 v0, v16

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    .line 649
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v15

    add-float/2addr v0, v10

    .line 650
    iget v3, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/4 v0, 0x0

    move v7, v0

    goto :goto_3

    :cond_8
    move v7, v0

    :goto_3
    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v6, p7

    move/from16 v19, v8

    move/from16 v8, p8

    move-object/from16 v20, v9

    move/from16 v9, p9

    move/from16 v21, v10

    move/from16 v10, p10

    move/from16 v22, v11

    move-object/from16 v11, p3

    .line 654
    invoke-direct/range {v0 .. v11}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;)V

    move/from16 v18, v17

    goto :goto_4

    :cond_9
    move/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v6, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 657
    invoke-direct/range {v0 .. v11}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;)V

    :goto_4
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    goto/16 :goto_1

    :cond_a
    if-eqz v18, :cond_b

    .line 662
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void

    :cond_c
    :goto_5
    return-void
.end method

.method public static synthetic lambda$updateTaskViewTransY$30(Lcom/miui/home/recents/NavStubView;F)V
    .locals 1

    .line 3277
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    .line 3279
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->changeTaskStackViewScrollAndTaskViewTranslation(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateTopWindowCrop$52(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Float;
    .locals 1

    .line 4924
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateTopWindowCrop$53(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Float;
    .locals 1

    .line 4924
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateTopWindowCrop$54(Lcom/miui/home/recents/NavStubView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 4929
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 4930
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 p2, 0x103

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private linearToCubic(FFFF)F
    .locals 6

    cmpl-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    const/4 p2, 0x0

    cmpl-float p3, p4, p2

    if-eqz p3, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-float p1, v1, p1

    float-to-double v4, p1

    float-to-double p3, p4

    .line 4622
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    sub-double/2addr v2, p3

    double-to-float p1, v2

    goto :goto_0

    :cond_1
    move p1, p2

    .line 4624
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private modifyTransformVisible(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;I)V"
        }
    .end annotation

    .line 2814
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2815
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2816
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    sub-int v4, v0, p2

    if-lt v2, v4, :cond_0

    add-int v4, v0, p2

    if-gt v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 2817
    :goto_1
    iput-boolean v4, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private needFindClosingShortcutIcon()Z
    .locals 1

    .line 2630
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private notifyAccessibilityButtonClicked(I)V
    .locals 1

    .line 4894
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v0, :cond_0

    .line 4896
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->notifyAccessibilityButtonClicked(I)V

    :cond_0
    return-void
.end method

.method private notifyAccessibilityButtonLongClicked()V
    .locals 1

    .line 4901
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v0, :cond_0

    .line 4903
    invoke-virtual {v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->notifyAccessibilityButtonLongClicked()V

    :cond_0
    return-void
.end method

.method private onAppModeGestureEnd()V
    .locals 1

    .line 2823
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 2824
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 2825
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeLayoutListener()V

    return-void
.end method

.method private onBreakOpenRectFAnimUpdate(Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 2517
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2518
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 2519
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    .line 2520
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 2521
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->calculateRotationRect(Landroid/graphics/RectF;)V

    .line 2522
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mBreakAnimStartDimAlpha:F

    iget p3, p0, Lcom/miui/home/recents/NavStubView;->mDimAlpha:F

    sub-float/2addr p3, p1

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    :cond_0
    return-void
.end method

.method private onInputConsumerEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 961
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 965
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 966
    sget-object v2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$jWeGzTKeMzbK8OVYFKB5x63DIYM;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$jWeGzTKeMzbK8OVYFKB5x63DIYM;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 973
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 974
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 976
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_4

    .line 978
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 979
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->isNeedSkipTouch()Z

    move-result p1

    if-nez p1, :cond_4

    .line 980
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->endAppToRecentsAnimIfNeeded()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_4

    .line 982
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 983
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method private oneHandTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1626
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/recents/NavStubView;->startOrStopOneHandMode(Landroid/content/Context;FF)V

    :cond_1
    const-string p1, "oneHandTouchResolution"

    .line 1628
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private postGoToNormalStartRunnable()V
    .locals 4

    .line 2788
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    .line 2789
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private quickSwitchTouchResolution(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1885
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1886
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1888
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1889
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1892
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1893
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    .line 1894
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mPrepareEvent:Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1895
    sget-object p1, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 1896
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$AE5lFmvMGl3sLjgKsK3YezwUKoA;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$AE5lFmvMGl3sLjgKsK3YezwUKoA;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1905
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 1907
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    goto :goto_0

    .line 1908
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v2, :cond_3

    .line 1909
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1911
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 1912
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 1913
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDimAlpha()V

    .line 1915
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 1916
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1, v3}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1917
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 1918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 1919
    :cond_4
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 1920
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const/4 p1, 0x0

    .line 1921
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    const-string p1, "QuickSwitchTouchResolution"

    .line 1922
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private recentsTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 4324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4330
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    const p1, 0x3f666666    # 0.9f

    .line 4331
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    .line 4333
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 4337
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const-string p1, "recentsTouchResolution"

    .line 4338
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_0

    .line 4326
    :pswitch_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsModeEvent:Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4327
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->endAppToRecentsAnimIfNeeded()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeAllTopWindowMessages()V
    .locals 3

    .line 4856
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::removeAllTopWindowMessages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 4858
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 4860
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$zH6GV_9YizM9Ji64V-_nNWP9BZY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$zH6GV_9YizM9Ji64V-_nNWP9BZY;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeGoToNormalStartRunnable()V
    .locals 2

    .line 2793
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeHomeModeLayoutListener()V
    .locals 2

    .line 4084
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4085
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4086
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private removeLayoutListener()V
    .locals 2

    .line 2225
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2227
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private removeRecentsAnimationExtra()V
    .locals 2

    .line 2198
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2199
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_CROP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_RADIUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method private resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2735
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 2737
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    :cond_0
    return-void
.end method

.method private resetLauncherAlphaScaleWhenUseSimpleAnim()V
    .locals 1

    .line 2833
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2834
    invoke-direct {p0, v0, v0}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    :cond_0
    return-void
.end method

.method private resetLauncherProperty()V
    .locals 1

    const/4 v0, 0x0

    .line 2765
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    return-void
.end method

.method private resetLauncherProperty(Z)V
    .locals 2

    .line 2769
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$3jqDWpnaev56HuG_wm_MVOVuPWU;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$3jqDWpnaev56HuG_wm_MVOVuPWU;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetLauncherView()V
    .locals 2

    .line 2359
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$qMpX_2_pPIT26ZOLh1y-Tz63CSU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$qMpX_2_pPIT26ZOLh1y-Tz63CSU;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2367
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    return-void
.end method

.method private resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 1

    .line 3096
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 3098
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    :cond_0
    return-void
.end method

.method private resetTaskView()V
    .locals 2

    .line 684
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$PfAMRUGU8iwlyaXJDarTVdQjk2A;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$PfAMRUGU8iwlyaXJDarTVdQjk2A;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetTopWindowCrop()V
    .locals 1

    .line 4798
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    if-eqz v0, :cond_0

    .line 4799
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->resetTopWindowCrop()V

    :cond_0
    return-void
.end method

.method private resetValue()V
    .locals 1

    const/4 v0, 0x1

    .line 4502
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    .line 4503
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    const/4 v0, 0x0

    .line 4504
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    return-void
.end method

.method private resumeLastTask(Ljava/lang/Runnable;)V
    .locals 2

    .line 3831
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "resumeLastTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->disableUpdateStatusBarClock()V

    const/4 v0, 0x0

    .line 3833
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private sendBroadcastToAppForHandleGesture(ILjava/lang/String;)V
    .locals 4

    .line 4537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.fullScreenGesture.actionUp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4538
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "actionUpSpeedAndDirection"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4539
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastToAppForHandleGesture, pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", gesture="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendMsgDownToStateMachine(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1509
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 1515
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0x65

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 1512
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0x64

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 1506
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1503
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0x67

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendTopWindowMessage(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 4779
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 4780
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 4781
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendTopWindowMessage(ILjava/lang/Object;J)V
    .locals 1

    if-eqz p2, :cond_0

    .line 4786
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 4787
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 4788
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getTopWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 3513
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 3514
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 3515
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 3516
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 3518
    invoke-static {p2}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v2

    .line 3520
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v3, v6

    if-eqz v2, :cond_1

    .line 3521
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 3522
    :cond_1
    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    .line 3523
    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 3525
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 3527
    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    sub-float/2addr v8, v0

    iput v8, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 3528
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 3530
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    div-float v8, v1, v5

    add-float/2addr v0, v8

    sub-float/2addr v0, v3

    if-eqz v2, :cond_2

    .line 3531
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    :cond_2
    sub-float/2addr v1, v4

    .line 3532
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 3533
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3535
    :cond_3
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    sub-float/2addr v2, v6

    .line 3536
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v3, v7

    const/4 v4, 0x3

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eq p2, v4, :cond_4

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-float p2, v3

    mul-float/2addr p2, v5

    mul-float/2addr v0, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    .line 3543
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    goto :goto_0

    :pswitch_1
    mul-float/2addr v0, v5

    mul-float/2addr v3, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    .line 3540
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    goto :goto_0

    :cond_4
    mul-float/2addr v3, v5

    neg-float p2, v0

    mul-float/2addr p2, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    .line 3546
    invoke-virtual {p1, v3, p2, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAppTransformParams(Landroid/graphics/RectF;FFF)V
    .locals 1

    .line 3997
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 3998
    iget-object p4, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p4, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 3999
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 4000
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    sget-object p3, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    :cond_0
    return-void
.end method

.method private setIsAnimatingToLauncher(Z)V
    .locals 1

    .line 2941
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    .line 2942
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2943
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsFsAppToHomeAnimating(Z)V

    :cond_0
    return-void
.end method

.method private setIsAnimatingToRecents(Z)V
    .locals 0

    .line 2948
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    return-void
.end method

.method private setIsLaunchingTask(Z)V
    .locals 0

    .line 3747
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsLaunchingNewTask:Z

    return-void
.end method

.method private setIsQuickSwitching(Z)V
    .locals 2

    .line 1931
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    .line 1932
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsQuickSwitching mIsQuickSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    return-void
.end method

.method private setSyncTransactionApplier()V
    .locals 3

    .line 3249
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3250
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    :cond_0
    return-void
.end method

.method private setTaskIfNeedHide(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)I"
        }
    .end annotation

    .line 3489
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object v0

    .line 3490
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 3491
    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/model/Task;->updateIsNeedHideState(Ljava/util/Set;)V

    .line 3492
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private shouldInitTopWindowCrop()Z
    .locals 2

    .line 4848
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHandleGesture:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showRecents()V
    .locals 2

    .line 2280
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$fGksUC-VRq06L_pPEPSucCWbpYM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$fGksUC-VRq06L_pPEPSucCWbpYM;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startAppToHomeInGestureThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/RectF;II)V
    .locals 8

    .line 2956
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startAppToHomeInGestureThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2957
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    const/4 v1, 0x0

    .line 2958
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsInitFloatingIconLayer:Z

    .line 2959
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    .line 2960
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2961
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    .line 2963
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 2964
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    .line 2967
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedResetLauncherAlphaScale:Z

    .line 2968
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v7, Lcom/miui/home/recents/-$$Lambda$NavStubView$-ygXapMCMDr7c5OU0lek3lsjEkg;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/-$$Lambda$NavStubView$-ygXapMCMDr7c5OU0lek3lsjEkg;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;IIF)V

    invoke-virtual {v0, v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 3020
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v6, Lcom/miui/home/recents/NavStubView$11;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView$11;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {p2, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 3092
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-void
.end method

.method private startAppToHomeInMainThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;II)V
    .locals 15

    move-object v10, p0

    move-object/from16 v11, p1

    .line 3110
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startAppToHomeInMainThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v11, :cond_0

    .line 3112
    iget-object v1, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object v12, v0

    .line 3113
    :goto_0
    iput-object v0, v10, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    .line 3114
    instance-of v0, v11, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3115
    move-object v0, v11

    check-cast v0, Landroid/view/View;

    iput-object v0, v10, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    :cond_1
    if-eqz v12, :cond_2

    .line 3118
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 3121
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v5

    .line 3123
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, v10, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    .line 3124
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    .line 3125
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v1, v10, Lcom/miui/home/recents/NavStubView;->mTargetHomeIconView:Landroid/view/View;

    iget-object v2, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    .line 3127
    :cond_3
    instance-of v0, v11, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_4

    .line 3128
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    move-object v1, v11

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIconTitle(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 3130
    :cond_4
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result v2

    .line 3131
    iget-object v13, v10, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v14, Lcom/miui/home/recents/-$$Lambda$NavStubView$GI_u949w0x1P2ncOro6i9ixNyuA;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object v4, v12

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/-$$Lambda$NavStubView$GI_u949w0x1P2ncOro6i9ixNyuA;-><init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/recents/views/FloatingIconView;ZIILandroid/graphics/Rect;F)V

    invoke-virtual {v13, v14}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 3190
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$12;

    invoke-direct {v1, p0, v11, v12}, Lcom/miui/home/recents/NavStubView$12;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 3236
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    return-void
.end method

.method private startNewTask(I)V
    .locals 2

    .line 3944
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startNewTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3946
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3948
    invoke-virtual {p1, v1, v0, v1}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZ)V

    :cond_0
    return-void
.end method

.method private startOrStopOneHandMode(Landroid/content/Context;FF)V
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    if-eqz v0, :cond_0

    .line 1597
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->startOrStopOneHandMode(Landroid/content/Context;FF)V

    :cond_0
    return-void
.end method

.method private startRecentsAnimation()V
    .locals 2

    .line 2204
    new-instance v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-direct {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v0, 0x1

    .line 2205
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    .line 2206
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V

    .line 2207
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTopWindow()V
    .locals 3

    .line 4890
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private startVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1840
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1841
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1843
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private stopVelocityTracker()V
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1848
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1849
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private switchToScreenshot()V
    .locals 3

    .line 3798
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 3799
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    .line 3800
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$rD8rlfHHNE__LCk05K5afQu_1VE;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$rD8rlfHHNE__LCk05K5afQu_1VE;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private tryRequestTransparentRegionForParent()V
    .locals 1

    .line 4655
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4659
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4663
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method private updateDimLayerAlpha(F)V
    .locals 3

    .line 2345
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_1

    .line 2346
    iget-object v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v0, :cond_1

    .line 2347
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2348
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2349
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v2, v2, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/DimLayer;->createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    .line 2350
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    :cond_0
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2352
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2353
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v2, v2, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    :cond_1
    return-void
.end method

.method private updateMotionEventVelocity(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1854
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1856
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    .line 1855
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1858
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1859
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 1860
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    .line 1861
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    div-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-void
.end method

.method private updateScreenSize()V
    .locals 3

    .line 1636
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1637
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 1638
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1639
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1640
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->isNeedRotate(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1641
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 1642
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1643
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1645
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 1646
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1647
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 1649
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskInitRectF()Landroid/graphics/Rect;

    .line 1650
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1651
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    :cond_1
    return-void
.end method

.method private updateSysUiFlags(FI)V
    .locals 1

    .line 2118
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2121
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2124
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    goto :goto_1

    .line 2122
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    :goto_1
    return-void
.end method

.method private updateSysUiFlagsDirectly(FI)V
    .locals 2

    .line 2129
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$HB3jPi2iDjzNUFR1tI3CX7rkuqQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$HB3jPi2iDjzNUFR1tI3CX7rkuqQ;-><init>(Lcom/miui/home/recents/NavStubView;FI)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTargetRectF(I)V
    .locals 5

    .line 3560
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, p1

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 3562
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 3563
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPortraitDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 3565
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    goto :goto_0

    .line 3566
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPortraitDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 3568
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    neg-float p1, p1

    goto :goto_0

    .line 3569
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v2

    if-nez v2, :cond_2

    .line 3571
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    neg-float p1, p1

    goto :goto_0

    .line 3572
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getHomeRotation()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 3574
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_3
    move p1, v3

    move v3, v0

    .line 3577
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3578
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 0

    .line 3986
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->setAppTransformParams(Landroid/graphics/RectF;FFF)V

    .line 3987
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private updateTaskPosition(Landroid/graphics/RectF;FFFFF)Landroid/graphics/RectF;
    .locals 0

    .line 3991
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->setAppTransformParams(Landroid/graphics/RectF;FFF)V

    .line 3992
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 3993
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object p4, p0, Lcom/miui/home/recents/NavStubView;->mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IIFFZFFLjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v1, p4

    .line 511
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 512
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v4

    int-to-float v4, v4

    .line 514
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-eq v6, v7, :cond_1

    .line 515
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    .line 519
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v4

    div-float/2addr v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    .line 522
    :goto_0
    iget-object v9, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v6

    iput v10, v9, Landroid/graphics/RectF;->right:F

    if-ge v3, v1, :cond_1

    .line 523
    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v6

    goto :goto_1

    :cond_1
    move v5, v8

    .line 529
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 531
    iget v6, v0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v6, v9, v6

    .line 532
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v6

    const v10, 0x47c35000    # 100000.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v6, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v6

    if-eqz v6, :cond_a

    .line 539
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v6, v12

    .line 540
    iget-object v12, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v12

    .line 542
    iget-object v13, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v4

    mul-float/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 543
    iget-object v14, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v15, v13

    iput v15, v14, Landroid/graphics/RectF;->bottom:F

    .line 545
    iget-object v13, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    .line 546
    iget-object v14, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    sub-int v15, v3, v1

    .line 548
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v7, :cond_3

    if-le v3, v1, :cond_2

    add-float v13, v13, p6

    neg-float v1, v13

    sub-int v7, v15, p5

    int-to-float v7, v7

    mul-float/2addr v1, v7

    add-float/2addr v1, v5

    goto :goto_2

    :cond_2
    add-float v13, v13, p6

    neg-float v1, v13

    add-int v7, v15, p5

    int-to-float v7, v7

    mul-float/2addr v1, v7

    add-float/2addr v1, v5

    goto :goto_2

    :cond_3
    add-float v13, v13, p6

    neg-float v1, v13

    int-to-float v7, v15

    mul-float/2addr v1, v7

    add-float/2addr v1, v5

    .line 557
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v11

    sub-float/2addr v14, v5

    add-float/2addr v1, v14

    cmpl-float v5, v1, v10

    if-lez v5, :cond_4

    move v1, v10

    .line 562
    :cond_4
    iget v5, v0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-eq v3, v7, :cond_6

    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 567
    :cond_6
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_3

    .line 570
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isDifferentRotation()Z

    move-result v7

    if-nez v7, :cond_8

    .line 571
    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v8, v8

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v5

    sub-float/2addr v8, v12

    div-float/2addr v8, v11

    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v0, v7, v8, v5}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v5

    .line 572
    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x32

    add-int/lit8 v8, v8, 0x19

    int-to-float v8, v8

    const/4 v12, 0x0

    invoke-direct {v0, v7, v12, v8}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v8

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    .line 574
    iget-object v5, v0, Lcom/miui/home/recents/NavStubView;->mRectNoInset:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v7, 0x43960000    # 300.0f

    .line 575
    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v8

    mul-float/2addr v8, v7

    :goto_3
    mul-float/2addr v4, v6

    div-float/2addr v4, v11

    sub-float/2addr v5, v4

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v4, v11

    sub-float/2addr v5, v4

    add-float/2addr v5, v8

    cmpl-float v4, v5, v10

    if-lez v4, :cond_9

    move v7, v1

    move v8, v10

    goto :goto_4

    :cond_9
    move v7, v1

    move v8, v5

    goto :goto_4

    :cond_a
    move v12, v8

    move v6, v9

    move v7, v12

    move v8, v7

    :goto_4
    if-eqz p8, :cond_c

    const/high16 v1, 0x40800000    # 4.0f

    int-to-float v4, v3

    sub-float/2addr v4, v6

    .line 585
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v4, v0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    mul-float/2addr v1, v4

    add-float v10, p10, v1

    .line 586
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v12

    goto :goto_5

    :cond_b
    move v4, v9

    :goto_5
    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v6

    move/from16 v9, p9

    move-object/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    goto :goto_7

    .line 589
    :cond_c
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 590
    invoke-virtual {v2, v7}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 591
    invoke-virtual {v2, v8}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 593
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 594
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 595
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    move/from16 v12, p7

    :goto_6
    invoke-virtual {v2, v12}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    if-eqz p11, :cond_e

    .line 598
    invoke-interface/range {p11 .. p11}, Ljava/lang/Runnable;->run()V

    :cond_e
    :goto_7
    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    .line 605
    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;)V

    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 610
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V
    .locals 14

    .line 616
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v13, Lcom/miui/home/recents/-$$Lambda$NavStubView$uR8t_x5nS2gw6WhMQRL91Yl1BtU;

    move-object v1, v13

    move-object v2, p0

    move/from16 v3, p10

    move-object v4, p1

    move-object/from16 v5, p9

    move/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lcom/miui/home/recents/-$$Lambda$NavStubView$uR8t_x5nS2gw6WhMQRL91Yl1BtU;-><init>(Lcom/miui/home/recents/NavStubView;ZLandroid/graphics/RectF;Ljava/lang/Runnable;ZZIFZFF)V

    invoke-virtual {v0, v13}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTaskViewToInitPosition()V
    .locals 11

    .line 2234
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    .line 2235
    new-array v0, v0, [I

    .line 2236
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 2237
    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 2238
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 2239
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result v4

    .line 2240
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    .line 2238
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private updateTaskViewTransY(F)V
    .locals 2

    .line 3276
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$RM2bbU6dszDnFgU-ZP2WP8VloTI;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$RM2bbU6dszDnFgU-ZP2WP8VloTI;-><init>(Lcom/miui/home/recents/NavStubView;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTopWindowCrop()V
    .locals 5

    .line 4922
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportPushAppEnterWorldCirculate:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsSupportPushAppEnterWorldCirculate:Z

    .line 4923
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsSupportPushAppEnterWorldCirculate:Z

    if-eqz v0, :cond_0

    .line 4924
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$O2BgU8ZvgR_9ImFu-Q4_thJRz5Q;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$O2BgU8ZvgR_9ImFu-Q4_thJRz5Q;-><init>(Lcom/miui/home/recents/NavStubView;)V

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$U4_qjlEV2_TmS-pYP-qOokhfDTM;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$U4_qjlEV2_TmS-pYP-qOokhfDTM;-><init>(Lcom/miui/home/recents/NavStubView;)V

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$t1KWIDvCUjfnmOD9HDlGlZrqpyE;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$t1KWIDvCUjfnmOD9HDlGlZrqpyE;-><init>(Lcom/miui/home/recents/NavStubView;)V

    new-instance v4, Lcom/miui/home/recents/-$$Lambda$NavStubView$kL2-zypLqbYJF5RcydxJAxbnUOU;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$kL2-zypLqbYJF5RcydxJAxbnUOU;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;->createDoubleDropTarget(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;)Lcom/miui/home/recents/views/RecentsTopWindowDoubleDropTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    goto :goto_0

    .line 4926
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0123

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    .line 4928
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$mYRWUHh6LQanyiok4PpS-x_vio8;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$mYRWUHh6LQanyiok4PpS-x_vio8;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->setOnStateChangedListener(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private updateTopWindowCropConfiguration()V
    .locals 1

    .line 4792
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    if-eqz v0, :cond_0

    .line 4793
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->updateTopWindowConfiguration()V

    :cond_0
    return-void
.end method

.method private updateTouchable()V
    .locals 4

    .line 1108
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "NavStubView_Touch"

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTouchable    old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    if-eq v1, v0, :cond_2

    .line 1112
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mUseEmptyTouchableRegion:Z

    .line 1113
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NavStubView_Touch"

    const-string v1, "  updateTouchable---requestApplyInsets"

    .line 1114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    :cond_2
    return-void
.end method

.method private updateViewLayout(I)V
    .locals 1

    .line 4647
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4648
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4651
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->tryRequestTransparentRegionForParent()V

    return-void
.end method

.method private useHomeSysUiFlags(F)Z
    .locals 1

    const v0, 0x3e199998    # 0.14999998f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private useHorizontalStyleToInitTaskView()Z
    .locals 4

    .line 2586
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v3

    .line 2587
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2588
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    .line 2589
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public actionMoveAppDrag()V
    .locals 4

    .line 2564
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveAppDrag"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2566
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2567
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 2568
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startBreakOpenRectFAnim()V

    goto :goto_0

    .line 2569
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2570
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 2571
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2572
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 2574
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->calculateRotationRect(Landroid/graphics/RectF;)V

    .line 2577
    :cond_3
    :goto_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    :cond_4
    return-void
.end method

.method public actionMoveAppTaskHold()V
    .locals 10

    .line 2606
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveAppTaskHold"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2608
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveAppDrag()V

    .line 2609
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 2610
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public actionMoveHomeDrag()V
    .locals 2

    .line 4143
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveHomeDrag"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4146
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    :cond_1
    return-void
.end method

.method public actionMoveHomeTaskHold()V
    .locals 13

    .line 4151
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveHomeTaskHold"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4153
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskWidthHome()F

    .line 4154
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskXHome()F

    .line 4156
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    .line 4157
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    if-eqz v1, :cond_0

    .line 4158
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 4160
    :cond_0
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    div-float/2addr v0, v3

    add-float/2addr v4, v0

    invoke-direct {p0, v1, v2, v4}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v1

    .line 4161
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 4162
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 4164
    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewX:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 4165
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 4166
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    sub-float v2, v1, v0

    iput v2, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    .line 4167
    iput v1, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, -0x1

    .line 4169
    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3f666666    # 0.9f

    const v11, 0x3e4ccccd    # 0.2f

    const/4 v12, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    return-void
.end method

.method public actionMoveQuickSwitchTaskHold()V
    .locals 10

    .line 1866
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveQuickSwitchTaskHold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 1869
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->calculateRotationRect(Landroid/graphics/RectF;)V

    .line 1870
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRotationCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1871
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v9, 0x0

    move-object v1, p0

    .line 1870
    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    .line 1872
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    .line 1873
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$e9C6jbxJ9Ch5tBXyGgUZecwCTxg;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$e9C6jbxJ9Ch5tBXyGgUZecwCTxg;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1879
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDimAlpha:F

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    .line 1880
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    return-void
.end method

.method public actionMoveRecentsDrag()V
    .locals 2

    .line 4346
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveRecentsDrag"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4347
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$d8X_DQLGaVEy76Nw9VCrNi4FchA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$d8X_DQLGaVEy76Nw9VCrNi4FchA;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canPerformQuickSwitch()Z
    .locals 2

    .line 4549
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v0, :cond_0

    .line 4550
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    return v0

    .line 4552
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelAppToHomeAnim()V
    .locals 1

    .line 3103
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3104
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_0
    return-void
.end method

.method public cancelHomeFadeInAnim()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public enableInputProxy()V
    .locals 2

    const/4 v0, 0x0

    .line 951
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    .line 952
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->enableInputConsumer()V

    .line 953
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$7BL0kbxBcE19-XdTQcRtA1ebi74;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$7BL0kbxBcE19-XdTQcRtA1ebi74;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->setTouchListener(Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;)V

    .line 955
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$USLMf1boCFlWCbJhW19JaH6GnLw;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$USLMf1boCFlWCbJhW19JaH6GnLw;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava/util/function/Predicate;

    :cond_0
    return-void
.end method

.method public enterAppHoldState()V
    .locals 0

    .line 2582
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    return-void
.end method

.method public enterHomeHoldState()V
    .locals 2

    .line 4091
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$-OHDd4a8APU7t-H1lzDcyVXv9VI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$-OHDd4a8APU7t-H1lzDcyVXv9VI;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enterRecentsHoldState()V
    .locals 2

    .line 4355
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "enterRecentsHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$PyfqxDlM1U5Cw8Siqvoe0gM3Xy0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$PyfqxDlM1U5Cw8Siqvoe0gM3Xy0;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitHomeHoldState()V
    .locals 2

    .line 4126
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitHomeHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$0n54coI0uT40nqZ95zt8sijtnFY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$0n54coI0uT40nqZ95zt8sijtnFY;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitRecentsHoldState()V
    .locals 2

    .line 4367
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitRecentsHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$N2Hrd7T9EqDuqhARVqHeHprkbEQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$N2Hrd7T9EqDuqhARVqHeHprkbEQ;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 3960
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;Z)V
    .locals 3

    .line 3964
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: toRecents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   sendUserLeaveHint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 3967
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZLjava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public finishAppToHome(Z)V
    .locals 2

    .line 3255
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$5mnNHI_-hgWqZsdunoJ_UuMDjCU;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$5mnNHI_-hgWqZsdunoJ_UuMDjCU;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;Z)V

    .line 3257
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 3258
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 3259
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$GQBSh2yccR3eaIzdERkTn4cspds;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$GQBSh2yccR3eaIzdERkTn4cspds;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3261
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    .line 3262
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherAlphaScaleWhenUseSimpleAnim()V

    return-void
.end method

.method public finishDirectly(Z)V
    .locals 3

    .line 3972
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: toRecents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3975
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    :cond_0
    return-void
.end method

.method public finishEnterRecentsNow()V
    .locals 2

    .line 3431
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3432
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3433
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->finishDirectly(Z)V

    :cond_0
    return-void
.end method

.method public finishPendingController()V
    .locals 1

    .line 3980
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 3981
    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishPendingController()V

    :cond_0
    return-void
.end method

.method public finishRecentsActivityDirectly()V
    .locals 2

    .line 3954
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3955
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    const-string v0, "finishRecentsActivity"

    .line 3956
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10

    if-eqz p1, :cond_0

    .line 4629
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4630
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v0

    .line 4631
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v1

    .line 4633
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatherTransparentRegion: need render w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 4636
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->getLocationInWindow([I)V

    .line 4637
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v4, 0x1

    .line 4638
    aget v6, v2, v4

    add-int v7, v5, v0

    add-int v8, v6, v1

    .line 4639
    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v3

    .line 4643
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public getCurrentPositionTaskIndex()I
    .locals 4

    .line 3500
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 3501
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result v0

    return v0

    :cond_0
    sub-float/2addr v0, v1

    const/high16 v1, -0x3cb80000    # -200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 3503
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result v0

    return v0

    .line 3505
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    return v0
.end method

.method public getHotSpaceHeight()I
    .locals 4

    const-string v0, "lithium"

    .line 4699
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    .line 4700
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 4703
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    :goto_0
    int-to-float v0, v0

    .line 4704
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 4705
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4706
    sget-object v1, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 4707
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x40900000    # 4.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v2, 0x5

    .line 4709
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v3, v1

    .line 4710
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4708
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    add-float/2addr v0, v1

    .line 4713
    :cond_2
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotSpaceHeight   height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v0, v0

    return v0
.end method

.method public getLeftTaskIndex()I
    .locals 5

    .line 3438
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3439
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    .line 3441
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    .line 3442
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 3443
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-eqz v2, :cond_3

    .line 3444
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 3448
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    add-int/lit8 v3, v0, 0x1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-gt v3, v4, :cond_2

    .line 3450
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 3452
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 3445
    :cond_3
    :goto_2
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v3, "getLeftTaskIndex : list is null or empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 3446
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getRightTaskIndex()I
    .locals 4

    .line 3464
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3465
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    .line 3467
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3468
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 3472
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 3474
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 3476
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 3469
    :cond_3
    :goto_2
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v3, "getRightTaskIndex : list is null or empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    .line 3470
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method public getTopWindowCropHandler()Landroid/os/Handler;
    .locals 2

    .line 4722
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCropHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 4723
    new-instance v0, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCropHandler:Landroid/os/Handler;

    .line 4725
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWindowParam(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 4675
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7e8

    const/16 v4, 0x128

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 p1, 0x0

    .line 4685
    invoke-static {v6, p1}, Lcom/miui/home/recents/util/Utilities;->setFitInsetsTypes(Landroid/view/WindowManager$LayoutParams;I)V

    .line 4686
    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p1, 0x50

    .line 4687
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4691
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz p1, :cond_0

    const-string p1, "GestureStub"

    goto :goto_0

    :cond_0
    const-string p1, "GestureStubHome"

    :goto_0
    invoke-virtual {v6, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public isDisableUpdateStatusBarClock()Z
    .locals 1

    .line 3817
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    return v0
.end method

.method public isInAppModeGesture()Z
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverDistanceThread()Z
    .locals 2

    .line 4557
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSafeArea()Z
    .locals 2

    .line 4545
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToAppHoldState()Z
    .locals 7

    .line 362
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 363
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    sub-float v1, v0, v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpg-float v1, v1, v2

    .line 364
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    const/high16 v4, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 367
    :goto_0
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v4, v5

    .line 368
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 369
    :goto_1
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    if-eqz v1, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAllowToAppHoldState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    .line 372
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_4

    .line 375
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAllowToAppHoldState()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public isToHomeDragState()Z
    .locals 2

    .line 351
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xc8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isToHomeHoldState()Z
    .locals 3

    .line 345
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPauseWhileSwipeUp()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    .line 346
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

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

.method public isToRecentsDrag()Z
    .locals 2

    .line 388
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xc8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToRecentsHoldState()Z
    .locals 1

    .line 384
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPauseWhileSwipeUp()Z

    move-result v0

    return v0
.end method

.method public modifyTransformVisible(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 2799
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2802
    :cond_0
    sget-object v0, Lcom/miui/home/recents/NavStubView$22;->$SwitchMap$com$miui$home$recents$NavStubView$ModeGesture:[I

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView$ModeGesture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    .line 2807
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 2804
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public needBreakOpenAnim()Z
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2212
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 871
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 872
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->tryRequestTransparentRegionForParent()V

    .line 874
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.fullscreen.statechange"

    .line 875
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    invoke-static {}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/recents/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    .line 878
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->registerInputConsumer()V

    .line 879
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/FsGestureAssistHelper;->registerAssistObserver()V

    .line 880
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-virtual {v0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->registerOneHandModeObserver()V

    .line 882
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "support one handed mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-nez v0, :cond_1

    .line 886
    new-instance v0, Lcom/miui/home/recents/NavStubView$4;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$4;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    :cond_1
    const-string v0, "NavStubView_Touch"

    const-string v1, "onAttachedToWindow---requestApplyInsets"

    .line 923
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    .line 925
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    .line 926
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->addCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 842
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    .line 850
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    .line 852
    :cond_6
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v4, :cond_8

    .line 854
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v3

    goto :goto_4

    :cond_7
    const/16 v6, 0x8

    .line 853
    :goto_4
    invoke-virtual {v4, v6}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    :cond_8
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v3

    .line 858
    :goto_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 860
    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    if-eq v4, p1, :cond_a

    .line 861
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    goto :goto_6

    :cond_a
    move v2, v3

    .line 864
    :goto_6
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mTopWindowCrop:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    if-eqz p1, :cond_c

    if-nez v0, :cond_b

    if-nez v2, :cond_b

    if-nez v1, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    const/4 p1, 0x5

    const/4 v0, 0x0

    .line 865
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->sendTopWindowMessage(ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 936
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 938
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->unregisterInputConsumer()V

    .line 939
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/FsGestureAssistHelper;->unRegisterAssistObserver()V

    .line 940
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isOneHandedModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOneHandedModeInputConsumer:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-virtual {v0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->unregisterOneHandModeObserver()V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    .line 947
    :cond_1
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->removeCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V

    return-void
.end method

.method public onEnterOrExitSmallWindow(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    const-string v2, "BLOCKER_ID_FOR_APP_DRAG_AFTER_EXIT_SMALL_WINDOW_MODE"

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/recents/util/TimeOutBlocker;->startCountDown(Landroid/os/Handler;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1362
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPointEvent: rawX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   rawY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mIsInFsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 1370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 1371
    :cond_0
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    :cond_1
    return v3

    .line 1375
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 1377
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    .line 1380
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 1381
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1382
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_7

    .line 1383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/home/recents/NavStubView;->mLastTouchTime:J

    sub-long/2addr v4, v6

    .line 1384
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/miui/home/recents/AntiMistakeTouchView;->containsLocation(F)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    .line 1386
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100348

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mToastSlideAgain:Landroid/widget/Toast;

    .line 1387
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mToastSlideAgain:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1388
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz p1, :cond_5

    .line 1389
    invoke-virtual {p1}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideUp()V

    .line 1391
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mLastTouchTime:J

    return v3

    .line 1394
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v0, :cond_8

    .line 1395
    invoke-virtual {v0}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideUp()V

    return v3

    :cond_7
    return v3

    .line 1403
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 1404
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1406
    :cond_9
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    if-ne v0, v4, :cond_a

    return v3

    .line 1410
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 1411
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateScreenSize()V

    .line 1412
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    .line 1414
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskContainHome()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1415
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_12

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_b

    goto/16 :goto_3

    .line 1419
    :cond_b
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "taskSnapshot"

    const-string v5, "gesture"

    invoke-static {v0, v4, v5}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1422
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v4, :cond_c

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    goto :goto_0

    :cond_c
    move v4, v3

    :goto_0
    if-eqz v0, :cond_f

    .line 1424
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v5, :cond_d

    .line 1425
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1427
    :cond_d
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v5, :cond_f

    .line 1428
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->hasWindowFocus()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1429
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1431
    :cond_e
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    .line 1435
    :cond_f
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 1437
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    move v0, v3

    goto :goto_2

    :cond_11
    :goto_1
    move v0, v2

    :goto_2
    invoke-direct {p0, p1, v5, v0, v4}, Lcom/miui/home/recents/NavStubView;->getCurrentWindowMode(Landroid/view/MotionEvent;ZZZ)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1440
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->sendMsgDownToStateMachine(I)V

    .line 1442
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current window mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (1:home, 2:app, 3:recent-task, 4:keyguard, 5:quick-switch, 6:assistant, 7:one-hand)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1416
    :cond_12
    :goto_3
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 1445
    :cond_13
    :goto_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startVelocityTracker(Landroid/view/MotionEvent;)V

    .line 1447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v2, v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_15

    .line 1448
    :cond_14
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetValue()V

    .line 1450
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1451
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->stopVelocityTracker()V

    .line 1452
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mToastSlideAgain:Landroid/widget/Toast;

    if-eqz v0, :cond_15

    .line 1453
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 1454
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mToastSlideAgain:Landroid/widget/Toast;

    .line 1458
    :cond_15
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_16

    packed-switch v0, :pswitch_data_0

    .line 1488
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    goto :goto_5

    .line 1481
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->accessibilityTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1478
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->oneHandTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1475
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->assistantTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1472
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->quickSwitchTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1469
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->keyguardTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1466
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->recentsTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1460
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->appTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1463
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->homeTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1484
    :cond_16
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->assistantEditTouchResolution(Landroid/view/MotionEvent;)V

    .line 1492
    :goto_5
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-eqz v0, :cond_17

    .line 1494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_17

    .line 1495
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v0, "fs_gesture"

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    :cond_17
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRecentsAnimationCanceled(Z)V
    .locals 0

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 9

    .line 1734
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 1738
    new-array v0, v0, [I

    .line 1739
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 1740
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1742
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1743
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1744
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 1746
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1747
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1750
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v0, v2

    aget v7, v0, v1

    aget v8, v0, v2

    add-int/2addr v8, v4

    aget v0, v0, v1

    add-int/2addr v0, v3

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    goto :goto_1

    .line 1752
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;

    move-result-object v0

    .line 1755
    :goto_1
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1756
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 1757
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1759
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1760
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1761
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1762
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1763
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1765
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1766
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1767
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 1769
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1770
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1772
    :goto_2
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1773
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1775
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_8

    .line 1776
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p1

    .line 1777
    invoke-virtual {p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    .line 1778
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1779
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 1780
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initTaskViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1781
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1783
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1784
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1785
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_4

    .line 1787
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1788
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1790
    :goto_4
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1791
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object p1, v0

    .line 1793
    :cond_8
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1795
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_9

    .line 1796
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 1797
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hideCurrentInputMethod()V

    .line 1799
    :cond_9
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    .line 1800
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 6

    .line 1176
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "NavStubView_Touch"

    .line 1178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSystemUiFlagsChanged  mIsShowStatusBar    old= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "   new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-eq v3, v0, :cond_1

    .line 1181
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    .line 1182
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$r8F_aHAXblSo_xHr5Eq6ETaUDaE;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$r8F_aHAXblSo_xHr5Eq6ETaUDaE;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string p1, "NavStubView_Touch"

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiFlagsChanged  mIsShowNavBar    old= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    if-eq p1, v1, :cond_3

    .line 1193
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    .line 1194
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    const-string p1, "NavStubView_Touch"

    const-string v0, "  onSystemUiFlagsChanged---requestApplyInsets"

    .line 1195
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 2

    .line 1810
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "onTaskAppeared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1811
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    iget p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 1812
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    .line 1814
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->removeFinishRunnable()V

    .line 1815
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1816
    invoke-virtual {p1, v0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerAsync(ZZ)V

    .line 1818
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsLaunchingTask(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1213
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1220
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1222
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_1

    return v1

    .line 1228
    :cond_1
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    invoke-direct {p0, v0, v2}, Lcom/miui/home/recents/NavStubView;->ignoreTouchPosition(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 1233
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;I)V

    .line 1234
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->boostGesture()V

    .line 1236
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    const/4 v2, 0x5

    const/16 v3, 0x102

    const/4 v4, 0x1

    if-eq v0, v2, :cond_b

    const/16 v2, 0xff

    const-wide/16 v5, 0x12c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 1262
    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v5

    .line 1263
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    if-nez v0, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 1269
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "h-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1272
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    sub-float/2addr v0, v2

    .line 1274
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    if-nez v0, :cond_5

    .line 1275
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isStartOrStopOneHandMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1276
    :cond_5
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_c

    .line 1277
    iput-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    .line 1278
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_6

    const-string v2, "gesture_start"

    .line 1279
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 1281
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitFreeFormWindowIfNeeded()V

    .line 1282
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1283
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeVisually()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1284
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1285
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1287
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1289
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    .line 1297
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_8

    return v4

    .line 1302
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 1305
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v5, v7, v5

    if-gez v5, :cond_9

    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v5, :cond_9

    .line 1307
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1309
    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v5, v6

    .line 1310
    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v6, v0

    .line 1312
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_9

    .line 1313
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_9

    .line 1314
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_9

    .line 1315
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 1318
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT updateViewLayout UnTouchable, diffX:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " diffY:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_9
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    goto :goto_0

    .line 1238
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    .line 1239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    .line 1240
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 1241
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 1242
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1244
    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1245
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    .line 1248
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1249
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 1250
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1249
    invoke-virtual {v0, v2, v5, v6}, Lcom/miui/home/recents/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1254
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1259
    :cond_b
    iput-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsPointerEvent:Z

    .line 1335
    :cond_c
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eq v0, v4, :cond_d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 1337
    :cond_d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1338
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v3, p1}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1340
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_e
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performAppToApp(I)V
    .locals 11

    .line 3582
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performAppToApp, taskIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3584
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string p1, "performAppToApp"

    .line 3585
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void

    .line 3588
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    const-string v1, "to_app"

    .line 3589
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 3592
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    sub-int v0, p1, v0

    .line 3593
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    if-eqz v0, :cond_2

    .line 3595
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "toAnotherApp"

    const-string v4, "gesture"

    invoke-static {v2, v3, v4}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3598
    :cond_2
    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    .line 3599
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p1

    .line 3600
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    .line 3601
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getAllSmallWindows()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3603
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 3607
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 3608
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    if-lez v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    .line 3612
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    if-ge v0, v5, :cond_5

    if-eqz v2, :cond_4

    .line 3613
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3614
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 3615
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    move p1, v0

    goto :goto_4

    :cond_6
    add-int/lit8 p1, v1, -0x1

    :goto_2
    if-ltz p1, :cond_8

    if-eqz v2, :cond_7

    .line 3624
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3625
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    .line 3626
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_8
    move p1, v1

    goto :goto_4

    .line 3605
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result p1

    sub-int/2addr p1, v4

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_4
    sub-int v0, p1, v1

    if-eqz v0, :cond_a

    .line 3636
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    .line 3638
    :cond_a
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v2

    if-nez v2, :cond_c

    if-eq p1, v1, :cond_b

    goto :goto_5

    :cond_b
    move v2, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v2, v4

    :goto_6
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    goto :goto_9

    .line 3640
    :cond_d
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v2

    if-nez v2, :cond_f

    if-eq p1, v1, :cond_e

    goto :goto_7

    :cond_e
    move v2, v3

    goto :goto_8

    :cond_f
    :goto_7
    move v2, v4

    :goto_8
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    :goto_9
    const/4 v2, 0x0

    .line 3643
    invoke-direct {p0, v2, p1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    const/4 v2, -0x1

    if-le v0, v4, :cond_10

    move v0, v4

    goto :goto_a

    :cond_10
    if-ge v0, v2, :cond_11

    move v0, v2

    .line 3649
    :cond_11
    :goto_a
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateTargetRectF(I)V

    .line 3651
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAppToApp, from="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", to="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppTargetRectF:Landroid/graphics/RectF;

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, v0

    move v7, v8

    invoke-direct/range {v4 .. v10}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 3653
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0, v3}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 3655
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->APP_TO_APP:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 3657
    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 3658
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3659
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :goto_b
    move-object v8, v0

    .line 3661
    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 3662
    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 3663
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result v9

    .line 3664
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$D6sP1tGbp1AJKpN88flll6c7dnU;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/recents/-$$Lambda$NavStubView$D6sP1tGbp1AJKpN88flll6c7dnU;-><init>(Lcom/miui/home/recents/NavStubView;FFILcom/miui/home/recents/views/TaskView;F)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 3697
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/NavStubView$14;

    invoke-direct {v2, p0, p1, v1}, Lcom/miui/home/recents/NavStubView$14;-><init>(Lcom/miui/home/recents/NavStubView;II)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3729
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 3730
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3731
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 3732
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskIdFromStackIndex(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    :cond_13
    const-string p1, "performAppToApp"

    .line 3734
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 3736
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performAppToHome()V
    .locals 4

    .line 2687
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performAppToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2689
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "to_home"

    .line 2690
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 2691
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 2693
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "toHome"

    const-string v3, "gesture"

    invoke-static {v1, v2, v3}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$JeZUZNCAXoz1NVIHt4ZRTup4b14;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$JeZUZNCAXoz1NVIHt4ZRTup4b14;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2716
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resetCurrentTaskId(Lcom/miui/home/launcher/Launcher;)V

    .line 2718
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    .line 2719
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    .line 2722
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startAppToHomeAnim()V

    const-string v0, "performAppToHome"

    .line 2723
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_0

    .line 2725
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 2726
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string v0, "appTouchResolution2"

    .line 2727
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 2730
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performAppToRecents()V
    .locals 1

    const/4 v0, 0x1

    .line 3285
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performAppToRecents(Z)V

    return-void
.end method

.method public performAppToRecents(Z)V
    .locals 8

    .line 3289
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performAppToRecents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3291
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const-string v1, "to_recent"

    .line 3292
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 3294
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    .line 3296
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 3297
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    .line 3298
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    .line 3299
    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 3300
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    .line 3301
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation()V

    .line 3302
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateInsetsForLayoutAlgorithm()V

    .line 3303
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v0

    .line 3304
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v3, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v2

    .line 3305
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 3306
    invoke-virtual {v1, v0, v4}, Lcom/miui/home/recents/views/TaskStackView;->initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3308
    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 3311
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3312
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/ForegroundTaskHelper;->saveForegroundSmallWinowsAndFullScreen()V

    .line 3314
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "toRecents"

    const-string v5, "gesture"

    invoke-static {v2, v3, v5}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 3317
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_3
    const-string p1, "performAppToRecents"

    .line 3320
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    .line 3322
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {p1, v2, v3, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTargetTaskViewIndex(ZII)I

    move-result p1

    .line 3323
    invoke-virtual {v1, p1}, Lcom/miui/home/recents/views/TaskStackView;->getScrollForTaskView(I)F

    move-result p1

    .line 3325
    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v2, :cond_4

    .line 3326
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateTaskViewTransY(F)V

    .line 3327
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    goto :goto_1

    .line 3329
    :cond_4
    iput-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3333
    invoke-virtual {v1, v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3334
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v6, v2

    goto :goto_3

    .line 3335
    :cond_6
    :goto_2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 3336
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 3337
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    .line 3338
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 3339
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    int-to-float v3, v3

    .line 3336
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x0

    .line 3341
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$38Jw5gRX_FlJLfodVpoOnRj4z4A;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$38Jw5gRX_FlJLfodVpoOnRj4z4A;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    move v6, v2

    .line 3345
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v7, p1

    goto :goto_4

    .line 3348
    :cond_7
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 3349
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v1

    .line 3350
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 3352
    sget-object v3, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performAppToRecents, homeRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentDisplayRotation="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    .line 3356
    :goto_4
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 3357
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performAppToRecents, mCurRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", homeRotationTargetRectF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", targetRectF="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v4, p1, v0

    .line 3363
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 3364
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskView:Lcom/miui/home/recents/views/TaskView;

    .line 3365
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    .line 3366
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsStartDimLayerAlpha:F

    .line 3367
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsUpdateListener:Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 3368
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentslistenerAdapter:Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3369
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3370
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    goto :goto_5

    .line 3372
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    .line 3374
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performHomeToHome()V
    .locals 5

    .line 4173
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performHomeToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$HFhLSaUVFcfBc5azyF3cKoEey3g;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$HFhLSaUVFcfBc5azyF3cKoEey3g;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4189
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 4190
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsFadeOutAnim()V

    .line 4191
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toHome"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4199
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getAlpha()F

    move-result v0

    .line 4200
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getScaleX()F

    move-result v1

    const/4 v2, 0x2

    .line 4202
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 4203
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    .line 4204
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4205
    new-instance v3, Lcom/miui/home/recents/NavStubView$18;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/recents/NavStubView$18;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4214
    new-instance v0, Lcom/miui/home/recents/NavStubView$19;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$19;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4232
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$ormGp-hh9OtfOhs5ymFeF5N5rzg;

    invoke-direct {v1, v2}, Lcom/miui/home/recents/-$$Lambda$ormGp-hh9OtfOhs5ymFeF5N5rzg;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4195
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const-string v0, "startHomeAnimation"

    .line 4196
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public performHomeToRecents()V
    .locals 3

    .line 4236
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performHomeToRecents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 4238
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4240
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 4242
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4243
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getNormalSmallWindows()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/ForegroundTaskHelper;->setForegroundSmallWindows(Ljava/util/Set;)V

    .line 4244
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->clearFullScreenTask()V

    .line 4246
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4249
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const-string v0, "startHomeAnimation"

    .line 4250
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    .line 4252
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performRecentsRest(Z)V
    .locals 2

    .line 4420
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsRest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$rvHeiaYwIR0I1rHw_wWpX552H9Q;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$rvHeiaYwIR0I1rHw_wWpX552H9Q;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performRecentsToHome()V
    .locals 2

    .line 4403
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$20;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$20;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4416
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method postFinishRunnable()V
    .locals 4

    .line 3780
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3781
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3782
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method postStartNewTaskRunnable()V
    .locals 3

    .line 3793
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3794
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method removeFinishRunnable()V
    .locals 2

    .line 3787
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3788
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public resetHomeStackBound()V
    .locals 2

    .line 1836
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getFullScreenSizeHomeStackBoundByOrientation()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    return-void
.end method

.method public sendEvent(III)V
    .locals 6

    .line 4455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->sendEvent(IIIJ)V

    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 17

    move/from16 v0, p2

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v11, v2

    goto :goto_0

    :cond_0
    move v11, v3

    .line 4460
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    move-object/from16 v15, p0

    iget-wide v5, v15, Lcom/miui/home/recents/NavStubView;->mDownTime:J

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x40

    const/16 v16, 0x101

    move-object v4, v1

    move-wide/from16 v7, p4

    move/from16 v9, p1

    move/from16 v10, p3

    move v15, v0

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 4464
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    .line 4467
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInstance"

    .line 4468
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    .line 4469
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4472
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "injectInputEvent"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/view/InputEvent;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 4473
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4475
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public sendFakeEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskStackViewStack;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackViewStack;->fakeEventWithDelay()V

    return-void
.end method

.method public setAssistantInEditMode(Z)V
    .locals 3

    .line 196
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAssistantInEditMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAssistantInEditMode:Z

    return-void
.end method

.method public setHideGestureLine(Z)V
    .locals 2

    .line 1200
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    const-string p1, "NavStubView_Touch"

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHideGestureLine   mHideGestureLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    .line 1203
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    return-void
.end method

.method public setIsShowRecents(Z)V
    .locals 0

    .line 2324
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    return-void
.end method

.method public setKeepHidden(Z)V
    .locals 3

    const-string v0, "NavStubView_Touch"

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeepHidden    old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    if-eq v0, p1, :cond_0

    .line 1100
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    .line 1101
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 4718
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public startAppToHomeAnim()V
    .locals 16

    move-object/from16 v7, p0

    .line 2839
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppToHomeAnim, isQuickSwich="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUseSimpleAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2839
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2843
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2845
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Lcom/miui/home/recents/NavStubView;->findClosingAnimTarget(Landroid/graphics/Rect;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v4

    .line 2846
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRectF:Landroid/graphics/RectF;

    iget-object v2, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2847
    invoke-direct {v7, v0}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRectF:Landroid/graphics/RectF;

    invoke-direct {v7, v1}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2854
    :cond_0
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 2855
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_1

    .line 2856
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    .line 2857
    :goto_0
    invoke-static {v5, v6, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v4, :cond_2

    .line 2860
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-interface {v4}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2861
    invoke-interface {v4}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v1

    .line 2862
    iget-object v3, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 2865
    :cond_2
    iget-boolean v1, v7, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 2866
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget-object v3, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v8, v1

    goto :goto_1

    .line 2867
    :cond_3
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget-object v3, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v8, v1

    :goto_1
    if-eqz v4, :cond_4

    .line 2869
    invoke-static {v4}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v1

    goto :goto_2

    :cond_4
    iget v1, v7, Lcom/miui/home/recents/NavStubView;->mNoIconRadius:I

    int-to-float v1, v1

    :goto_2
    mul-float v13, v1, v8

    .line 2871
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2872
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2873
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 2875
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAppToHomeAnim, homeRotationStartRectF="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", appToHomeRotationTargetRectF="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", homeRotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentDisplayRotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", animTarget="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurTaskRadius = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", endRadius = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2885
    sget-object v9, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v10, Lcom/miui/home/recents/-$$Lambda$NavStubView$ldA1gxg3x_FNpXYrWQEI7wPjM68;

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v13

    move v3, v5

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/-$$Lambda$NavStubView$ldA1gxg3x_FNpXYrWQEI7wPjM68;-><init>(Lcom/miui/home/recents/NavStubView;FILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FI)V

    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 2892
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 2893
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2894
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v10, v7, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    iget-object v11, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget v12, v7, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2895
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v7, v0, v5, v4}, Lcom/miui/home/recents/NavStubView;->initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;ILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 2897
    iput-boolean v2, v7, Lcom/miui/home/recents/NavStubView;->mCancelFakeAppToHomeAnim:Z

    .line 2898
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;

    invoke-direct {v2, v7, v6, v5}, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;-><init>(Lcom/miui/home/recents/NavStubView;II)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2904
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v2, v7, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2905
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 2907
    sget-object v9, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v10, Lcom/miui/home/recents/-$$Lambda$NavStubView$5ChI2_bpXm7GJKsIdyKeA7QBdNU;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    move v3, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/-$$Lambda$NavStubView$5ChI2_bpXm7GJKsIdyKeA7QBdNU;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FII)V

    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 2919
    :cond_6
    iget-object v9, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v10, v7, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    iget-object v11, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget v12, v7, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {v9 .. v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 2920
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v7, v0, v5, v4}, Lcom/miui/home/recents/NavStubView;->initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;ILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 2921
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v2, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2922
    iget-object v3, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->startAppToHomeInMainThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;II)V

    goto :goto_3

    .line 2925
    :cond_7
    iget-object v9, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v10, v7, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    iget-object v11, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeRotationTargetRectF:Landroid/graphics/RectF;

    iget v12, v7, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {v9 .. v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 2926
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v7, v0, v5, v4}, Lcom/miui/home/recents/NavStubView;->initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;ILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 2927
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v2, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2928
    iget-object v3, v7, Lcom/miui/home/recents/NavStubView;->mHomeRotationStartRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->startAppToHomeInGestureThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/RectF;II)V

    :goto_3
    return-void

    .line 2848
    :cond_8
    :goto_4
    invoke-virtual {v7, v2}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 2849
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAppToHomeAnim error: startRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "   appToHomeTargetRect="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startBreakOpenRectFAnim()V
    .locals 9

    .line 2491
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v8

    .line 2494
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 2495
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakAnimStartDimAlpha:F

    .line 2496
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v8

    move v4, v5

    invoke-virtual/range {v1 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 2497
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgressCalculateType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setProgressCalculateType(I)V

    .line 2498
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 2499
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 2501
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$6C0vZ9anbQmBpmv_BOLvfDFYU_0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$6C0vZ9anbQmBpmv_BOLvfDFYU_0;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2502
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$9;

    invoke-direct {v1, p0, v8}, Lcom/miui/home/recents/NavStubView$9;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2508
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const v1, 0x3c23d70a    # 0.01f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMinimumVisibleChange(FFFF)V

    .line 2509
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2510
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startFirstTask()V
    .locals 9

    .line 3837
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startFirstTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3843
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 3844
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishPendingController()V

    .line 3846
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3847
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3848
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 3857
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 3858
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setTaskIfNeedHide(Ljava/util/ArrayList;)I

    move-result v1

    .line 3859
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 3860
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    return-void

    .line 3864
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3865
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 3867
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFirstTask, from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, v0

    move v5, v6

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 3869
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 3871
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->START_FIRST_TASK:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 3873
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 3874
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 3875
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$PU-EV-V6SyXpgnI_zLyhLFNSm5M;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$PU-EV-V6SyXpgnI_zLyhLFNSm5M;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 3882
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$17;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$17;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3927
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    const-string v0, "startFirstTask"

    .line 3928
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    goto :goto_2

    .line 3849
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3850
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToRecents()V

    goto :goto_1

    .line 3852
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    :goto_1
    return-void

    .line 3930
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    const-string v0, "startFirstTask"

    .line 3931
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->finalization(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public startFirstTaskOrToHome()V
    .locals 1

    .line 3936
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3937
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    goto :goto_0

    .line 3939
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startFirstTask()V

    :goto_0
    return-void
.end method

.method public startHomeFadeInAnim(J)V
    .locals 4

    .line 396
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startHomeFadeInAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    .line 399
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 401
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$NavStubView$cLfIBdBF3CylGJCsM3KdKqi2z2Q;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$cLfIBdBF3CylGJCsM3KdKqi2z2Q;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 409
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 411
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 412
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$NavStubView$LH5u5h6ZoE4-QF51gyzCHakOSG0;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$LH5u5h6ZoE4-QF51gyzCHakOSG0;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startHomeFadeOutAnim()V
    .locals 4

    .line 423
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startHomeFadeOutAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 426
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 427
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 428
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$jJVzsZASEp54uPK8h9F85zT93Kg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$jJVzsZASEp54uPK8h9F85zT93Kg;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncherScaleInRecents:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 438
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$nUjM5DrL1iUCDcBIsE4V3crboNQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$nUjM5DrL1iUCDcBIsE4V3crboNQ;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecentsFadeOutAnim()V
    .locals 11

    .line 442
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startRecentsFadeOutAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 445
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mUpdateTaskViewRectF:Landroid/graphics/RectF;

    const/4 v4, -0x1

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v8

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v9

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startRecentsStateHomeAnim(Z)V
    .locals 3

    .line 4379
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsStateHomeAnim: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$Mnqs8pXr222mpf2JomtH6Gl06bc;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$Mnqs8pXr222mpf2JomtH6Gl06bc;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecentsStateRecentsAnim(Z)V
    .locals 3

    .line 4390
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsStateRecentsAnim: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTailCatcher()V
    .locals 2

    .line 4435
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateGestureLineProgress(F)V
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    .line 1947
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 1948
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    invoke-virtual {p1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 1949
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1950
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePivotLoc(Landroid/view/MotionEvent;)V
    .locals 4

    .line 4439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDelta:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    .line 4440
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v0, p1

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    int-to-float p1, p1

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/miui/home/recents/NavStubView;->linearToCubic(FFFF)F

    move-result p1

    const/high16 v1, 0x43de0000    # 444.0f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    .line 4441
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    .line 4442
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4444
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "crossSafeArea"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4446
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4447
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 4450
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    :cond_1
    return-void
.end method